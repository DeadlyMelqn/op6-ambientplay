.class Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;
.super Landroid/view/animation/Animation;
.source "ColorPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ice/box/helpers/ColorPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScrollAnimation"
.end annotation


# static fields
.field private static final DURATION:J = 0x2eeL

.field private static final TAG:Ljava/lang/String; = "ScrollAnimation"


# instance fields
.field private mCurrent:F

.field private mFrom:F

.field private mTo:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 306
    invoke-direct/range {p0 .. p0}, Landroid/view/animation/Animation;-><init>()V

    const-wide/16 v0, 0x2ee

    .line 307
    invoke-virtual {p0, v0, v1}, Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;->setDuration(J)V

    .line 308
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v0 .. v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 319
    iget p2, p0, Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;->mFrom:F

    iget v0, p0, Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;->mTo:F

    iget v1, p0, Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;->mFrom:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    add-float/2addr p2, v0

    iput p2, p0, Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;->mCurrent:F

    return-void
.end method

.method public getCurrent()F
    .locals 0

    .line 324
    iget p0, p0, Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;->mCurrent:F

    return p0
.end method

.method public startScrolling(FF)V
    .locals 0

    .line 312
    iput p1, p0, Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;->mFrom:F

    .line 313
    iput p2, p0, Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;->mTo:F

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;->startNow()V

    return-void
.end method
