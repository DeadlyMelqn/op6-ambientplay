.class final Landroid/support/transition/ChangeBounds$4;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/View;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 112
    invoke-direct/range {p0 .. p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Landroid/graphics/PointF;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 112
    check-cast p1, Landroid/view/View;

    invoke-virtual/range {p0 .. p1}, Landroid/support/transition/ChangeBounds$4;->get(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public set(Landroid/view/View;Landroid/graphics/PointF;)V
    .locals 2

    .line 115
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result p0

    .line 116
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 117
    iget v1, p2, Landroid/graphics/PointF;->x:F

    invoke-static/range {v1 .. v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 118
    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 119
    invoke-static {p1, p0, v0, v1, p2}, Landroid/support/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 112
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual/range {p0 .. p2}, Landroid/support/transition/ChangeBounds$4;->set(Landroid/view/View;Landroid/graphics/PointF;)V

    return-void
.end method
