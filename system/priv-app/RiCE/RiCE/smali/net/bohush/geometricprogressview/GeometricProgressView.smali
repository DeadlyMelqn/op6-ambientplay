.class public Lnet/bohush/geometricprogressview/GeometricProgressView;
.super Landroid/view/View;
.source "GeometricProgressView.java"


# static fields
.field private static final DEFAULT_COLOR:Ljava/lang/String; = "#00897b"

.field private static final DEFAULT_DURATION:I = 0x5dc

.field private static final DEFAULT_FIGURE_PADDING:I = 0x2

.field private static final DEFAULT_NUMBER_OF_ANGLES:I = 0x6

.field private static final DEFAULT_SIZE:I = 0x40

.field private static final DEFAULT_TYPE:Lnet/bohush/geometricprogressview/TYPE;


# instance fields
.field private animators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private center:Landroid/graphics/PointF;

.field private color:I

.field private desiredHeight:I

.field private desiredWidth:I

.field private duration:I

.field private figurePadding:I

.field private figures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bohush/geometricprogressview/Figure;",
            ">;"
        }
    .end annotation
.end field

.field private height:I

.field private numberOfAngles:I

.field private type:Lnet/bohush/geometricprogressview/TYPE;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    sget-object v0, Lnet/bohush/geometricprogressview/TYPE;->KITE:Lnet/bohush/geometricprogressview/TYPE;

    sput-object v0, Lnet/bohush/geometricprogressview/GeometricProgressView;->DEFAULT_TYPE:Lnet/bohush/geometricprogressview/TYPE;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lnet/bohush/geometricprogressview/GeometricProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lnet/bohush/geometricprogressview/GeometricProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-direct/range {p0 .. p2}, Lnet/bohush/geometricprogressview/GeometricProgressView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private buildFiguresUsingKites(Ljava/util/List;DD)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;DD)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move v3, v2

    .line 168
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    int-to-double v4, v3

    const-wide v6, 0x4076800000000000L    # 360.0

    .line 170
    iget v8, v0, Lnet/bohush/geometricprogressview/GeometricProgressView;->numberOfAngles:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    mul-double/2addr v6, v4

    add-double v6, p2, v6

    .line 171
    invoke-static/range {v6 .. v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static/range {v10 .. v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double v10, v10, p4

    double-to-float v10, v10

    .line 172
    invoke-static/range {v6 .. v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static/range {v6 .. v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v6, v6, p4

    double-to-float v6, v6

    .line 175
    new-instance v7, Landroid/graphics/Path;

    invoke-direct/range {v7 .. v7}, Landroid/graphics/Path;-><init>()V

    .line 177
    iget-object v11, v0, Lnet/bohush/geometricprogressview/GeometricProgressView;->center:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    add-float/2addr v11, v10

    iget-object v12, v0, Lnet/bohush/geometricprogressview/GeometricProgressView;->center:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    add-float/2addr v12, v6

    invoke-virtual {v7, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    if-gtz v3, :cond_0

    .line 181
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/PointF;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/PointF;

    invoke-direct {v0, v11, v12}, Lnet/bohush/geometricprogressview/GeometricProgressView;->getPointBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v11

    goto :goto_1

    .line 183
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/PointF;

    add-int/lit8 v12, v3, -0x1

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/PointF;

    invoke-direct {v0, v11, v12}, Lnet/bohush/geometricprogressview/GeometricProgressView;->getPointBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v11

    .line 185
    :goto_1
    iget v12, v11, Landroid/graphics/PointF;->x:F

    add-float/2addr v12, v10

    iget v11, v11, Landroid/graphics/PointF;->y:F

    add-float/2addr v11, v6

    invoke-virtual {v7, v12, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 187
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    add-float/2addr v11, v10

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    add-float/2addr v12, v6

    invoke-virtual {v7, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 190
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-lt v3, v11, :cond_1

    .line 191
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/PointF;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/PointF;

    invoke-direct {v0, v11, v12}, Lnet/bohush/geometricprogressview/GeometricProgressView;->getPointBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v11

    goto :goto_2

    .line 193
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/PointF;

    add-int/lit8 v12, v3, 0x1

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/PointF;

    invoke-direct {v0, v11, v12}, Lnet/bohush/geometricprogressview/GeometricProgressView;->getPointBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v11

    .line 196
    :goto_2
    iget v12, v11, Landroid/graphics/PointF;->x:F

    add-float/2addr v12, v10

    iget v11, v11, Landroid/graphics/PointF;->y:F

    add-float/2addr v11, v6

    invoke-virtual {v7, v12, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 197
    iget-object v11, v0, Lnet/bohush/geometricprogressview/GeometricProgressView;->center:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    add-float/2addr v10, v11

    iget-object v11, v0, Lnet/bohush/geometricprogressview/GeometricProgressView;->center:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v11

    invoke-virtual {v7, v10, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 198
    invoke-virtual/range {v7 .. v7}, Landroid/graphics/Path;->close()V

    .line 200
    iget-object v6, v0, Lnet/bohush/geometricprogressview/GeometricProgressView;->figures:Ljava/util/List;

    new-instance v10, Lnet/bohush/geometricprogressview/Figure;

    iget v11, v0, Lnet/bohush/geometricprogressview/GeometricProgressView;->color:I

    invoke-virtual/range {p0 .. p0}, Lnet/bohush/geometricprogressview/GeometricProgressView;->isInEditMode()Z

    move-result v12

    if-eqz v12, :cond_2

    const-wide v14, 0x406cc00000000000L    # 230.0

    iget v2, v0, Lnet/bohush/geometricprogressview/GeometricProgressView;->numberOfAngles:I

    int-to-double v12, v2

    div-double/2addr v14, v12

    mul-double/2addr v4, v14

    const-wide/high16 v12, 0x4039000000000000L    # 25.0

    add-double/2addr v4, v12

    double-to-int v2, v4

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    :goto_3
    invoke-direct {v10, v7, v11, v2}, Lnet/bohush/geometricprogressview/Figure;-><init>(Landroid/graphics/Path;II)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private buildFiguresUsingTriangles(Ljava/util/List;DD)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;DD)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v3, 0x0

    .line 205
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    int-to-double v4, v3

    .line 207
    iget v6, v0, Lnet/bohush/geometricprogressview/GeometricProgressView;->numberOfAngles:I

    int-to-double v6, v6

    const-wide v8, 0x4076800000000000L    # 360.0

    div-double v6, v8, v6

    mul-double/2addr v6, v4

    add-double v6, p2, v6

    add-int/lit8 v10, v3, 0x1

    move v12, v3

    int-to-double v2, v10

    .line 208
    iget v11, v0, Lnet/bohush/geometricprogressview/GeometricProgressView;->numberOfAngles:I

    move-wide v13, v4

    int-to-double v4, v11

    div-double/2addr v8, v4

    mul-double/2addr v2, v8

    add-double v2, p2, v2

    add-double/2addr v6, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v2

    .line 210
    invoke-static/range {v6 .. v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static/range {v2 .. v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, p4

    double-to-float v2, v2

    .line 211
    invoke-static/range {v6 .. v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static/range {v3 .. v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v3, v3, p4

    double-to-float v3, v3

    .line 213
    new-instance v4, Landroid/graphics/Path;

    invoke-direct/range {v4 .. v4}, Landroid/graphics/Path;-><init>()V

    .line 214
    iget-object v5, v0, Lnet/bohush/geometricprogressview/GeometricProgressView;->center:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v2

    iget-object v6, v0, Lnet/bohush/geometricprogressview/GeometricProgressView;->center:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    move v5, v12

    .line 215
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v2

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v3

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 216
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_0

    const/4 v5, 0x0

    .line 217
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v2

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v3

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 219
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v2

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v3

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 221
    :goto_1
    iget-object v6, v0, Lnet/bohush/geometricprogressview/GeometricProgressView;->center:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v6

    iget-object v6, v0, Lnet/bohush/geometricprogressview/GeometricProgressView;->center:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v6

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 222
    invoke-virtual/range {v4 .. v4}, Landroid/graphics/Path;->close()V

    .line 224
    iget-object v2, v0, Lnet/bohush/geometricprogressview/GeometricProgressView;->figures:Ljava/util/List;

    new-instance v3, Lnet/bohush/geometricprogressview/Figure;

    iget v6, v0, Lnet/bohush/geometricprogressview/GeometricProgressView;->color:I

    invoke-virtual/range {p0 .. p0}, Lnet/bohush/geometricprogressview/GeometricProgressView;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_1

    const-wide/high16 v7, 0x4039000000000000L    # 25.0

    const-wide v11, 0x406cc00000000000L    # 230.0

    iget v9, v0, Lnet/bohush/geometricprogressview/GeometricProgressView;->numberOfAngles:I

    move v15, v6

    int-to-double v5, v9

    div-double/2addr v11, v5

    mul-double v5, v13, v11

    add-double/2addr v5, v7

    double-to-int v5, v5

    move v6, v5

    move v5, v15

    goto :goto_2

    :cond_1
    move v5, v6

    const/4 v6, 0x0

    :goto_2
    invoke-direct {v3, v4, v5, v6}, Lnet/bohush/geometricprogressview/Figure;-><init>(Landroid/graphics/Path;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v10

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private cancelAnimation()V
    .locals 2

    .line 275
    invoke-virtual/range {p0 .. p0}, Lnet/bohush/geometricprogressview/GeometricProgressView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->animators:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->animators:Ljava/util/List;

    invoke-interface/range {v0 .. v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface/range {v0 .. v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface/range {v0 .. v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 278
    invoke-virtual/range {v1 .. v1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 280
    :cond_1
    iget-object v0, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->animators:Ljava/util/List;

    invoke-interface/range {v0 .. v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 281
    iput-object v0, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->animators:Ljava/util/List;

    :cond_2
    return-void
.end method

.method private dpToPx(I)I
    .locals 2

    .line 286
    invoke-virtual/range {p0 .. p0}, Lnet/bohush/geometricprogressview/GeometricProgressView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    int-to-float p1, p1

    .line 287
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    float-to-double p0, p1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method private getPointBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    .line 229
    iget p0, p1, Landroid/graphics/PointF;->x:F

    iget v0, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr p0, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    .line 230
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, p2

    div-float/2addr p1, v0

    .line 231
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2, p0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p2
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/16 v0, 0x40

    .line 53
    invoke-direct {p0, v0}, Lnet/bohush/geometricprogressview/GeometricProgressView;->dpToPx(I)I

    move-result v1

    iput v1, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->desiredWidth:I

    .line 54
    invoke-direct {p0, v0}, Lnet/bohush/geometricprogressview/GeometricProgressView;->dpToPx(I)I

    move-result v0

    iput v0, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->desiredHeight:I

    .line 55
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->center:Landroid/graphics/PointF;

    const/16 v0, 0x5dc

    const/4 v1, 0x6

    const/4 v2, 0x2

    if-eqz p2, :cond_0

    .line 57
    sget-object v3, Lnet/bohush/geometricprogressview/R$styleable;->GeometricProgressView:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 58
    sget p2, Lnet/bohush/geometricprogressview/R$styleable;->GeometricProgressView_gp_figure_padding:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->figurePadding:I

    .line 59
    sget p2, Lnet/bohush/geometricprogressview/R$styleable;->GeometricProgressView_gp_number_of_angles:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->numberOfAngles:I

    .line 60
    sget p2, Lnet/bohush/geometricprogressview/R$styleable;->GeometricProgressView_gp_color:I

    const-string v1, "#00897b"

    invoke-static/range {v1 .. v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lnet/bohush/geometricprogressview/GeometricProgressView;->setColor(I)V

    .line 61
    sget p2, Lnet/bohush/geometricprogressview/R$styleable;->GeometricProgressView_gp_duration:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->duration:I

    .line 62
    sget p2, Lnet/bohush/geometricprogressview/R$styleable;->GeometricProgressView_gp_type:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 68
    :pswitch_0
    sget-object p2, Lnet/bohush/geometricprogressview/TYPE;->TRIANGLE:Lnet/bohush/geometricprogressview/TYPE;

    iput-object p2, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->type:Lnet/bohush/geometricprogressview/TYPE;

    goto :goto_0

    .line 65
    :pswitch_1
    sget-object p2, Lnet/bohush/geometricprogressview/TYPE;->KITE:Lnet/bohush/geometricprogressview/TYPE;

    iput-object p2, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->type:Lnet/bohush/geometricprogressview/TYPE;

    .line 71
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 73
    :cond_0
    invoke-direct {p0, v2}, Lnet/bohush/geometricprogressview/GeometricProgressView;->dpToPx(I)I

    move-result p1

    iput p1, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->figurePadding:I

    .line 74
    iput v1, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->numberOfAngles:I

    const-string p1, "#00897b"

    .line 75
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/bohush/geometricprogressview/GeometricProgressView;->setColor(I)V

    .line 76
    iput v0, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->duration:I

    .line 77
    sget-object p1, Lnet/bohush/geometricprogressview/GeometricProgressView;->DEFAULT_TYPE:Lnet/bohush/geometricprogressview/TYPE;

    iput-object p1, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->type:Lnet/bohush/geometricprogressview/TYPE;

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initializeFigures()V
    .locals 18

    move-object/from16 v6, p0

    .line 142
    invoke-virtual/range {p0 .. p0}, Lnet/bohush/geometricprogressview/GeometricProgressView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct/range {p0 .. p0}, Lnet/bohush/geometricprogressview/GeometricProgressView;->cancelAnimation()V

    .line 143
    :cond_0
    iget v0, v6, Lnet/bohush/geometricprogressview/GeometricProgressView;->width:I

    iget v1, v6, Lnet/bohush/geometricprogressview/GeometricProgressView;->height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 145
    iget v1, v6, Lnet/bohush/geometricprogressview/GeometricProgressView;->numberOfAngles:I

    iget v2, v6, Lnet/bohush/geometricprogressview/GeometricProgressView;->figurePadding:I

    mul-int/2addr v1, v2

    int-to-double v1, v1

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    div-double v4, v1, v3

    .line 147
    div-int/lit8 v0, v0, 0x2

    double-to-int v1, v4

    sub-int/2addr v0, v1

    const-wide v1, 0x4056800000000000L    # 90.0

    .line 148
    iget v3, v6, Lnet/bohush/geometricprogressview/GeometricProgressView;->numberOfAngles:I

    int-to-double v7, v3

    const-wide v9, 0x4076800000000000L    # 360.0

    div-double v7, v9, v7

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v7, v11

    add-double v2, v7, v1

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct/range {v1 .. v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 150
    :goto_0
    iget v8, v6, Lnet/bohush/geometricprogressview/GeometricProgressView;->numberOfAngles:I

    if-ge v7, v8, :cond_1

    int-to-double v11, v7

    .line 151
    iget v8, v6, Lnet/bohush/geometricprogressview/GeometricProgressView;->numberOfAngles:I

    int-to-double v13, v8

    div-double v13, v9, v13

    mul-double/2addr v11, v13

    add-double/2addr v11, v2

    .line 152
    new-instance v8, Landroid/graphics/PointF;

    iget-object v13, v6, Lnet/bohush/geometricprogressview/GeometricProgressView;->center:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    float-to-double v13, v13

    int-to-double v9, v0

    .line 153
    invoke-static/range {v11 .. v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v9

    add-double v13, v13, v16

    double-to-float v13, v13

    iget-object v14, v6, Lnet/bohush/geometricprogressview/GeometricProgressView;->center:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->y:F

    float-to-double v14, v14

    .line 154
    invoke-static/range {v11 .. v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static/range {v11 .. v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    add-double/2addr v14, v9

    double-to-float v9, v14

    invoke-direct {v8, v13, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 152
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    const-wide v9, 0x4076800000000000L    # 360.0

    goto :goto_0

    .line 158
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lnet/bohush/geometricprogressview/GeometricProgressView;->figures:Ljava/util/List;

    .line 159
    sget-object v0, Lnet/bohush/geometricprogressview/TYPE;->KITE:Lnet/bohush/geometricprogressview/TYPE;

    iget-object v7, v6, Lnet/bohush/geometricprogressview/GeometricProgressView;->type:Lnet/bohush/geometricprogressview/TYPE;

    invoke-virtual {v0, v7}, Lnet/bohush/geometricprogressview/TYPE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v0, p0

    .line 160
    invoke-direct/range {v0 .. v5}, Lnet/bohush/geometricprogressview/GeometricProgressView;->buildFiguresUsingKites(Ljava/util/List;DD)V

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    .line 162
    invoke-direct/range {v0 .. v5}, Lnet/bohush/geometricprogressview/GeometricProgressView;->buildFiguresUsingTriangles(Ljava/util/List;DD)V

    .line 164
    :goto_1
    invoke-direct/range {p0 .. p0}, Lnet/bohush/geometricprogressview/GeometricProgressView;->setupAnimation()V

    return-void
.end method

.method private setupAnimation()V
    .locals 11

    .line 235
    invoke-virtual/range {p0 .. p0}, Lnet/bohush/geometricprogressview/GeometricProgressView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 236
    :cond_0
    invoke-direct/range {p0 .. p0}, Lnet/bohush/geometricprogressview/GeometricProgressView;->cancelAnimation()V

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->animators:Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    .line 238
    :goto_0
    iget-object v2, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->figures:Ljava/util/List;

    invoke-interface/range {v2 .. v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 239
    iget-object v2, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->figures:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bohush/geometricprogressview/Figure;

    const/4 v3, 0x2

    if-eqz v1, :cond_1

    .line 241
    new-array v4, v3, [I

    int-to-double v5, v1

    const-wide v7, 0x406fe00000000000L    # 255.0

    iget v9, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->numberOfAngles:I

    int-to-double v9, v9

    div-double/2addr v7, v9

    mul-double/2addr v7, v5

    double-to-int v7, v7

    aput v7, v4, v0

    const/4 v7, 0x1

    aput v0, v4, v7

    invoke-static/range {v4 .. v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 242
    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 243
    iget v7, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->duration:I

    int-to-double v7, v7

    iget v9, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->numberOfAngles:I

    int-to-double v9, v9

    div-double/2addr v7, v9

    mul-double/2addr v5, v7

    double-to-int v5, v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 244
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v5 .. v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 245
    new-instance v5, Lnet/bohush/geometricprogressview/GeometricProgressView$1;

    invoke-direct {v5, p0, v2}, Lnet/bohush/geometricprogressview/GeometricProgressView$1;-><init>(Lnet/bohush/geometricprogressview/GeometricProgressView;Lnet/bohush/geometricprogressview/Figure;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 252
    invoke-virtual/range {v4 .. v4}, Landroid/animation/ValueAnimator;->start()V

    .line 253
    iget-object v5, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->animators:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_1
    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static/range {v3 .. v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    const/4 v4, -0x1

    .line 257
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 258
    iget v4, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->duration:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 259
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v4 .. v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-double v4, v1

    .line 260
    iget v6, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->duration:I

    int-to-double v6, v6

    iget v8, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->numberOfAngles:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    mul-double/2addr v4, v6

    double-to-int v4, v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 261
    new-instance v4, Lnet/bohush/geometricprogressview/GeometricProgressView$2;

    invoke-direct {v4, p0, v2}, Lnet/bohush/geometricprogressview/GeometricProgressView$2;-><init>(Lnet/bohush/geometricprogressview/GeometricProgressView;Lnet/bohush/geometricprogressview/Figure;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 268
    invoke-virtual/range {v3 .. v3}, Landroid/animation/ValueAnimator;->start()V

    .line 270
    iget-object v2, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->animators:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 99
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 100
    iget-object p0, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->figures:Ljava/util/List;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bohush/geometricprogressview/Figure;

    .line 101
    invoke-virtual {v0, p1}, Lnet/bohush/geometricprogressview/Figure;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 90
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Lnet/bohush/geometricprogressview/GeometricProgressView;->getWidth()I

    move-result p1

    iput p1, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->width:I

    .line 92
    invoke-virtual/range {p0 .. p0}, Lnet/bohush/geometricprogressview/GeometricProgressView;->getHeight()I

    move-result p1

    iput p1, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->height:I

    .line 93
    iget-object p1, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->center:Landroid/graphics/PointF;

    iget p2, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->width:I

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    iget p4, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->height:I

    int-to-float p4, p4

    div-float/2addr p4, p3

    invoke-virtual {p1, p2, p4}, Landroid/graphics/PointF;->set(FF)V

    .line 94
    invoke-direct/range {p0 .. p0}, Lnet/bohush/geometricprogressview/GeometricProgressView;->initializeFigures()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 83
    iget v0, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->desiredWidth:I

    invoke-static {v0, p1}, Lnet/bohush/geometricprogressview/GeometricProgressView;->resolveSize(II)I

    move-result p1

    .line 84
    iget v0, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->desiredHeight:I

    invoke-static {v0, p2}, Lnet/bohush/geometricprogressview/GeometricProgressView;->resolveSize(II)I

    move-result p2

    .line 85
    invoke-virtual {p0, p1, p2}, Lnet/bohush/geometricprogressview/GeometricProgressView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setColor(I)V
    .locals 2

    .line 125
    iput p1, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->color:I

    .line 126
    iget-object v0, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->figures:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->figures:Ljava/util/List;

    invoke-interface/range {v0 .. v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface/range {v0 .. v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface/range {v0 .. v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bohush/geometricprogressview/Figure;

    .line 128
    invoke-virtual {v1, p1}, Lnet/bohush/geometricprogressview/Figure;->setColor(I)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lnet/bohush/geometricprogressview/GeometricProgressView;->invalidate()V

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 135
    iput p1, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->duration:I

    .line 136
    iget-object p1, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->figures:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 137
    invoke-direct/range {p0 .. p0}, Lnet/bohush/geometricprogressview/GeometricProgressView;->setupAnimation()V

    :cond_0
    return-void
.end method

.method public setFigurePadding(I)V
    .locals 0

    .line 116
    iput p1, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->figurePadding:I

    .line 117
    invoke-direct/range {p0 .. p0}, Lnet/bohush/geometricprogressview/GeometricProgressView;->initializeFigures()V

    return-void
.end method

.method public setFigurePaddingInDp(I)V
    .locals 0

    .line 121
    invoke-direct/range {p0 .. p1}, Lnet/bohush/geometricprogressview/GeometricProgressView;->dpToPx(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/bohush/geometricprogressview/GeometricProgressView;->setFigurePadding(I)V

    return-void
.end method

.method public setNumberOfAngles(I)V
    .locals 0

    .line 106
    iput p1, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->numberOfAngles:I

    .line 107
    invoke-direct/range {p0 .. p0}, Lnet/bohush/geometricprogressview/GeometricProgressView;->initializeFigures()V

    return-void
.end method

.method public setType(Lnet/bohush/geometricprogressview/TYPE;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lnet/bohush/geometricprogressview/GeometricProgressView;->type:Lnet/bohush/geometricprogressview/TYPE;

    .line 112
    invoke-direct/range {p0 .. p0}, Lnet/bohush/geometricprogressview/GeometricProgressView;->initializeFigures()V

    return-void
.end method
