.class public abstract Landroid/support/v17/leanback/widget/Parallax;
.super Ljava/lang/Object;
.source "Parallax.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/Parallax$IntProperty;,
        Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;,
        Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PropertyT:",
        "Landroid/util/Property;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v17/leanback/widget/ParallaxEffect;",
            ">;"
        }
    .end annotation
.end field

.field private mFloatValues:[F

.field final mProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TPropertyT;>;"
        }
    .end annotation
.end field

.field final mPropertiesReadOnly:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TPropertyT;>;"
        }
    .end annotation
.end field

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Landroid/support/v17/leanback/widget/Parallax;, "Landroid/support/v17/leanback/widget/Parallax<TPropertyT;>;"
    const/4 v1, 0x4

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    .line 404
    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mPropertiesReadOnly:Ljava/util/List;

    .line 406
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mValues:[I

    .line 407
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mFloatValues:[F

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mEffects:Ljava/util/List;

    .line 77
    return-void
.end method


# virtual methods
.method final getFloatPropertyValue(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 540
    .local p0, "this":Landroid/support/v17/leanback/widget/Parallax;, "Landroid/support/v17/leanback/widget/Parallax<TPropertyT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mFloatValues:[F

    aget v0, v0, p1

    return v0
.end method

.method final getIntPropertyValue(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 429
    .local p0, "this":Landroid/support/v17/leanback/widget/Parallax;, "Landroid/support/v17/leanback/widget/Parallax<TPropertyT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mValues:[I

    aget v0, v0, p1

    return v0
.end method

.method public abstract getMaxValue()F
.end method

.method final setIntPropertyValue(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 439
    .local p0, "this":Landroid/support/v17/leanback/widget/Parallax;, "Landroid/support/v17/leanback/widget/Parallax<TPropertyT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 440
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 442
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mValues:[I

    aput p2, v0, p1

    .line 443
    return-void
.end method

.method public updateValues()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 578
    .local p0, "this":Landroid/support/v17/leanback/widget/Parallax;, "Landroid/support/v17/leanback/widget/Parallax<TPropertyT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/Parallax;->mEffects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 579
    iget-object v1, p0, Landroid/support/v17/leanback/widget/Parallax;->mEffects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/ParallaxEffect;

    invoke-virtual {v1, p0}, Landroid/support/v17/leanback/widget/ParallaxEffect;->performMapping(Landroid/support/v17/leanback/widget/Parallax;)V

    .line 578
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 581
    :cond_0
    return-void
.end method

.method final verifyFloatProperties()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v17/leanback/widget/Parallax;, "Landroid/support/v17/leanback/widget/Parallax<TPropertyT;>;"
    const/4 v6, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 511
    iget-object v3, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v8, :cond_0

    .line 512
    return-void

    .line 514
    :cond_0
    invoke-virtual {p0, v7}, Landroid/support/v17/leanback/widget/Parallax;->getFloatPropertyValue(I)F

    move-result v1

    .line 515
    .local v1, "last":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 516
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/Parallax;->getFloatPropertyValue(I)F

    move-result v2

    .line 517
    .local v2, "v":F
    cmpg-float v3, v2, v1

    if-gez v3, :cond_1

    .line 518
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Parallax Property[%d]\"%s\" is smaller than Property[%d]\"%s\""

    new-array v6, v6, [Ljava/lang/Object;

    .line 520
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    iget-object v3, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v9

    .line 521
    add-int/lit8 v3, v0, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v8

    iget-object v3, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    add-int/lit8 v7, v0, -0x1

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v10

    .line 518
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 522
    :cond_1
    const v3, -0x800001

    cmpl-float v3, v1, v3

    if-nez v3, :cond_2

    .line 523
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 522
    cmpl-float v3, v2, v3

    if-nez v3, :cond_2

    .line 524
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Parallax Property[%d]\"%s\" is UNKNOWN_BEFORE and Property[%d]\"%s\" is UNKNOWN_AFTER"

    new-array v6, v6, [Ljava/lang/Object;

    .line 526
    add-int/lit8 v3, v0, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    iget-object v3, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    add-int/lit8 v7, v0, -0x1

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v9

    .line 527
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v8

    iget-object v3, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v10

    .line 524
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 529
    :cond_2
    move v1, v2

    .line 515
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 531
    .end local v2    # "v":F
    :cond_3
    return-void
.end method

.method verifyIntProperties()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v17/leanback/widget/Parallax;, "Landroid/support/v17/leanback/widget/Parallax<TPropertyT;>;"
    const/4 v6, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 489
    iget-object v3, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v8, :cond_0

    .line 490
    return-void

    .line 492
    :cond_0
    invoke-virtual {p0, v7}, Landroid/support/v17/leanback/widget/Parallax;->getIntPropertyValue(I)I

    move-result v1

    .line 493
    .local v1, "last":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 494
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/Parallax;->getIntPropertyValue(I)I

    move-result v2

    .line 495
    .local v2, "v":I
    if-ge v2, v1, :cond_1

    .line 496
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Parallax Property[%d]\"%s\" is smaller than Property[%d]\"%s\""

    new-array v6, v6, [Ljava/lang/Object;

    .line 498
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    iget-object v3, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v9

    .line 499
    add-int/lit8 v3, v0, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v8

    iget-object v3, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    add-int/lit8 v7, v0, -0x1

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v10

    .line 496
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 500
    :cond_1
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_2

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_2

    .line 501
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Parallax Property[%d]\"%s\" is UNKNOWN_BEFORE and Property[%d]\"%s\" is UNKNOWN_AFTER"

    new-array v6, v6, [Ljava/lang/Object;

    .line 503
    add-int/lit8 v3, v0, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    iget-object v3, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    add-int/lit8 v7, v0, -0x1

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v9

    .line 504
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v8

    iget-object v3, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v10

    .line 501
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 506
    :cond_2
    move v1, v2

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 508
    .end local v2    # "v":I
    :cond_3
    return-void
.end method
