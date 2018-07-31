.class public Lcom/android/systemui/statusbar/stack/ViewState;
.super Ljava/lang/Object;
.source "ViewState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/stack/ViewState$1;,
        Lcom/android/systemui/statusbar/stack/ViewState$2;,
        Lcom/android/systemui/statusbar/stack/ViewState$3;
    }
.end annotation


# static fields
.field protected static final NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

.field private static final SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;


# instance fields
.field public alpha:F

.field public gone:Z

.field public hidden:Z

.field public scaleX:F

.field public scaleY:F

.field public xTranslation:F

.field public yTranslation:F

.field public zTranslation:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/android/systemui/statusbar/stack/ViewState$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/ViewState$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 73
    new-instance v0, Lcom/android/systemui/statusbar/stack/ViewState$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/ViewState$2;-><init>()V

    .line 72
    sput-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    .line 97
    new-instance v0, Lcom/android/systemui/statusbar/stack/ViewState$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/ViewState$3;-><init>()V

    .line 96
    sput-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    .line 127
    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    .line 46
    return-void
.end method

.method public static cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J
    .locals 6
    .param p0, "duration"    # J
    .param p2, "previousAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 658
    move-wide v0, p0

    .line 659
    .local v0, "newDuration":J
    if-eqz p2, :cond_0

    .line 662
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    .line 663
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    .line 662
    sub-long/2addr v2, v4

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 664
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 666
    :cond_0
    return-wide v0
.end method

.method public static getChildTag(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .param p0, "child"    # Landroid/view/View;
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 639
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getFinalTranslationY(Landroid/view/View;)F
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 674
    if-nez p0, :cond_0

    .line 675
    const/4 v1, 0x0

    return v1

    .line 677
    :cond_0
    const v1, 0x7f0a0329

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 678
    .local v0, "yAnimator":Landroid/animation/ValueAnimator;
    if-nez v0, :cond_1

    .line 679
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    return v1

    .line 681
    :cond_1
    const v1, 0x7f0a0327

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method public static getFinalTranslationZ(Landroid/view/View;)F
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 690
    if-nez p0, :cond_0

    .line 691
    const/4 v1, 0x0

    return v1

    .line 693
    :cond_0
    const v1, 0x7f0a032c

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 694
    .local v0, "zAnimator":Landroid/animation/ValueAnimator;
    if-nez v0, :cond_1

    .line 695
    invoke-virtual {p0}, Landroid/view/View;->getTranslationZ()F

    move-result v1

    return v1

    .line 697
    :cond_1
    const v1, 0x7f0a032a

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method private static isAnimating(Landroid/view/View;I)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tag"    # I

    .prologue
    .line 257
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "property"    # Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    .prologue
    .line 261
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;->getAnimatorTag()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAnimatingY(Landroid/view/View;)Z
    .locals 1
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 702
    const v0, 0x7f0a0329

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 18
    .param p1, "child"    # Landroid/view/View;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .prologue
    .line 332
    const v14, 0x7f0a0037

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    .line 333
    .local v11, "previousStartValue":Ljava/lang/Float;
    const v14, 0x7f0a0036

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    .line 334
    .local v10, "previousEndValue":Ljava/lang/Float;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 335
    .local v5, "newEndValue":F
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v5

    if-nez v14, :cond_0

    .line 336
    return-void

    .line 338
    :cond_0
    const v14, 0x7f0a0038

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ObjectAnimator;

    .line 339
    .local v9, "previousAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v3

    .line 340
    .local v3, "filter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    iget-boolean v14, v3, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    if-nez v14, :cond_2

    .line 342
    if-eqz v9, :cond_1

    .line 345
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 346
    .local v13, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    sub-float v12, v5, v14

    .line 347
    .local v12, "relativeDiff":F
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v14

    add-float v8, v14, v12

    .line 348
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

    .line 349
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0a0037

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 350
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0a0036

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 351
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 352
    return-void

    .line 355
    .end local v8    # "newStartValue":F
    .end local v12    # "relativeDiff":F
    .end local v13    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 356
    const/4 v14, 0x0

    cmpl-float v14, v5, v14

    if-nez v14, :cond_2

    .line 357
    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 362
    :cond_2
    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [F

    .line 363
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v16

    const/16 v17, 0x0

    aput v16, v15, v17

    const/16 v16, 0x1

    aput v5, v15, v16

    .line 362
    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 364
    .local v2, "animator":Landroid/animation/ObjectAnimator;
    sget-object v14, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 366
    const/4 v14, 0x2

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 367
    new-instance v14, Lcom/android/systemui/statusbar/stack/ViewState$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1, v5}, Lcom/android/systemui/statusbar/stack/ViewState$4;-><init>(Lcom/android/systemui/statusbar/stack/ViewState;Landroid/view/View;F)V

    invoke-virtual {v2, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 392
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-static {v14, v15, v9}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    .line 393
    .local v6, "newDuration":J
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 394
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_4

    if-eqz v9, :cond_3

    .line 395
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_4

    .line 396
    :cond_3
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v2, v14, v15}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 398
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v4

    .line 399
    .local v4, "listener":Landroid/animation/AnimatorListenerAdapter;
    if-eqz v4, :cond_5

    .line 400
    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 403
    :cond_5
    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 404
    const v14, 0x7f0a0038

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 405
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0a0037

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 406
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0a0036

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 407
    return-void
.end method

.method public static startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0
    .param p0, "animator"    # Landroid/animation/Animator;
    .param p1, "listener"    # Landroid/animation/AnimatorListenerAdapter;

    .prologue
    .line 631
    if-eqz p1, :cond_0

    .line 633
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 635
    :cond_0
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 636
    return-void
.end method

.method private startXTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 22
    .param p1, "child"    # Landroid/view/View;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .prologue
    .line 479
    const v18, 0x7f0a0325

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    .line 480
    .local v15, "previousStartValue":Ljava/lang/Float;
    const v18, 0x7f0a0324

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    .line 481
    .local v14, "previousEndValue":Ljava/lang/Float;
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    .line 482
    .local v9, "newEndValue":F
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v18

    cmpl-float v18, v18, v9

    if-nez v18, :cond_0

    .line 483
    return-void

    .line 485
    :cond_0
    const v18, 0x7f0a0326

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/animation/ObjectAnimator;

    .line 486
    .local v13, "previousAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v6

    .line 487
    .local v6, "filter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    iget-boolean v0, v6, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateX:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    .line 489
    if-eqz v13, :cond_1

    .line 492
    invoke-virtual {v13}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    .line 493
    .local v17, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v18

    sub-float v16, v9, v18

    .line 494
    .local v16, "relativeDiff":F
    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v18

    add-float v12, v18, v16

    .line 495
    .local v12, "newStartValue":F
    const/16 v18, 0x0

    aget-object v18, v17, v18

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v12, v19, v20

    const/16 v20, 0x1

    aput v9, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 496
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const v19, 0x7f0a0325

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 497
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const v19, 0x7f0a0324

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 498
    invoke-virtual {v13}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 499
    return-void

    .line 502
    .end local v12    # "newStartValue":F
    .end local v16    # "relativeDiff":F
    .end local v17    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 503
    return-void

    .line 507
    :cond_2
    sget-object v18, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    .line 508
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v20

    const/16 v21, 0x0

    aput v20, v19, v21

    const/16 v20, 0x1

    aput v9, v19, v20

    .line 507
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 510
    .local v4, "animator":Landroid/animation/ObjectAnimator;
    sget-object v18, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 509
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getCustomInterpolator(Landroid/view/View;Landroid/util/Property;)Landroid/view/animation/Interpolator;

    move-result-object v5

    .line 511
    .local v5, "customInterpolator":Landroid/view/animation/Interpolator;
    if-eqz v5, :cond_6

    move-object v7, v5

    .line 513
    .local v7, "interpolator":Landroid/view/animation/Interpolator;
    :goto_0
    invoke-virtual {v4, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 514
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v13}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v10

    .line 515
    .local v10, "newDuration":J
    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 516
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_4

    if-eqz v13, :cond_3

    .line 517
    invoke-virtual {v13}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v18

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-nez v18, :cond_4

    .line 518
    :cond_3
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 520
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v8

    .line 521
    .local v8, "listener":Landroid/animation/AnimatorListenerAdapter;
    if-eqz v8, :cond_5

    .line 522
    invoke-virtual {v4, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 525
    :cond_5
    new-instance v18, Lcom/android/systemui/statusbar/stack/ViewState$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/ViewState$6;-><init>(Lcom/android/systemui/statusbar/stack/ViewState;Landroid/view/View;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 533
    invoke-static {v4, v8}, Lcom/android/systemui/statusbar/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 534
    const v18, 0x7f0a0326

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 535
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const v19, 0x7f0a0325

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 536
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const v19, 0x7f0a0324

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 537
    return-void

    .line 512
    .end local v7    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v8    # "listener":Landroid/animation/AnimatorListenerAdapter;
    .end local v10    # "newDuration":J
    :cond_6
    sget-object v7, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .restart local v7    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0
.end method

.method private startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 22
    .param p1, "child"    # Landroid/view/View;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .prologue
    .line 544
    const v18, 0x7f0a0328

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    .line 545
    .local v15, "previousStartValue":Ljava/lang/Float;
    const v18, 0x7f0a0327

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    .line 548
    .local v14, "previousEndValue":Ljava/lang/Float;
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v18, p1

    .line 550
    check-cast v18, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v18, p1

    .line 552
    check-cast v18, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v18, p1

    check-cast v18, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSticky()Z

    move-result v18

    .line 550
    if-eqz v18, :cond_1

    :cond_0
    move-object/from16 v18, p1

    .line 553
    check-cast v18, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isTopHeadsUp()Z

    move-result v18

    if-nez v18, :cond_1

    .line 554
    const-string/jumbo v18, "ViewState"

    const-string/jumbo v19, "try to remove sticky notification"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "child":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->removeFromHeadsup()V

    .line 556
    return-void

    .line 563
    .restart local p1    # "child":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 564
    .local v9, "newEndValue":F
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v18

    cmpl-float v18, v18, v9

    if-nez v18, :cond_2

    .line 565
    return-void

    .line 567
    :cond_2
    const v18, 0x7f0a0329

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/animation/ObjectAnimator;

    .line 568
    .local v13, "previousAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v6

    .line 570
    .local v6, "filter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->shouldAnimateY(Landroid/view/View;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 572
    if-eqz v13, :cond_3

    .line 575
    invoke-virtual {v13}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    .line 576
    .local v17, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v18

    sub-float v16, v9, v18

    .line 577
    .local v16, "relativeDiff":F
    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v18

    add-float v12, v18, v16

    .line 578
    .local v12, "newStartValue":F
    const/16 v18, 0x0

    aget-object v18, v17, v18

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v12, v19, v20

    const/16 v20, 0x1

    aput v9, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 579
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const v19, 0x7f0a0328

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 580
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const v19, 0x7f0a0327

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 581
    invoke-virtual {v13}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 582
    return-void

    .line 585
    .end local v12    # "newStartValue":F
    .end local v16    # "relativeDiff":F
    .end local v17    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 586
    return-void

    .line 590
    :cond_4
    sget-object v18, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    .line 591
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v20

    const/16 v21, 0x0

    aput v20, v19, v21

    const/16 v20, 0x1

    aput v9, v19, v20

    .line 590
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 593
    .local v4, "animator":Landroid/animation/ObjectAnimator;
    sget-object v18, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 592
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getCustomInterpolator(Landroid/view/View;Landroid/util/Property;)Landroid/view/animation/Interpolator;

    move-result-object v5

    .line 594
    .local v5, "customInterpolator":Landroid/view/animation/Interpolator;
    if-eqz v5, :cond_8

    move-object v7, v5

    .line 596
    .local v7, "interpolator":Landroid/view/animation/Interpolator;
    :goto_0
    invoke-virtual {v4, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 597
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v13}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v10

    .line 598
    .local v10, "newDuration":J
    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 599
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_6

    if-eqz v13, :cond_5

    .line 600
    invoke-virtual {v13}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v18

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-nez v18, :cond_6

    .line 601
    :cond_5
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 603
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v8

    .line 604
    .local v8, "listener":Landroid/animation/AnimatorListenerAdapter;
    if-eqz v8, :cond_7

    .line 605
    invoke-virtual {v4, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 608
    :cond_7
    new-instance v18, Lcom/android/systemui/statusbar/stack/ViewState$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/ViewState$7;-><init>(Lcom/android/systemui/statusbar/stack/ViewState;Landroid/view/View;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 618
    invoke-static {v4, v8}, Lcom/android/systemui/statusbar/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 619
    const v18, 0x7f0a0329

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 620
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const v19, 0x7f0a0328

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 621
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const v19, 0x7f0a0327

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 622
    return-void

    .line 595
    .end local v7    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v8    # "listener":Landroid/animation/AnimatorListenerAdapter;
    .end local v10    # "newDuration":J
    :cond_8
    sget-object v7, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .restart local v7    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0
.end method

.method private startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 18
    .param p1, "child"    # Landroid/view/View;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .prologue
    .line 419
    const v14, 0x7f0a032b

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    .line 420
    .local v11, "previousStartValue":Ljava/lang/Float;
    const v14, 0x7f0a032a

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    .line 421
    .local v10, "previousEndValue":Ljava/lang/Float;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    .line 422
    .local v5, "newEndValue":F
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v5

    if-nez v14, :cond_0

    .line 423
    return-void

    .line 425
    :cond_0
    const v14, 0x7f0a032c

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ObjectAnimator;

    .line 426
    .local v9, "previousAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v3

    .line 427
    .local v3, "filter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    iget-boolean v14, v3, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    if-nez v14, :cond_2

    .line 429
    if-eqz v9, :cond_1

    .line 432
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 433
    .local v13, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    sub-float v12, v5, v14

    .line 434
    .local v12, "relativeDiff":F
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v14

    add-float v8, v14, v12

    .line 435
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

    .line 436
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0a032b

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 437
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0a032a

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 438
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 439
    return-void

    .line 442
    .end local v8    # "newStartValue":F
    .end local v12    # "relativeDiff":F
    .end local v13    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationZ(F)V

    .line 446
    :cond_2
    sget-object v14, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [F

    .line 447
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationZ()F

    move-result v16

    const/16 v17, 0x0

    aput v16, v15, v17

    const/16 v16, 0x1

    aput v5, v15, v16

    .line 446
    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 448
    .local v2, "animator":Landroid/animation/ObjectAnimator;
    sget-object v14, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 449
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-static {v14, v15, v9}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    .line 450
    .local v6, "newDuration":J
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 451
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_4

    if-eqz v9, :cond_3

    .line 452
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_4

    .line 453
    :cond_3
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v2, v14, v15}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 455
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v4

    .line 456
    .local v4, "listener":Landroid/animation/AnimatorListenerAdapter;
    if-eqz v4, :cond_5

    .line 457
    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 460
    :cond_5
    new-instance v14, Lcom/android/systemui/statusbar/stack/ViewState$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState$5;-><init>(Lcom/android/systemui/statusbar/stack/ViewState;Landroid/view/View;)V

    invoke-virtual {v2, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 468
    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 469
    const v14, 0x7f0a032c

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 470
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationZ()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0a032b

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 471
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0a032a

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 472
    return-void
.end method

.method private updateAlphaAnimation(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 328
    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 329
    return-void
.end method

.method private updateAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;F)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "property"    # Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;
    .param p3, "endValue"    # F

    .prologue
    .line 415
    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-static {p1, p2, p3, v0}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;FLcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 416
    return-void
.end method

.method private updateAnimationX(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 475
    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->startXTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 476
    return-void
.end method

.method private updateAnimationY(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 540
    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 541
    return-void
.end method

.method private updateAnimationZ(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 410
    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 411
    return-void
.end method


# virtual methods
.method protected abortAnimation(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animatorTag"    # I

    .prologue
    .line 643
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 644
    .local v0, "previousAnimator":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 647
    :cond_0
    return-void
.end method

.method public animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animationProperties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    const/4 v3, 0x1

    .line 272
    .local v3, "wasVisible":Z
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 273
    .local v0, "alpha":F
    if-nez v3, :cond_1

    cmpl-float v4, v0, v5

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v4

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    .line 274
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/ViewState;->gone:Z

    xor-int/lit8 v4, v4, 0x1

    .line 273
    if-eqz v4, :cond_1

    .line 274
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    xor-int/lit8 v4, v4, 0x1

    .line 273
    if-eqz v4, :cond_1

    .line 275
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 277
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v2

    .line 278
    .local v2, "childAlpha":F
    iget v4, p0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_4

    const/4 v1, 0x1

    .line 279
    .local v1, "alphaChanging":Z
    :goto_1
    instance-of v4, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v4, :cond_2

    move-object v4, p1

    .line 281
    check-cast v4, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->willBeGone()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    and-int/2addr v1, v4

    .line 285
    .end local v1    # "alphaChanging":Z
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_5

    .line 286
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->startXTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 292
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_6

    .line 293
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 299
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_7

    .line 300
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 306
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_8

    .line 307
    sget-object v4, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    invoke-static {p1, v4, v5, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;FLcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 313
    :goto_5
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_9

    .line 314
    sget-object v4, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    invoke-static {p1, v4, v5, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;FLcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 320
    :goto_6
    if-eqz v1, :cond_a

    .line 321
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 325
    :goto_7
    return-void

    .line 271
    .end local v0    # "alpha":F
    .end local v2    # "childAlpha":F
    .end local v3    # "wasVisible":Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "wasVisible":Z
    goto/16 :goto_0

    .line 278
    .restart local v0    # "alpha":F
    .restart local v2    # "childAlpha":F
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "alphaChanging":Z
    goto :goto_1

    .line 288
    .end local v1    # "alphaChanging":Z
    :cond_5
    const v4, 0x7f0a0326

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_2

    .line 295
    :cond_6
    const v4, 0x7f0a0329

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_3

    .line 302
    :cond_7
    const v4, 0x7f0a032c

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_4

    .line 309
    :cond_8
    sget-object v4, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;->getAnimatorTag()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_5

    .line 316
    :cond_9
    sget-object v4, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;->getAnimatorTag()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_6

    .line 323
    :cond_a
    const v4, 0x7f0a0038

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_7
.end method

.method public applyToView(Landroid/view/View;)V
    .locals 19
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 155
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->gone:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 157
    return-void

    .line 161
    :cond_0
    const v17, 0x7f0a0326

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v7

    .line 162
    .local v7, "animatingX":Z
    if-eqz v7, :cond_a

    .line 163
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/ViewState;->updateAnimationX(Landroid/view/View;)V

    .line 169
    :cond_1
    :goto_0
    const v17, 0x7f0a0329

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v8

    .line 171
    .local v8, "animatingY":Z
    if-eqz v8, :cond_b

    .line 172
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/ViewState;->updateAnimationY(Landroid/view/View;)V

    .line 178
    :cond_2
    :goto_1
    const v17, 0x7f0a032c

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v9

    .line 179
    .local v9, "animatingZ":Z
    if-eqz v9, :cond_c

    .line 180
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/ViewState;->updateAnimationZ(Landroid/view/View;)V

    .line 186
    :cond_3
    :goto_2
    sget-object v17, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;)Z

    move-result v5

    .line 187
    .local v5, "animatingScaleX":Z
    if-eqz v5, :cond_d

    .line 188
    sget-object v17, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/stack/ViewState;->updateAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;F)V

    .line 194
    :cond_4
    :goto_3
    sget-object v17, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;)Z

    move-result v6

    .line 195
    .local v6, "animatingScaleY":Z
    if-eqz v6, :cond_e

    .line 196
    sget-object v17, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/stack/ViewState;->updateAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;F)V

    .line 201
    :cond_5
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v16

    .line 202
    .local v16, "oldVisibility":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_f

    .line 203
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    move/from16 v17, v0

    if-eqz v17, :cond_10

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_6

    if-eqz v16, :cond_10

    :cond_6
    const/4 v11, 0x1

    .line 204
    .local v11, "becomesInvisible":Z
    :goto_5
    const v17, 0x7f0a0038

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v4

    .line 205
    .local v4, "animatingAlpha":Z
    if-eqz v4, :cond_11

    .line 206
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/ViewState;->updateAlphaAnimation(Landroid/view/View;)V

    .line 225
    :cond_7
    :goto_6
    if-eqz v11, :cond_16

    const/4 v15, 0x4

    .line 226
    .local v15, "newVisibility":I
    :goto_7
    move/from16 v0, v16

    if-eq v15, v0, :cond_9

    .line 227
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/systemui/statusbar/ExpandableView;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v17, p1

    check-cast v17, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/ExpandableView;->willBeGone()Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_9

    .line 229
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 232
    :cond_9
    return-void

    .line 164
    .end local v4    # "animatingAlpha":Z
    .end local v5    # "animatingScaleX":Z
    .end local v6    # "animatingScaleY":Z
    .end local v8    # "animatingY":Z
    .end local v9    # "animatingZ":Z
    .end local v11    # "becomesInvisible":Z
    .end local v15    # "newVisibility":I
    .end local v16    # "oldVisibility":I
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_1

    .line 165
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_0

    .line 173
    .restart local v8    # "animatingY":Z
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_2

    .line 174
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_1

    .line 181
    .restart local v9    # "animatingZ":Z
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationZ()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_3

    .line 182
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    goto/16 :goto_2

    .line 189
    .restart local v5    # "animatingScaleX":Z
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_4

    .line 190
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    goto/16 :goto_3

    .line 197
    .restart local v6    # "animatingScaleY":Z
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleY()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_5

    .line 198
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_4

    .line 202
    .restart local v16    # "oldVisibility":I
    :cond_f
    const/4 v11, 0x1

    .restart local v11    # "becomesInvisible":Z
    goto/16 :goto_5

    .line 203
    .end local v11    # "becomesInvisible":Z
    :cond_10
    const/4 v11, 0x0

    .restart local v11    # "becomesInvisible":Z
    goto/16 :goto_5

    .line 207
    .restart local v4    # "animatingAlpha":Z
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_7

    .line 209
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v17, v17, v18

    if-nez v17, :cond_13

    const/4 v10, 0x1

    .line 210
    .local v10, "becomesFullyVisible":Z
    :goto_8
    if-nez v11, :cond_14

    xor-int/lit8 v17, v10, 0x1

    if-eqz v17, :cond_14

    .line 211
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v14

    .line 212
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayerType()I

    move-result v12

    .line 213
    .local v12, "layerType":I
    if-eqz v14, :cond_15

    .line 214
    const/4 v13, 0x2

    .line 216
    .local v13, "newLayerType":I
    :goto_a
    if-eq v12, v13, :cond_12

    .line 217
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 221
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_6

    .line 209
    .end local v10    # "becomesFullyVisible":Z
    .end local v12    # "layerType":I
    .end local v13    # "newLayerType":I
    :cond_13
    const/4 v10, 0x0

    .restart local v10    # "becomesFullyVisible":Z
    goto :goto_8

    .line 210
    :cond_14
    const/4 v14, 0x0

    .local v14, "newLayerTypeIsHardware":Z
    goto :goto_9

    .line 215
    .end local v14    # "newLayerTypeIsHardware":Z
    .restart local v12    # "layerType":I
    :cond_15
    const/4 v13, 0x0

    .restart local v13    # "newLayerType":I
    goto :goto_a

    .line 225
    .end local v10    # "becomesFullyVisible":Z
    .end local v12    # "layerType":I
    .end local v13    # "newLayerType":I
    :cond_16
    const/4 v15, 0x0

    .restart local v15    # "newVisibility":I
    goto/16 :goto_7
.end method

.method public cancelAnimations(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 706
    const v1, 0x7f0a0326

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 707
    .local v0, "animator":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 710
    :cond_0
    const v1, 0x7f0a0329

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "animator":Landroid/animation/Animator;
    check-cast v0, Landroid/animation/Animator;

    .line 711
    .restart local v0    # "animator":Landroid/animation/Animator;
    if-eqz v0, :cond_1

    .line 712
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 714
    :cond_1
    const v1, 0x7f0a032c

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "animator":Landroid/animation/Animator;
    check-cast v0, Landroid/animation/Animator;

    .line 715
    .restart local v0    # "animator":Landroid/animation/Animator;
    if-eqz v0, :cond_2

    .line 716
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 718
    :cond_2
    const v1, 0x7f0a0038

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "animator":Landroid/animation/Animator;
    check-cast v0, Landroid/animation/Animator;

    .line 719
    .restart local v0    # "animator":Landroid/animation/Animator;
    if-eqz v0, :cond_3

    .line 720
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 722
    :cond_3
    return-void
.end method

.method public copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V
    .locals 1
    .param p1, "viewState"    # Lcom/android/systemui/statusbar/stack/ViewState;

    .prologue
    .line 130
    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 131
    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    .line 132
    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 133
    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    .line 134
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->gone:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->gone:Z

    .line 135
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    .line 136
    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    .line 137
    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    .line 138
    return-void
.end method

.method public initFrom(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->gone:Z

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    .line 149
    return-void

    :cond_0
    move v0, v2

    .line 145
    goto :goto_0

    :cond_1
    move v1, v2

    .line 146
    goto :goto_1
.end method

.method public isAnimating(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 235
    const v0, 0x7f0a0326

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    return v1

    .line 238
    :cond_0
    const v0, 0x7f0a0329

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    return v1

    .line 241
    :cond_1
    const v0, 0x7f0a032c

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    return v1

    .line 244
    :cond_2
    const v0, 0x7f0a0038

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 245
    return v1

    .line 247
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 248
    return v1

    .line 250
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 251
    return v1

    .line 253
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method protected onYTranslationAnimationFinished(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 625
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->gone:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 626
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 628
    :cond_0
    return-void
.end method
