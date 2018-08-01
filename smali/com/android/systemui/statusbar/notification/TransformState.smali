.class public Lcom/android/systemui/statusbar/notification/TransformState;
.super Ljava/lang/Object;
.source "TransformState.java"


# static fields
.field private static sInstancePool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool",
            "<",
            "Lcom/android/systemui/statusbar/notification/TransformState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOwnPosition:[I

.field private mSameAsAny:Z

.field private mTransformationEndX:F

.field private mTransformationEndY:F

.field protected mTransformedView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/TransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    .line 58
    iput v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndY:F

    .line 59
    iput v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndX:F

    .line 39
    return-void
.end method

.method public static createFrom(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/TransformState;
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 448
    instance-of v5, p0, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 449
    invoke-static {}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->obtain()Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    move-result-object v3

    .line 450
    .local v3, "result":Lcom/android/systemui/statusbar/notification/TextViewTransformState;
    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->initFrom(Landroid/view/View;)V

    .line 451
    return-object v3

    .line 453
    .end local v3    # "result":Lcom/android/systemui/statusbar/notification/TextViewTransformState;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x102018a

    if-ne v5, v6, :cond_1

    .line 454
    invoke-static {}, Lcom/android/systemui/statusbar/notification/ActionListTransformState;->obtain()Lcom/android/systemui/statusbar/notification/ActionListTransformState;

    move-result-object v0

    .line 455
    .local v0, "result":Lcom/android/systemui/statusbar/notification/ActionListTransformState;
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/ActionListTransformState;->initFrom(Landroid/view/View;)V

    .line 456
    return-object v0

    .line 458
    .end local v0    # "result":Lcom/android/systemui/statusbar/notification/ActionListTransformState;
    :cond_1
    instance-of v5, p0, Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    .line 459
    invoke-static {}, Lcom/android/systemui/statusbar/notification/ImageTransformState;->obtain()Lcom/android/systemui/statusbar/notification/ImageTransformState;

    move-result-object v1

    .line 460
    .local v1, "result":Lcom/android/systemui/statusbar/notification/ImageTransformState;
    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/notification/ImageTransformState;->initFrom(Landroid/view/View;)V

    .line 461
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x102038f

    if-ne v5, v6, :cond_2

    .line 462
    const/4 v5, 0x1

    invoke-direct {v1, v5}, Lcom/android/systemui/statusbar/notification/TransformState;->setIsSameAsAnyView(Z)V

    .line 464
    :cond_2
    return-object v1

    .line 466
    .end local v1    # "result":Lcom/android/systemui/statusbar/notification/ImageTransformState;
    :cond_3
    instance-of v5, p0, Landroid/widget/ProgressBar;

    if-eqz v5, :cond_4

    .line 467
    invoke-static {}, Lcom/android/systemui/statusbar/notification/ProgressTransformState;->obtain()Lcom/android/systemui/statusbar/notification/ProgressTransformState;

    move-result-object v2

    .line 468
    .local v2, "result":Lcom/android/systemui/statusbar/notification/ProgressTransformState;
    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/notification/ProgressTransformState;->initFrom(Landroid/view/View;)V

    .line 469
    return-object v2

    .line 471
    .end local v2    # "result":Lcom/android/systemui/statusbar/notification/ProgressTransformState;
    :cond_4
    invoke-static {}, Lcom/android/systemui/statusbar/notification/TransformState;->obtain()Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v4

    .line 472
    .local v4, "result":Lcom/android/systemui/statusbar/notification/TransformState;
    invoke-virtual {v4, p0}, Lcom/android/systemui/statusbar/notification/TransformState;->initFrom(Landroid/view/View;)V

    .line 473
    return-object v4
.end method

.method public static obtain()Lcom/android/systemui/statusbar/notification/TransformState;
    .locals 2

    .prologue
    .line 571
    sget-object v1, Lcom/android/systemui/statusbar/notification/TransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v1}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/TransformState;

    .line 572
    .local v0, "instance":Lcom/android/systemui/statusbar/notification/TransformState;
    if-eqz v0, :cond_0

    .line 573
    return-object v0

    .line 575
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/notification/TransformState;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/TransformState;-><init>()V

    return-object v1
.end method

.method public static setClippingDeactivated(Landroid/view/View;Z)V
    .locals 12
    .param p0, "transformedView"    # Landroid/view/View;
    .param p1, "deactivated"    # Z

    .prologue
    const v11, 0x7f0a0083

    const v10, 0x7f0a0082

    const v9, 0x7f0a0081

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 358
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-nez v6, :cond_0

    .line 359
    return-void

    .line 361
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 363
    .local v5, "view":Landroid/view/ViewGroup;
    :goto_0
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 364
    .local v1, "clipSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/View;>;"
    if-nez v1, :cond_1

    .line 365
    new-instance v1, Landroid/util/ArraySet;

    .end local v1    # "clipSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/View;>;"
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 366
    .restart local v1    # "clipSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/View;>;"
    invoke-virtual {v5, v9, v1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 368
    :cond_1
    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 369
    .local v0, "clipChildren":Ljava/lang/Boolean;
    if-nez v0, :cond_2

    .line 370
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 371
    invoke-virtual {v5, v10, v0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 373
    :cond_2
    invoke-virtual {v5, v11}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 374
    .local v2, "clipToPadding":Ljava/lang/Boolean;
    if-nez v2, :cond_3

    .line 375
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 376
    invoke-virtual {v5, v11, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 378
    :cond_3
    instance-of v6, v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v6, :cond_5

    move-object v4, v5

    .line 379
    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 381
    :goto_1
    if-nez p1, :cond_6

    .line 382
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 383
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 384
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 385
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 386
    invoke-virtual {v5, v9, v7}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 387
    if-eqz v4, :cond_4

    .line 388
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setClipToActualHeight(Z)V

    .line 400
    :cond_4
    :goto_2
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_7

    .line 401
    return-void

    .line 380
    :cond_5
    const/4 v4, 0x0

    .local v4, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    goto :goto_1

    .line 392
    .end local v4    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_6
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 393
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 394
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 395
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 397
    invoke-virtual {v4, v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setClipToActualHeight(Z)V

    goto :goto_2

    .line 403
    :cond_7
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 404
    .local v3, "parent":Landroid/view/ViewParent;
    instance-of v6, v3, Landroid/view/ViewGroup;

    if-eqz v6, :cond_8

    move-object v5, v3

    .line 405
    check-cast v5, Landroid/view/ViewGroup;

    goto/16 :goto_0

    .line 407
    :cond_8
    return-void
.end method

.method private setIsSameAsAnyView(Z)V
    .locals 0
    .param p1, "sameAsAny"    # Z

    .prologue
    .line 477
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mSameAsAny:Z

    .line 478
    return-void
.end method

.method private setTransformationStartScaleX(F)V
    .locals 3
    .param p1, "startScaleX"    # F

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f0a029d

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 525
    return-void
.end method

.method private setTransformationStartScaleY(F)V
    .locals 3
    .param p1, "startScaleY"    # F

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f0a029e

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 529
    return-void
.end method

.method private transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 17
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationFlags"    # I
    .param p3, "customTransformation"    # Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
    .param p4, "transformationAmount"    # F

    .prologue
    .line 108
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    .line 109
    .local v14, "transformedView":Landroid/view/View;
    and-int/lit8 v15, p2, 0x1

    if-eqz v15, :cond_f

    const/4 v10, 0x1

    .line 110
    .local v10, "transformX":Z
    :goto_0
    and-int/lit8 v15, p2, 0x10

    if-eqz v15, :cond_10

    const/4 v11, 0x1

    .line 111
    .local v11, "transformY":Z
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->transformScale(Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v9

    .line 113
    .local v9, "transformScale":Z
    const/4 v15, 0x0

    cmpl-float v15, p4, v15

    if-eqz v15, :cond_0

    .line 114
    if-eqz v10, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartX()F

    move-result v15

    const/high16 v16, -0x40800000    # -1.0f

    cmpl-float v15, v15, v16

    if-nez v15, :cond_11

    .line 119
    :cond_0
    :goto_2
    const/4 v15, 0x0

    cmpl-float v15, p4, v15

    if-eqz v15, :cond_14

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object v6

    .line 124
    .local v6, "otherPosition":[I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object v8

    .line 125
    .local v8, "ownStablePosition":[I
    if-eqz p3, :cond_1

    .line 126
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->initTransformation(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    .line 125
    if-eqz v15, :cond_4

    .line 127
    :cond_1
    if-eqz v10, :cond_2

    .line 128
    const/4 v15, 0x0

    aget v15, v6, v15

    const/16 v16, 0x0

    aget v16, v8, v16

    sub-int v15, v15, v16

    int-to-float v15, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartX(F)V

    .line 130
    :cond_2
    if-eqz v11, :cond_3

    .line 131
    const/4 v15, 0x1

    aget v15, v6, v15

    const/16 v16, 0x1

    aget v16, v8, v16

    sub-int v15, v15, v16

    int-to-float v15, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartY(F)V

    .line 134
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformedView()Landroid/view/View;

    move-result-object v7

    .line 135
    .local v7, "otherView":Landroid/view/View;
    if-eqz v9, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewWidth()I

    move-result v16

    move/from16 v0, v16

    if-eq v15, v0, :cond_15

    .line 136
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewWidth()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v16

    mul-float v15, v15, v16

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    .line 136
    div-float v15, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    .line 138
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setPivotX(F)V

    .line 142
    :goto_4
    if-eqz v9, :cond_16

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewHeight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewHeight()I

    move-result v16

    move/from16 v0, v16

    if-eq v15, v0, :cond_16

    .line 143
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewHeight()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v16

    mul-float v15, v15, v16

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    .line 143
    div-float v15, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    .line 145
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setPivotY(F)V

    .line 150
    .end local v7    # "otherView":Landroid/view/View;
    :cond_4
    :goto_5
    if-nez v10, :cond_5

    .line 151
    const/high16 v15, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartX(F)V

    .line 153
    :cond_5
    if-nez v11, :cond_6

    .line 154
    const/high16 v15, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartY(F)V

    .line 156
    :cond_6
    if-nez v9, :cond_7

    .line 157
    const/high16 v15, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    .line 158
    const/high16 v15, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    .line 160
    :cond_7
    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 162
    .end local v6    # "otherPosition":[I
    .end local v8    # "ownStablePosition":[I
    :cond_8
    sget-object v15, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move/from16 v0, p4

    invoke-interface {v15, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 164
    .local v4, "interpolatedValue":F
    if-eqz v10, :cond_a

    .line 165
    move v5, v4

    .line 166
    .local v5, "interpolation":F
    if-eqz p3, :cond_9

    .line 168
    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->getCustomInterpolator(IZ)Landroid/view/animation/Interpolator;

    move-result-object v3

    .line 169
    .local v3, "customInterpolator":Landroid/view/animation/Interpolator;
    if-eqz v3, :cond_9

    .line 170
    move/from16 v0, p4

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    .line 173
    .end local v3    # "customInterpolator":Landroid/view/animation/Interpolator;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartX()F

    move-result v15

    .line 174
    const/16 v16, 0x0

    .line 173
    move/from16 v0, v16

    invoke-static {v15, v0, v5}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setTranslationX(F)V

    .line 177
    .end local v5    # "interpolation":F
    :cond_a
    if-eqz v11, :cond_c

    .line 178
    move v5, v4

    .line 179
    .restart local v5    # "interpolation":F
    if-eqz p3, :cond_b

    .line 181
    const/16 v15, 0x10

    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->getCustomInterpolator(IZ)Landroid/view/animation/Interpolator;

    move-result-object v3

    .line 182
    .restart local v3    # "customInterpolator":Landroid/view/animation/Interpolator;
    if-eqz v3, :cond_b

    .line 183
    move/from16 v0, p4

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    .line 186
    .end local v3    # "customInterpolator":Landroid/view/animation/Interpolator;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartY()F

    move-result v15

    .line 187
    const/16 v16, 0x0

    .line 186
    move/from16 v0, v16

    invoke-static {v15, v0, v5}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setTranslationY(F)V

    .line 190
    .end local v5    # "interpolation":F
    :cond_c
    if-eqz v9, :cond_e

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleX()F

    move-result v12

    .line 192
    .local v12, "transformationStartScaleX":F
    const/high16 v15, -0x40800000    # -1.0f

    cmpl-float v15, v12, v15

    if-eqz v15, :cond_d

    .line 195
    const/high16 v15, 0x3f800000    # 1.0f

    .line 194
    invoke-static {v12, v15, v4}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v15

    .line 193
    invoke-virtual {v14, v15}, Landroid/view/View;->setScaleX(F)V

    .line 198
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleY()F

    move-result v13

    .line 199
    .local v13, "transformationStartScaleY":F
    const/high16 v15, -0x40800000    # -1.0f

    cmpl-float v15, v13, v15

    if-eqz v15, :cond_e

    .line 202
    const/high16 v15, 0x3f800000    # 1.0f

    .line 201
    invoke-static {v13, v15, v4}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v15

    .line 200
    invoke-virtual {v14, v15}, Landroid/view/View;->setScaleY(F)V

    .line 206
    .end local v12    # "transformationStartScaleX":F
    .end local v13    # "transformationStartScaleY":F
    :cond_e
    return-void

    .line 109
    .end local v4    # "interpolatedValue":F
    .end local v9    # "transformScale":Z
    .end local v10    # "transformX":Z
    .end local v11    # "transformY":Z
    :cond_f
    const/4 v10, 0x0

    .restart local v10    # "transformX":Z
    goto/16 :goto_0

    .line 110
    :cond_10
    const/4 v11, 0x0

    .restart local v11    # "transformY":Z
    goto/16 :goto_1

    .line 115
    .restart local v9    # "transformScale":Z
    :cond_11
    if-eqz v11, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartY()F

    move-result v15

    const/high16 v16, -0x40800000    # -1.0f

    cmpl-float v15, v15, v16

    if-eqz v15, :cond_0

    .line 116
    :cond_12
    if-eqz v9, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleX()F

    move-result v15

    const/high16 v16, -0x40800000    # -1.0f

    cmpl-float v15, v15, v16

    if-eqz v15, :cond_0

    .line 117
    :cond_13
    if-eqz v9, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleY()F

    move-result v15

    const/high16 v16, -0x40800000    # -1.0f

    cmpl-float v15, v15, v16

    if-nez v15, :cond_8

    goto/16 :goto_2

    .line 122
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getLocationOnScreen()[I

    move-result-object v6

    .restart local v6    # "otherPosition":[I
    goto/16 :goto_3

    .line 140
    .restart local v7    # "otherView":Landroid/view/View;
    .restart local v8    # "ownStablePosition":[I
    :cond_15
    const/high16 v15, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    goto/16 :goto_4

    .line 147
    :cond_16
    const/high16 v15, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    goto/16 :goto_5
.end method

.method private transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 22
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationFlags"    # I
    .param p3, "customTransformation"    # Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
    .param p4, "transformationAmount"    # F

    .prologue
    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    move-object/from16 v19, v0

    .line 268
    .local v19, "transformedView":Landroid/view/View;
    and-int/lit8 v20, p2, 0x1

    if-eqz v20, :cond_b

    const/4 v13, 0x1

    .line 269
    .local v13, "transformX":Z
    :goto_0
    and-int/lit8 v20, p2, 0x10

    if-eqz v20, :cond_c

    const/4 v14, 0x1

    .line 270
    .local v14, "transformY":Z
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->transformScale(Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v12

    .line 272
    .local v12, "transformScale":Z
    const/16 v20, 0x0

    cmpl-float v20, p4, v20

    if-nez v20, :cond_2

    .line 273
    if-eqz v13, :cond_0

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartX()F

    move-result v17

    .line 275
    .local v17, "transformationStartX":F
    const/high16 v20, -0x40800000    # -1.0f

    cmpl-float v20, v17, v20

    if-eqz v20, :cond_d

    move/from16 v11, v17

    .line 277
    .local v11, "start":F
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartX(F)V

    .line 279
    .end local v11    # "start":F
    .end local v17    # "transformationStartX":F
    :cond_0
    if-eqz v14, :cond_1

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartY()F

    move-result v18

    .line 281
    .local v18, "transformationStartY":F
    const/high16 v20, -0x40800000    # -1.0f

    cmpl-float v20, v18, v20

    if-eqz v20, :cond_e

    move/from16 v11, v18

    .line 283
    .restart local v11    # "start":F
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartY(F)V

    .line 285
    .end local v11    # "start":F
    .end local v18    # "transformationStartY":F
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformedView()Landroid/view/View;

    move-result-object v9

    .line 286
    .local v9, "otherView":Landroid/view/View;
    if-eqz v12, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewWidth()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewWidth()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_f

    .line 287
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getScaleX()F

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    .line 288
    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setPivotX(F)V

    .line 292
    :goto_4
    if-eqz v12, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewHeight()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewHeight()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_10

    .line 293
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getScaleY()F

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    .line 294
    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setPivotY(F)V

    .line 298
    :goto_5
    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 300
    .end local v9    # "otherView":Landroid/view/View;
    :cond_2
    sget-object v20, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v20

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    .line 302
    .local v6, "interpolatedValue":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object v8

    .line 303
    .local v8, "otherStablePosition":[I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object v10

    .line 304
    .local v10, "ownPosition":[I
    if-eqz v13, :cond_5

    .line 305
    const/16 v20, 0x0

    aget v20, v8, v20

    const/16 v21, 0x0

    aget v21, v10, v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v4, v0

    .line 306
    .local v4, "endX":F
    move v7, v6

    .line 307
    .local v7, "interpolation":F
    if-eqz p3, :cond_4

    .line 308
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->customTransformTarget(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 309
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndX:F

    .line 312
    :cond_3
    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->getCustomInterpolator(IZ)Landroid/view/animation/Interpolator;

    move-result-object v3

    .line 313
    .local v3, "customInterpolator":Landroid/view/animation/Interpolator;
    if-eqz v3, :cond_4

    .line 314
    move/from16 v0, p4

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    .line 317
    .end local v3    # "customInterpolator":Landroid/view/animation/Interpolator;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartX()F

    move-result v20

    move/from16 v0, v20

    invoke-static {v0, v4, v7}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setTranslationX(F)V

    .line 321
    .end local v4    # "endX":F
    .end local v7    # "interpolation":F
    :cond_5
    if-eqz v14, :cond_8

    .line 322
    const/16 v20, 0x1

    aget v20, v8, v20

    const/16 v21, 0x1

    aget v21, v10, v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v5, v0

    .line 323
    .local v5, "endY":F
    move v7, v6

    .line 324
    .restart local v7    # "interpolation":F
    if-eqz p3, :cond_7

    .line 325
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->customTransformTarget(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 326
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndY:F

    .line 329
    :cond_6
    const/16 v20, 0x10

    const/16 v21, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->getCustomInterpolator(IZ)Landroid/view/animation/Interpolator;

    move-result-object v3

    .line 330
    .restart local v3    # "customInterpolator":Landroid/view/animation/Interpolator;
    if-eqz v3, :cond_7

    .line 331
    move/from16 v0, p4

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    .line 334
    .end local v3    # "customInterpolator":Landroid/view/animation/Interpolator;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartY()F

    move-result v20

    move/from16 v0, v20

    invoke-static {v0, v5, v7}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setTranslationY(F)V

    .line 338
    .end local v5    # "endY":F
    .end local v7    # "interpolation":F
    :cond_8
    if-eqz v12, :cond_a

    .line 339
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformedView()Landroid/view/View;

    move-result-object v9

    .line 340
    .restart local v9    # "otherView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleX()F

    move-result v15

    .line 341
    .local v15, "transformationStartScaleX":F
    const/high16 v20, -0x40800000    # -1.0f

    cmpl-float v20, v15, v20

    if-eqz v20, :cond_9

    .line 344
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    .line 343
    move/from16 v0, v20

    invoke-static {v15, v0, v6}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v20

    .line 342
    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setScaleX(F)V

    .line 347
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleY()F

    move-result v16

    .line 348
    .local v16, "transformationStartScaleY":F
    const/high16 v20, -0x40800000    # -1.0f

    cmpl-float v20, v16, v20

    if-eqz v20, :cond_a

    .line 351
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    .line 350
    move/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v0, v1, v6}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v20

    .line 349
    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setScaleY(F)V

    .line 355
    .end local v9    # "otherView":Landroid/view/View;
    .end local v15    # "transformationStartScaleX":F
    .end local v16    # "transformationStartScaleY":F
    :cond_a
    return-void

    .line 268
    .end local v6    # "interpolatedValue":F
    .end local v8    # "otherStablePosition":[I
    .end local v10    # "ownPosition":[I
    .end local v12    # "transformScale":Z
    .end local v13    # "transformX":Z
    .end local v14    # "transformY":Z
    :cond_b
    const/4 v13, 0x0

    .restart local v13    # "transformX":Z
    goto/16 :goto_0

    .line 269
    :cond_c
    const/4 v14, 0x0

    .restart local v14    # "transformY":Z
    goto/16 :goto_1

    .line 276
    .restart local v12    # "transformScale":Z
    .restart local v17    # "transformationStartX":F
    :cond_d
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTranslationX()F

    move-result v11

    .restart local v11    # "start":F
    goto/16 :goto_2

    .line 282
    .end local v11    # "start":F
    .end local v17    # "transformationStartX":F
    .restart local v18    # "transformationStartY":F
    :cond_e
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTranslationY()F

    move-result v11

    .restart local v11    # "start":F
    goto/16 :goto_3

    .line 290
    .end local v11    # "start":F
    .end local v18    # "transformationStartY":F
    .restart local v9    # "otherView":Landroid/view/View;
    :cond_f
    const/high16 v20, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    goto/16 :goto_4

    .line 296
    :cond_10
    const/high16 v20, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    goto/16 :goto_5
.end method


# virtual methods
.method public abortTransformation()V
    .locals 4

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    .line 564
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f0a029f

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 565
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f0a02a0

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 566
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f0a029d

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 567
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f0a029e

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 568
    return-void
.end method

.method public appear(FLcom/android/systemui/statusbar/TransformableView;)V
    .locals 1
    .param p1, "transformationAmount"    # F
    .param p2, "otherView"    # Lcom/android/systemui/statusbar/TransformableView;

    .prologue
    .line 437
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->prepareFadeIn()V

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;F)V

    .line 441
    return-void
.end method

.method public disappear(FLcom/android/systemui/statusbar/TransformableView;)V
    .locals 1
    .param p1, "transformationAmount"    # F
    .param p2, "otherView"    # Lcom/android/systemui/statusbar/TransformableView;

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;F)V

    .line 445
    return-void
.end method

.method public getLaidOutLocationOnScreen()[I
    .locals 4

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getLocationOnScreen()[I

    move-result-object v0

    .line 415
    .local v0, "location":[I
    const/4 v1, 0x0

    aget v2, v0, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 416
    const/4 v1, 0x1

    aget v2, v0, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 417
    return-object v0
.end method

.method public getLocationOnScreen()[I
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 421
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 424
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    sub-float v3, v5, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPivotX()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 425
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v3

    sub-float v3, v5, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPivotY()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 426
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    return-object v0
.end method

.method public getTransformationStartScaleX()F
    .locals 3

    .prologue
    .line 506
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const v2, 0x7f0a029d

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 507
    .local v0, "tag":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    .end local v0    # "tag":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0    # "tag":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Float;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0
.end method

.method public getTransformationStartScaleY()F
    .locals 3

    .prologue
    .line 511
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const v2, 0x7f0a029e

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 512
    .local v0, "tag":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    .end local v0    # "tag":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0    # "tag":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Float;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0
.end method

.method public getTransformationStartX()F
    .locals 3

    .prologue
    .line 496
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const v2, 0x7f0a029f

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 497
    .local v0, "tag":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    .end local v0    # "tag":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0    # "tag":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Float;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0
.end method

.method public getTransformationStartY()F
    .locals 3

    .prologue
    .line 501
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const v2, 0x7f0a02a0

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 502
    .local v0, "tag":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    .end local v0    # "tag":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0    # "tag":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Float;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0
.end method

.method public getTransformedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    return-object v0
.end method

.method protected getViewHeight()I
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method protected getViewWidth()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public initFrom(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    .line 63
    return-void
.end method

.method public prepareFadeIn()V
    .locals 0

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->resetTransformedView()V

    .line 552
    return-void
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->reset()V

    .line 482
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/notification/TransformState;

    if-ne v0, v1, :cond_0

    .line 483
    sget-object v0, Lcom/android/systemui/statusbar/notification/TransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 485
    :cond_0
    return-void
.end method

.method protected reset()V
    .locals 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    .line 533
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mSameAsAny:Z

    .line 534
    iput v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndX:F

    .line 535
    iput v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndY:F

    .line 536
    return-void
.end method

.method protected resetTransformedView()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 555
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 556
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 557
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 558
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 559
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 560
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->abortTransformation()V

    .line 561
    return-void
.end method

.method protected sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z
    .locals 1
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mSameAsAny:Z

    return v0
.end method

.method public setTransformationEndY(F)V
    .locals 0
    .param p1, "transformationEndY"    # F

    .prologue
    .line 488
    iput p1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndY:F

    .line 489
    return-void
.end method

.method public setTransformationStartX(F)V
    .locals 3
    .param p1, "transformationStartX"    # F

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f0a029f

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 517
    return-void
.end method

.method public setTransformationStartY(F)V
    .locals 3
    .param p1, "transformationStartY"    # F

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f0a02a0

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 521
    return-void
.end method

.method public setVisible(ZZ)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "force"    # Z

    .prologue
    const/16 v1, 0x8

    .line 539
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 540
    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 543
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 546
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    if-eqz p1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 547
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->resetTransformedView()V

    .line 548
    return-void

    .line 543
    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    .line 546
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected transformScale(Lcom/android/systemui/statusbar/notification/TransformState;)Z
    .locals 1
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 3
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationAmount"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFullyFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V

    .line 83
    return-void

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public transformViewFullyFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 2
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationAmount"    # F

    .prologue
    .line 86
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    .line 87
    return-void
.end method

.method public transformViewFullyFrom(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 1
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "customTransformation"    # Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
    .param p3, "transformationAmount"    # F

    .prologue
    .line 92
    const/16 v0, 0x11

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    .line 93
    return-void
.end method

.method public transformViewFullyTo(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 2
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationAmount"    # F

    .prologue
    .line 243
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    .line 244
    return-void
.end method

.method public transformViewFullyTo(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 1
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "customTransformation"    # Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
    .param p3, "transformationAmount"    # F

    .prologue
    .line 249
    const/16 v0, 0x11

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    .line 250
    return-void
.end method

.method public transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;F)Z
    .locals 3
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationAmount"    # F

    .prologue
    const/4 v2, 0x0

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 228
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 234
    :cond_0
    return v2

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;F)V

    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFullyTo(Lcom/android/systemui/statusbar/notification/TransformState;F)V

    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method public transformViewVerticalFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 2
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationAmount"    # F

    .prologue
    .line 102
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    .line 103
    return-void
.end method

.method public transformViewVerticalFrom(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 1
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "customTransformation"    # Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
    .param p3, "transformationAmount"    # F

    .prologue
    .line 98
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    .line 99
    return-void
.end method

.method public transformViewVerticalTo(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 2
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationAmount"    # F

    .prologue
    .line 259
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    .line 260
    return-void
.end method

.method public transformViewVerticalTo(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 1
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "customTransformation"    # Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
    .param p3, "transformationAmount"    # F

    .prologue
    .line 255
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    .line 256
    return-void
.end method
