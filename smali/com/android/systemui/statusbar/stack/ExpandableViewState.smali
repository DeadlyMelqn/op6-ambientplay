.class public Lcom/android/systemui/statusbar/stack/ExpandableViewState;
.super Lcom/android/systemui/statusbar/stack/ViewState;
.source "ExpandableViewState.java"


# instance fields
.field public belowSpeedBump:Z

.field public clipTopAmount:I

.field public dark:Z

.field public dimmed:Z

.field public height:I

.field public hideSensitive:Z

.field public inShelf:Z

.field public location:I

.field public notGoneIndex:I

.field public shadowAlpha:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    return-void
.end method

.method public static getFinalActualHeight(Lcom/android/systemui/statusbar/ExpandableView;)I
    .locals 2
    .param p0, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 445
    if-nez p0, :cond_0

    .line 446
    const/4 v1, 0x0

    return v1

    .line 448
    :cond_0
    const v1, 0x7f0a0113

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 449
    .local v0, "heightAnimator":Landroid/animation/ValueAnimator;
    if-nez v0, :cond_1

    .line 450
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    return v1

    .line 452
    :cond_1
    const v1, 0x7f0a0111

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private startHeightAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 18
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .prologue
    .line 235
    const v14, 0x7f0a0112

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 236
    .local v11, "previousStartValue":Ljava/lang/Integer;
    const v14, 0x7f0a0111

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 237
    .local v10, "previousEndValue":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    .line 238
    .local v5, "newEndValue":I
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v14, v5, :cond_0

    .line 239
    return-void

    .line 241
    :cond_0
    const v14, 0x7f0a0113

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ValueAnimator;

    .line 242
    .local v9, "previousAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v3

    .line 243
    .local v3, "filter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    iget-boolean v14, v3, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    if-nez v14, :cond_2

    .line 245
    if-eqz v9, :cond_1

    .line 248
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 249
    .local v13, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sub-int v12, v5, v14

    .line 250
    .local v12, "relativeDiff":I
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int v8, v14, v12

    .line 251
    .local v8, "newStartValue":I
    const/4 v14, 0x0

    aget-object v14, v13, v14

    const/4 v15, 0x2

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v8, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 252
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v15, 0x7f0a0112

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 253
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v15, 0x7f0a0111

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 254
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 255
    return-void

    .line 258
    .end local v8    # "newStartValue":I
    .end local v12    # "relativeDiff":I
    .end local v13    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    .line 259
    return-void

    .line 263
    :cond_2
    const/4 v14, 0x2

    new-array v14, v14, [I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v15

    const/16 v16, 0x0

    aput v15, v14, v16

    const/4 v15, 0x1

    aput v5, v14, v15

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 264
    .local v2, "animator":Landroid/animation/ValueAnimator;
    new-instance v14, Lcom/android/systemui/statusbar/stack/ExpandableViewState$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState$1;-><init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 271
    sget-object v14, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v14}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 272
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-static {v14, v15, v9}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    .line 273
    .local v6, "newDuration":J
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 274
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_4

    if-eqz v9, :cond_3

    .line 275
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_4

    .line 276
    :cond_3
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v2, v14, v15}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 278
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v4

    .line 279
    .local v4, "listener":Landroid/animation/AnimatorListenerAdapter;
    if-eqz v4, :cond_5

    .line 280
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 283
    :cond_5
    new-instance v14, Lcom/android/systemui/statusbar/stack/ExpandableViewState$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState$2;-><init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v14}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 308
    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 309
    const v14, 0x7f0a0113

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 310
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v15, 0x7f0a0112

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 311
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v15, 0x7f0a0111

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 312
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeightAnimating(Z)V

    .line 313
    return-void
.end method

.method private startInsetAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 18
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .prologue
    .line 379
    const v14, 0x7f0a029d

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 380
    .local v11, "previousStartValue":Ljava/lang/Integer;
    const v14, 0x7f0a029c

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 381
    .local v10, "previousEndValue":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    .line 382
    .local v5, "newEndValue":I
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v14, v5, :cond_0

    .line 383
    return-void

    .line 385
    :cond_0
    const v14, 0x7f0a029e

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ValueAnimator;

    .line 386
    .local v9, "previousAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v3

    .line 387
    .local v3, "filter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    iget-boolean v14, v3, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    if-nez v14, :cond_2

    .line 389
    if-eqz v9, :cond_1

    .line 392
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 393
    .local v13, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sub-int v12, v5, v14

    .line 394
    .local v12, "relativeDiff":I
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int v8, v14, v12

    .line 395
    .local v8, "newStartValue":I
    const/4 v14, 0x0

    aget-object v14, v13, v14

    const/4 v15, 0x2

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v8, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 396
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v15, 0x7f0a029d

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 397
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v15, 0x7f0a029c

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 398
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 399
    return-void

    .line 402
    .end local v8    # "newStartValue":I
    .end local v12    # "relativeDiff":I
    .end local v13    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setClipTopAmount(I)V

    .line 403
    return-void

    .line 407
    :cond_2
    const/4 v14, 0x2

    new-array v14, v14, [I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v15

    const/16 v16, 0x0

    aput v15, v14, v16

    const/4 v15, 0x1

    aput v5, v14, v15

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 408
    .local v2, "animator":Landroid/animation/ValueAnimator;
    new-instance v14, Lcom/android/systemui/statusbar/stack/ExpandableViewState$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState$5;-><init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 414
    sget-object v14, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v14}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 415
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-static {v14, v15, v9}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    .line 416
    .local v6, "newDuration":J
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 417
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_4

    if-eqz v9, :cond_3

    .line 418
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_4

    .line 419
    :cond_3
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v2, v14, v15}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 421
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v4

    .line 422
    .local v4, "listener":Landroid/animation/AnimatorListenerAdapter;
    if-eqz v4, :cond_5

    .line 423
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 426
    :cond_5
    new-instance v14, Lcom/android/systemui/statusbar/stack/ExpandableViewState$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState$6;-><init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v14}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 434
    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 435
    const v14, 0x7f0a029e

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 436
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v15, 0x7f0a029d

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 437
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v15, 0x7f0a029c

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 438
    return-void
.end method

.method private startShadowAlphaAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 18
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .prologue
    .line 317
    const v14, 0x7f0a0260

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    .line 318
    .local v11, "previousStartValue":Ljava/lang/Float;
    const v14, 0x7f0a025f

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    .line 319
    .local v10, "previousEndValue":Ljava/lang/Float;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    .line 320
    .local v5, "newEndValue":F
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v5

    if-nez v14, :cond_0

    .line 321
    return-void

    .line 323
    :cond_0
    const v14, 0x7f0a0261

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ValueAnimator;

    .line 324
    .local v9, "previousAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v3

    .line 325
    .local v3, "filter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    iget-boolean v14, v3, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha:Z

    if-nez v14, :cond_2

    .line 327
    if-eqz v9, :cond_1

    .line 330
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 331
    .local v13, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    sub-float v12, v5, v14

    .line 332
    .local v12, "relativeDiff":F
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v14

    add-float v8, v14, v12

    .line 333
    .local v8, "newStartValue":F
    const/4 v14, 0x0

    aget-object v14, v13, v14

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v8, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 334
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0a0260

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 335
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0a025f

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 336
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 337
    return-void

    .line 340
    .end local v8    # "newStartValue":F
    .end local v12    # "relativeDiff":F
    .end local v13    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setShadowAlpha(F)V

    .line 341
    return-void

    .line 345
    :cond_2
    const/4 v14, 0x2

    new-array v14, v14, [F

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getShadowAlpha()F

    move-result v15

    const/16 v16, 0x0

    aput v15, v14, v16

    const/4 v15, 0x1

    aput v5, v14, v15

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 346
    .local v2, "animator":Landroid/animation/ValueAnimator;
    new-instance v14, Lcom/android/systemui/statusbar/stack/ExpandableViewState$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState$3;-><init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 352
    sget-object v14, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v14}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 353
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-static {v14, v15, v9}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    .line 354
    .local v6, "newDuration":J
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 355
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_4

    if-eqz v9, :cond_3

    .line 356
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_4

    .line 357
    :cond_3
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v2, v14, v15}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 359
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v4

    .line 360
    .local v4, "listener":Landroid/animation/AnimatorListenerAdapter;
    if-eqz v4, :cond_5

    .line 361
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 364
    :cond_5
    new-instance v14, Lcom/android/systemui/statusbar/stack/ExpandableViewState$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState$4;-><init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v14}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 372
    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 373
    const v14, 0x7f0a0261

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 374
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getShadowAlpha()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0a0260

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 375
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0a025f

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 376
    return-void
.end method


# virtual methods
.method public animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .prologue
    .line 183
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 184
    instance-of v2, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-nez v2, :cond_0

    .line 185
    return-void

    :cond_0
    move-object v1, p1

    .line 187
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 188
    .local v1, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v0

    .line 191
    .local v0, "animationFilter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    iget v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 192
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startHeightAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 198
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getShadowAlpha()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    .line 199
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startShadowAlphaAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 205
    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v3

    if-eq v2, v3, :cond_5

    .line 206
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startInsetAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 212
    :goto_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dimmed:Z

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setDimmed(ZZ)V

    .line 215
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->belowSpeedBump:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setBelowSpeedBump(Z)V

    .line 218
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    .line 219
    iget-wide v4, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    iget-wide v6, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    .line 218
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/ExpandableView;->setHideSensitive(ZZJJ)V

    .line 222
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    iget-wide v4, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setDark(ZZJ)V

    .line 224
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->wasAdded(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 225
    iget-wide v2, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    iget-wide v4, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/ExpandableView;->performAddAnimation(JJ)V

    .line 228
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->isInShelf()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    if-eqz v2, :cond_2

    .line 229
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTransformingInShelf(Z)V

    .line 231
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setInShelf(Z)V

    .line 232
    return-void

    .line 194
    :cond_3
    const v2, 0x7f0a0113

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_0

    .line 201
    :cond_4
    const v2, 0x7f0a0261

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_1

    .line 208
    :cond_5
    const v2, 0x7f0a029e

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_2
.end method

.method public applyToView(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 137
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 138
    instance-of v2, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v2, :cond_3

    move-object v1, p1

    .line 139
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 141
    .local v1, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v0

    .line 142
    .local v0, "height":I
    iget v8, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    .line 145
    .local v8, "newHeight":I
    if-eq v0, v8, :cond_0

    .line 146
    invoke-virtual {v1, v8, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    .line 149
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getShadowAlpha()F

    move-result v11

    .line 150
    .local v11, "shadowAlpha":F
    iget v9, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    .line 153
    .local v9, "newShadowAlpha":F
    cmpl-float v2, v11, v9

    if-eqz v2, :cond_1

    .line 154
    invoke-virtual {v1, v9}, Lcom/android/systemui/statusbar/ExpandableView;->setShadowAlpha(F)V

    .line 158
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dimmed:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setDimmed(ZZ)V

    .line 162
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    move-wide v6, v4

    .line 161
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/ExpandableView;->setHideSensitive(ZZJJ)V

    .line 165
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->belowSpeedBump:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setBelowSpeedBump(Z)V

    .line 168
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setDark(ZZJ)V

    .line 171
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v2

    int-to-float v10, v2

    .line 172
    .local v10, "oldClipTopAmount":F
    iget v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    int-to-float v2, v2

    cmpl-float v2, v10, v2

    if-eqz v2, :cond_2

    .line 173
    iget v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setClipTopAmount(I)V

    .line 176
    :cond_2
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setTransformingInShelf(Z)V

    .line 177
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setInShelf(Z)V

    .line 179
    .end local v0    # "height":I
    .end local v1    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v8    # "newHeight":I
    .end local v9    # "newShadowAlpha":F
    .end local v10    # "oldClipTopAmount":F
    .end local v11    # "shadowAlpha":F
    :cond_3
    return-void
.end method

.method public copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V
    .locals 2
    .param p1, "viewState"    # Lcom/android/systemui/statusbar/stack/ViewState;

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V

    .line 118
    instance-of v1, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 119
    check-cast v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    .line 120
    .local v0, "svs":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    iget v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    iput v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    .line 121
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dimmed:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dimmed:Z

    .line 122
    iget v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    iput v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    .line 123
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    .line 124
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    .line 125
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->belowSpeedBump:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->belowSpeedBump:Z

    .line 126
    iget v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    iput v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    .line 127
    iget v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    iput v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    .line 128
    iget v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    iput v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    .line 130
    .end local v0    # "svs":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_0
    return-void
.end method
