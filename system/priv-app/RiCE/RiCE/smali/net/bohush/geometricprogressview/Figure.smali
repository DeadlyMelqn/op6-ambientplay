.class Lnet/bohush/geometricprogressview/Figure;
.super Ljava/lang/Object;
.source "Figure.java"


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;


# direct methods
.method constructor <init>(Landroid/graphics/Path;II)V
    .locals 1

    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lnet/bohush/geometricprogressview/Figure;->mPath:Landroid/graphics/Path;

    .line 14
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct/range {p1 .. p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lnet/bohush/geometricprogressview/Figure;->mPaint:Landroid/graphics/Paint;

    .line 15
    iget-object p1, p0, Lnet/bohush/geometricprogressview/Figure;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    iget-object p1, p0, Lnet/bohush/geometricprogressview/Figure;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    iget-object p1, p0, Lnet/bohush/geometricprogressview/Figure;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    iget-object p1, p0, Lnet/bohush/geometricprogressview/Figure;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 19
    iget-object p0, p0, Lnet/bohush/geometricprogressview/Figure;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lnet/bohush/geometricprogressview/Figure;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lnet/bohush/geometricprogressview/Figure;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method setAlpha(I)V
    .locals 0

    .line 27
    iget-object p0, p0, Lnet/bohush/geometricprogressview/Figure;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method setColor(I)V
    .locals 0

    .line 23
    iget-object p0, p0, Lnet/bohush/geometricprogressview/Figure;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
