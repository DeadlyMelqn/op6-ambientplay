.class public Landroid/view/RecordingCanvas;
.super Landroid/graphics/Canvas;
.source "RecordingCanvas.java"


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "nativeCanvas"    # J

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/graphics/Canvas;-><init>(J)V

    .line 54
    return-void
.end method

.method private static native nDrawArc(JFFFFFFZJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawBitmap(JLandroid/graphics/Bitmap;FFFFFFFFJII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawBitmap(JLandroid/graphics/Bitmap;FFJIII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawBitmap(J[IIIFFIIZJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawBitmapMatrix(JLandroid/graphics/Bitmap;JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawBitmapMesh(JLandroid/graphics/Bitmap;II[FI[IIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawCircle(JFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawColor(JII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawLine(JFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawLines(J[FIIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawNinePatch(JJJFFFFJII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawOval(JFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawPaint(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawPath(JJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawPoint(JFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawPoints(J[FIIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawRect(JFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawRegion(JJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawRoundRect(JFFFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawText(JLjava/lang/String;IIFFIJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawText(J[CIIFFIJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawTextOnPath(JLjava/lang/String;JFFIJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawTextOnPath(J[CIIJFFIJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawTextRun(JLjava/lang/String;IIIIFFZJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawTextRun(J[CIIIIFFZJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawVertices(JII[FI[FI[II[SIIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public final drawARGB(IIII)V
    .locals 1
    .param p1, "a"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .prologue
    .line 72
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/RecordingCanvas;->drawColor(I)V

    .line 73
    return-void
.end method

.method public final drawArc(FFFFFFZLandroid/graphics/Paint;)V
    .locals 11
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F
    .param p7, "useCenter"    # Z
    .param p8, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 59
    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    .line 60
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 59
    invoke-static/range {v0 .. v10}, Landroid/view/RecordingCanvas;->nDrawArc(JFFFFFFZJ)V

    .line 61
    return-void
.end method

.method public final drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .locals 9
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F
    .param p4, "useCenter"    # Z
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 66
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Landroid/view/RecordingCanvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 68
    return-void
.end method

.method public final drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Landroid/view/RecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 79
    iget-wide v1, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    .line 80
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    :goto_0
    iget v8, p0, Landroid/view/RecordingCanvas;->mDensity:I

    iget v9, p0, Landroid/view/RecordingCanvas;->mScreenDensity:I

    .line 81
    iget v10, p1, Landroid/graphics/Bitmap;->mDensity:I

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 79
    invoke-static/range {v1 .. v10}, Landroid/view/RecordingCanvas;->nDrawBitmap(JLandroid/graphics/Bitmap;FFJIII)V

    .line 82
    return-void

    .line 80
    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method public final drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 87
    iget-wide v1, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v4

    .line 88
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    :goto_0
    move-object v3, p1

    .line 87
    invoke-static/range {v1 .. v7}, Landroid/view/RecordingCanvas;->nDrawBitmapMatrix(JLandroid/graphics/Bitmap;JJ)V

    .line 89
    return-void

    .line 88
    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method public final drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 20
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/Rect;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 94
    if-nez p3, :cond_0

    .line 95
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 97
    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/view/RecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 98
    if-nez p4, :cond_1

    const-wide/16 v12, 0x0

    .line 101
    .local v12, "nativePaint":J
    :goto_0
    if-nez p2, :cond_2

    .line 102
    const/16 v19, 0x0

    .local v19, "top":I
    const/16 v17, 0x0

    .line 103
    .local v17, "left":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    .line 104
    .local v18, "right":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 112
    .local v16, "bottom":I
    :goto_1
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    move/from16 v0, v17

    int-to-float v4, v0

    move/from16 v0, v19

    int-to-float v5, v0

    move/from16 v0, v18

    int-to-float v6, v0

    move/from16 v0, v16

    int-to-float v7, v0

    .line 113
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v8, v3

    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v3

    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v10, v3

    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v3

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/RecordingCanvas;->mScreenDensity:I

    .line 114
    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Bitmap;->mDensity:I

    move-object/from16 v3, p1

    .line 112
    invoke-static/range {v1 .. v15}, Landroid/view/RecordingCanvas;->nDrawBitmap(JLandroid/graphics/Bitmap;FFFFFFFFJII)V

    .line 115
    return-void

    .line 98
    .end local v12    # "nativePaint":J
    .end local v16    # "bottom":I
    .end local v17    # "left":I
    .end local v18    # "right":I
    .end local v19    # "top":I
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v12

    .restart local v12    # "nativePaint":J
    goto :goto_0

    .line 106
    :cond_2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    .line 107
    .restart local v17    # "left":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    .line 108
    .restart local v18    # "right":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    .line 109
    .restart local v19    # "top":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    .restart local v16    # "bottom":I
    goto :goto_1
.end method

.method public final drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 16
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/RectF;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 120
    if-nez p3, :cond_0

    .line 121
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 123
    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/view/RecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 124
    if-nez p4, :cond_1

    const-wide/16 v12, 0x0

    .line 127
    .local v12, "nativePaint":J
    :goto_0
    if-nez p2, :cond_2

    .line 128
    const/4 v5, 0x0

    .local v5, "top":F
    const/4 v4, 0x0

    .line 129
    .local v4, "left":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v6, v1

    .line 130
    .local v6, "right":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v7, v1

    .line 138
    .local v7, "bottom":F
    :goto_1
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    .line 139
    move-object/from16 v0, p3

    iget v8, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/RecordingCanvas;->mScreenDensity:I

    .line 140
    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Bitmap;->mDensity:I

    move-object/from16 v3, p1

    .line 138
    invoke-static/range {v1 .. v15}, Landroid/view/RecordingCanvas;->nDrawBitmap(JLandroid/graphics/Bitmap;FFFFFFFFJII)V

    .line 141
    return-void

    .line 124
    .end local v4    # "left":F
    .end local v5    # "top":F
    .end local v6    # "right":F
    .end local v7    # "bottom":F
    .end local v12    # "nativePaint":J
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v12

    .restart local v12    # "nativePaint":J
    goto :goto_0

    .line 132
    :cond_2
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v1

    .line 133
    .restart local v4    # "left":F
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v1

    .line 134
    .restart local v6    # "right":F
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v1

    .line 135
    .restart local v5    # "top":F
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v1

    .restart local v7    # "bottom":F
    goto :goto_1
.end method

.method public final drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .locals 16
    .param p1, "colors"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "hasAlpha"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 149
    if-gez p6, :cond_0

    .line 150
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "width must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 152
    :cond_0
    if-gez p7, :cond_1

    .line 153
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "height must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    :cond_1
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move/from16 v0, p6

    if-ge v2, v0, :cond_2

    .line 156
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "abs(stride) must be >= width"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 158
    :cond_2
    add-int/lit8 v2, p7, -0x1

    mul-int v2, v2, p3

    add-int v14, p2, v2

    .line 159
    .local v14, "lastScanline":I
    move-object/from16 v0, p1

    array-length v15, v0

    .line 160
    .local v15, "length":I
    if-ltz p2, :cond_3

    add-int v2, p2, p6

    if-le v2, v15, :cond_4

    .line 162
    :cond_3
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 160
    :cond_4
    if-ltz v14, :cond_3

    .line 161
    add-int v2, v14, p6

    if-gt v2, v15, :cond_3

    .line 165
    if-eqz p6, :cond_5

    if-nez p7, :cond_6

    .line 166
    :cond_5
    return-void

    .line 169
    :cond_6
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    .line 170
    if-eqz p9, :cond_7

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v12

    :goto_0
    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    .line 169
    invoke-static/range {v2 .. v13}, Landroid/view/RecordingCanvas;->nDrawBitmap(J[IIIFFIIZJ)V

    .line 171
    return-void

    .line 170
    :cond_7
    const-wide/16 v12, 0x0

    goto :goto_0
.end method

.method public final drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .locals 10
    .param p1, "colors"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "hasAlpha"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 179
    int-to-float v4, p4

    int-to-float v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/view/RecordingCanvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    .line 181
    return-void
.end method

.method public final drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .locals 13
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "meshWidth"    # I
    .param p3, "meshHeight"    # I
    .param p4, "verts"    # [F
    .param p5, "vertOffset"    # I
    .param p6, "colors"    # [I
    .param p7, "colorOffset"    # I
    .param p8, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 187
    or-int v1, p2, p3

    or-int v1, v1, p5

    or-int v1, v1, p7

    if-gez v1, :cond_0

    .line 188
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 190
    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 191
    :cond_1
    return-void

    .line 193
    :cond_2
    add-int/lit8 v1, p2, 0x1

    add-int/lit8 v2, p3, 0x1

    mul-int v12, v1, v2

    .line 195
    .local v12, "count":I
    move-object/from16 v0, p4

    array-length v1, v0

    mul-int/lit8 v2, v12, 0x2

    move/from16 v0, p5

    invoke-static {v1, v0, v2}, Landroid/view/RecordingCanvas;->checkRange(III)V

    .line 196
    if-eqz p6, :cond_3

    .line 198
    move-object/from16 v0, p6

    array-length v1, v0

    move/from16 v0, p7

    invoke-static {v1, v0, v12}, Landroid/view/RecordingCanvas;->checkRange(III)V

    .line 200
    :cond_3
    iget-wide v1, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    .line 202
    if-eqz p8, :cond_4

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    :goto_0
    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 200
    invoke-static/range {v1 .. v11}, Landroid/view/RecordingCanvas;->nDrawBitmapMesh(JLandroid/graphics/Bitmap;II[FI[IIJ)V

    .line 203
    return-void

    .line 202
    :cond_4
    const-wide/16 v10, 0x0

    goto :goto_0
.end method

.method public final drawCircle(FFFLandroid/graphics/Paint;)V
    .locals 7
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "radius"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 207
    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/view/RecordingCanvas;->nDrawCircle(JFFFJ)V

    .line 208
    return-void
.end method

.method public final drawColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 212
    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    iget v2, v2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1, p1, v2}, Landroid/view/RecordingCanvas;->nDrawColor(JII)V

    .line 213
    return-void
.end method

.method public final drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 217
    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    iget v2, p2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1, p1, v2}, Landroid/view/RecordingCanvas;->nDrawColor(JII)V

    .line 218
    return-void
.end method

.method public final drawLine(FFFFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "stopX"    # F
    .param p4, "stopY"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 223
    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/view/RecordingCanvas;->nDrawLine(JFFFFJ)V

    .line 224
    return-void
.end method

.method public final drawLines([FIILandroid/graphics/Paint;)V
    .locals 7
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 229
    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/view/RecordingCanvas;->nDrawLines(J[FIIJ)V

    .line 230
    return-void
.end method

.method public final drawLines([FLandroid/graphics/Paint;)V
    .locals 2
    .param p1, "pts"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 234
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/view/RecordingCanvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 235
    return-void
.end method

.method public final drawOval(FFFFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 240
    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/view/RecordingCanvas;->nDrawOval(JFFFFJ)V

    .line 241
    return-void
.end method

.method public final drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 245
    if-nez p1, :cond_0

    .line 246
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 248
    :cond_0
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/RecordingCanvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 249
    return-void
.end method

.method public final drawPaint(Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 253
    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/RecordingCanvas;->nDrawPaint(JJ)V

    .line 254
    return-void
.end method

.method public final drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 17
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/Rect;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 259
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v16

    .line 260
    .local v16, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/RecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 261
    if-nez p3, :cond_0

    const-wide/16 v12, 0x0

    .line 262
    .local v12, "nativePaint":J
    :goto_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v4

    move-object/from16 v0, p1

    iget-wide v6, v0, Landroid/graphics/NinePatch;->mNativeChunk:J

    .line 263
    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    .line 264
    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/RecordingCanvas;->mDensity:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v15

    .line 262
    invoke-static/range {v2 .. v15}, Landroid/view/RecordingCanvas;->nDrawNinePatch(JJJFFFFJII)V

    .line 265
    return-void

    .line 261
    .end local v12    # "nativePaint":J
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v12

    .restart local v12    # "nativePaint":J
    goto :goto_0
.end method

.method public final drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 17
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/RectF;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 270
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v16

    .line 271
    .local v16, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/RecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 272
    if-nez p3, :cond_0

    const-wide/16 v12, 0x0

    .line 273
    .local v12, "nativePaint":J
    :goto_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v4

    move-object/from16 v0, p1

    iget-wide v6, v0, Landroid/graphics/NinePatch;->mNativeChunk:J

    .line 274
    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/RectF;->bottom:F

    .line 275
    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/RecordingCanvas;->mDensity:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v15

    .line 273
    invoke-static/range {v2 .. v15}, Landroid/view/RecordingCanvas;->nDrawNinePatch(JJJFFFFJII)V

    .line 276
    return-void

    .line 272
    .end local v12    # "nativePaint":J
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v12

    .restart local v12    # "nativePaint":J
    goto :goto_0
.end method

.method public final drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 280
    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_0

    .line 281
    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    iget-object v2, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    iget-wide v2, v2, Landroid/graphics/Region;->mNativeRegion:J

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Landroid/view/RecordingCanvas;->nDrawRegion(JJJ)V

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Landroid/view/RecordingCanvas;->nDrawPath(JJJ)V

    goto :goto_0
.end method

.method public final drawPicture(Landroid/graphics/Picture;)V
    .locals 1
    .param p1, "picture"    # Landroid/graphics/Picture;

    .prologue
    .line 289
    invoke-virtual {p1}, Landroid/graphics/Picture;->endRecording()V

    .line 290
    invoke-virtual {p0}, Landroid/view/RecordingCanvas;->save()I

    move-result v0

    .line 291
    .local v0, "restoreCount":I
    invoke-virtual {p1, p0}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 292
    invoke-virtual {p0, v0}, Landroid/view/RecordingCanvas;->restoreToCount(I)V

    .line 293
    return-void
.end method

.method public final drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "picture"    # Landroid/graphics/Picture;
    .param p2, "dst"    # Landroid/graphics/Rect;

    .prologue
    .line 297
    invoke-virtual {p0}, Landroid/view/RecordingCanvas;->save()I

    .line 298
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/view/RecordingCanvas;->translate(FF)V

    .line 299
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 300
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 301
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 300
    invoke-virtual {p0, v0, v1}, Landroid/view/RecordingCanvas;->scale(FF)V

    .line 303
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/RecordingCanvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 304
    invoke-virtual {p0}, Landroid/view/RecordingCanvas;->restore()V

    .line 305
    return-void
.end method

.method public final drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "picture"    # Landroid/graphics/Picture;
    .param p2, "dst"    # Landroid/graphics/RectF;

    .prologue
    .line 309
    invoke-virtual {p0}, Landroid/view/RecordingCanvas;->save()I

    .line 310
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1}, Landroid/view/RecordingCanvas;->translate(FF)V

    .line 311
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 312
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/view/RecordingCanvas;->scale(FF)V

    .line 314
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/RecordingCanvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 315
    invoke-virtual {p0}, Landroid/view/RecordingCanvas;->restore()V

    .line 316
    return-void
.end method

.method public final drawPoint(FFLandroid/graphics/Paint;)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 320
    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Landroid/view/RecordingCanvas;->nDrawPoint(JFFJ)V

    .line 321
    return-void
.end method

.method public final drawPoints([FIILandroid/graphics/Paint;)V
    .locals 7
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 326
    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/view/RecordingCanvas;->nDrawPoints(J[FIIJ)V

    .line 327
    return-void
.end method

.method public final drawPoints([FLandroid/graphics/Paint;)V
    .locals 2
    .param p1, "pts"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 331
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/view/RecordingCanvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 332
    return-void
.end method

.method public final drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # [F
    .param p3, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 353
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/RecordingCanvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    .line 354
    return-void
.end method

.method public final drawPosText([CII[FLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "pos"    # [F
    .param p5, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 340
    if-ltz p2, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 340
    :cond_1
    mul-int/lit8 v0, p3, 0x2

    array-length v1, p4

    if-gt v0, v1, :cond_0

    .line 343
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, p3, :cond_2

    .line 344
    add-int v2, p2, v7

    mul-int/lit8 v0, v7, 0x2

    aget v4, p4, v0

    mul-int/lit8 v0, v7, 0x2

    add-int/lit8 v0, v0, 0x1

    aget v5, p4, v0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/view/RecordingCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 343
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 346
    :cond_2
    return-void
.end method

.method public final drawRGB(III)V
    .locals 1
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 375
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/RecordingCanvas;->drawColor(I)V

    .line 376
    return-void
.end method

.method public final drawRect(FFFFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 359
    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/view/RecordingCanvas;->nDrawRect(JFFFFJ)V

    .line 360
    return-void
.end method

.method public final drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 364
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/RecordingCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 365
    return-void
.end method

.method public final drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 8
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 369
    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    .line 370
    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    .line 369
    invoke-static/range {v0 .. v7}, Landroid/view/RecordingCanvas;->nDrawRect(JFFFFJ)V

    .line 371
    return-void
.end method

.method public final drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    .locals 10
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "rx"    # F
    .param p6, "ry"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 381
    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    .line 382
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v8

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    .line 381
    invoke-static/range {v0 .. v9}, Landroid/view/RecordingCanvas;->nDrawRoundRect(JFFFFFFJ)V

    .line 383
    return-void
.end method

.method public final drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "rx"    # F
    .param p3, "ry"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 387
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/view/RecordingCanvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 388
    return-void
.end method

.method public final drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .locals 14
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 404
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int v3, v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_0

    .line 405
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 407
    :cond_0
    instance-of v2, p1, Ljava/lang/String;

    if-nez v2, :cond_1

    instance-of v2, p1, Landroid/text/SpannedString;

    if-nez v2, :cond_1

    .line 408
    instance-of v2, p1, Landroid/text/SpannableString;

    .line 407
    if-eqz v2, :cond_2

    .line 409
    :cond_1
    iget-wide v2, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 410
    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    move-object/from16 v0, p6

    iget-wide v12, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    .line 409
    invoke-static/range {v2 .. v13}, Landroid/view/RecordingCanvas;->nDrawText(JLjava/lang/String;IIFFIJJ)V

    .line 421
    :goto_0
    return-void

    .line 411
    :cond_2
    instance-of v2, p1, Landroid/text/GraphicsOperations;

    if-eqz v2, :cond_3

    move-object v2, p1

    .line 412
    check-cast v2, Landroid/text/GraphicsOperations;

    move-object v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-interface/range {v2 .. v8}, Landroid/text/GraphicsOperations;->drawText(Landroid/graphics/BaseCanvas;IIFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 415
    :cond_3
    sub-int v2, p3, p2

    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v4

    .line 416
    .local v4, "buf":[C
    const/4 v2, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {p1, v0, v1, v4, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 417
    iget-wide v2, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    sub-int v6, p3, p2

    .line 418
    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    move-object/from16 v0, p6

    iget-wide v12, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 417
    const/4 v5, 0x0

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v2 .. v13}, Landroid/view/RecordingCanvas;->nDrawText(J[CIIFFIJJ)V

    .line 419
    invoke-static {v4}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_0
.end method

.method public final drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 14
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 425
    iget-wide v2, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p4

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 426
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    move-object/from16 v0, p4

    iget-wide v12, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 425
    const/4 v5, 0x0

    move-object v4, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-static/range {v2 .. v13}, Landroid/view/RecordingCanvas;->nDrawText(JLjava/lang/String;IIFFIJJ)V

    .line 427
    return-void
.end method

.method public final drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .locals 14
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 432
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_0

    .line 433
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 435
    :cond_0
    iget-wide v2, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 436
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    move-object/from16 v0, p6

    iget-wide v12, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    .line 435
    invoke-static/range {v2 .. v13}, Landroid/view/RecordingCanvas;->nDrawText(JLjava/lang/String;IIFFIJJ)V

    .line 437
    return-void
.end method

.method public final drawText([CIIFFLandroid/graphics/Paint;)V
    .locals 14
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 393
    or-int v2, p2, p3

    add-int v3, p2, p3

    or-int/2addr v2, v3

    .line 394
    array-length v3, p1

    sub-int v3, v3, p2

    sub-int v3, v3, p3

    .line 393
    or-int/2addr v2, v3

    if-gez v2, :cond_0

    .line 395
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 397
    :cond_0
    iget-wide v2, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 398
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    move-object/from16 v0, p6

    iget-wide v12, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    .line 397
    invoke-static/range {v2 .. v13}, Landroid/view/RecordingCanvas;->nDrawText(J[CIIFFIJJ)V

    .line 399
    return-void
.end method

.method public final drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 14
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "path"    # Landroid/graphics/Path;
    .param p3, "hOffset"    # F
    .param p4, "vOffset"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 453
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 454
    iget-wide v2, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v5

    .line 455
    move-object/from16 v0, p5

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    move-object/from16 v0, p5

    iget-wide v12, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v4, p1

    move/from16 v7, p3

    move/from16 v8, p4

    .line 454
    invoke-static/range {v2 .. v13}, Landroid/view/RecordingCanvas;->nDrawTextOnPath(JLjava/lang/String;JFFIJJ)V

    .line 457
    :cond_0
    return-void
.end method

.method public final drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 16
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "path"    # Landroid/graphics/Path;
    .param p5, "hOffset"    # F
    .param p6, "vOffset"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 442
    if-ltz p2, :cond_0

    add-int v2, p2, p3

    move-object/from16 v0, p1

    array-length v3, v0

    if-le v2, v3, :cond_1

    .line 443
    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 445
    :cond_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    .line 446
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v7

    .line 447
    move-object/from16 v0, p7

    iget v11, v0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v12

    move-object/from16 v0, p7

    iget-wide v14, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v9, p5

    move/from16 v10, p6

    .line 445
    invoke-static/range {v2 .. v15}, Landroid/view/RecordingCanvas;->nDrawTextOnPath(J[CIIJFFIJJ)V

    .line 448
    return-void
.end method

.method public final drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
    .locals 18
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 483
    if-nez p1, :cond_0

    .line 484
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "text is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 486
    :cond_0
    if-nez p9, :cond_1

    .line 487
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "paint is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 489
    :cond_1
    or-int v4, p2, p3

    or-int v4, v4, p4

    or-int v4, v4, p5

    sub-int v5, p2, p4

    or-int/2addr v4, v5

    sub-int v5, p3, p2

    or-int/2addr v4, v5

    .line 490
    sub-int v5, p5, p3

    .line 489
    or-int/2addr v4, v5

    .line 490
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int v5, v5, p5

    .line 489
    or-int/2addr v4, v5

    if-gez v4, :cond_2

    .line 491
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 494
    :cond_2
    move-object/from16 v0, p1

    instance-of v4, v0, Ljava/lang/String;

    if-nez v4, :cond_3

    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/SpannedString;

    if-nez v4, :cond_3

    .line 495
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/SpannableString;

    .line 494
    if-eqz v4, :cond_4

    .line 496
    :cond_3
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 497
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v14

    move-object/from16 v0, p9

    iget-wide v0, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-wide/from16 v16, v0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    .line 496
    invoke-static/range {v4 .. v17}, Landroid/view/RecordingCanvas;->nDrawTextRun(JLjava/lang/String;IIIIFFZJJ)V

    .line 510
    :goto_0
    return-void

    .line 498
    :cond_4
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/GraphicsOperations;

    if-eqz v4, :cond_5

    move-object/from16 v4, p1

    .line 499
    check-cast v4, Landroid/text/GraphicsOperations;

    move-object/from16 v5, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    invoke-interface/range {v4 .. v13}, Landroid/text/GraphicsOperations;->drawTextRun(Landroid/graphics/BaseCanvas;IIIIFFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 502
    :cond_5
    sub-int v10, p5, p4

    .line 503
    .local v10, "contextLen":I
    sub-int v8, p3, p2

    .line 504
    .local v8, "len":I
    invoke-static {v10}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v6

    .line 505
    .local v6, "buf":[C
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2, v6, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 506
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    sub-int v7, p2, p4

    .line 507
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v14

    move-object/from16 v0, p9

    iget-wide v0, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-wide/from16 v16, v0

    const/4 v9, 0x0

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    .line 506
    invoke-static/range {v4 .. v17}, Landroid/view/RecordingCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    .line 508
    invoke-static {v6}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_0
.end method

.method public final drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V
    .locals 16
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "contextIndex"    # I
    .param p5, "contextCount"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 463
    if-nez p1, :cond_0

    .line 464
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "text is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 466
    :cond_0
    if-nez p9, :cond_1

    .line 467
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "paint is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 469
    :cond_1
    or-int v2, p2, p3

    or-int v2, v2, p4

    or-int v2, v2, p5

    sub-int v3, p2, p4

    or-int/2addr v2, v3

    .line 470
    add-int v3, p4, p5

    add-int v4, p2, p3

    sub-int/2addr v3, v4

    .line 469
    or-int/2addr v2, v3

    .line 471
    move-object/from16 v0, p1

    array-length v3, v0

    add-int v4, p4, p5

    sub-int/2addr v3, v4

    .line 469
    or-int/2addr v2, v3

    if-gez v2, :cond_2

    .line 472
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 475
    :cond_2
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    .line 476
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v12

    move-object/from16 v0, p9

    iget-wide v14, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    .line 475
    invoke-static/range {v2 .. v15}, Landroid/view/RecordingCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    .line 477
    return-void
.end method

.method public final drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .locals 17
    .param p1, "mode"    # Landroid/graphics/Canvas$VertexMode;
    .param p2, "vertexCount"    # I
    .param p3, "verts"    # [F
    .param p4, "vertOffset"    # I
    .param p5, "texs"    # [F
    .param p6, "texOffset"    # I
    .param p7, "colors"    # [I
    .param p8, "colorOffset"    # I
    .param p9, "indices"    # [S
    .param p10, "indexOffset"    # I
    .param p11, "indexCount"    # I
    .param p12, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 517
    move-object/from16 v0, p3

    array-length v2, v0

    move/from16 v0, p4

    move/from16 v1, p2

    invoke-static {v2, v0, v1}, Landroid/view/RecordingCanvas;->checkRange(III)V

    .line 518
    invoke-virtual/range {p0 .. p0}, Landroid/view/RecordingCanvas;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 519
    return-void

    .line 521
    :cond_0
    if-eqz p5, :cond_1

    .line 522
    move-object/from16 v0, p5

    array-length v2, v0

    move/from16 v0, p6

    move/from16 v1, p2

    invoke-static {v2, v0, v1}, Landroid/view/RecordingCanvas;->checkRange(III)V

    .line 524
    :cond_1
    if-eqz p7, :cond_2

    .line 525
    move-object/from16 v0, p7

    array-length v2, v0

    div-int/lit8 v3, p2, 0x2

    move/from16 v0, p8

    invoke-static {v2, v0, v3}, Landroid/view/RecordingCanvas;->checkRange(III)V

    .line 527
    :cond_2
    if-eqz p9, :cond_3

    .line 528
    move-object/from16 v0, p9

    array-length v2, v0

    move/from16 v0, p10

    move/from16 v1, p11

    invoke-static {v2, v0, v1}, Landroid/view/RecordingCanvas;->checkRange(III)V

    .line 530
    :cond_3
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Canvas$VertexMode;->nativeInt:I

    .line 532
    invoke-virtual/range {p12 .. p12}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v15

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    .line 530
    invoke-static/range {v2 .. v16}, Landroid/view/RecordingCanvas;->nDrawVertices(JII[FI[FI[II[SIIJ)V

    .line 533
    return-void
.end method
