.class final Landroid/graphics/drawable/VectorDrawable$VectorDrawableState$1;
.super Landroid/util/FloatProperty;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty",
        "<",
        "Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 854
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method public get(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;)Ljava/lang/Float;
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .prologue
    .line 862
    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 860
    check-cast p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState$1;->get(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;F)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    .param p2, "value"    # F

    .prologue
    .line 857
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setAlpha(F)Z

    .line 858
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .prologue
    .line 855
    check-cast p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState$1;->setValue(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;F)V

    return-void
.end method