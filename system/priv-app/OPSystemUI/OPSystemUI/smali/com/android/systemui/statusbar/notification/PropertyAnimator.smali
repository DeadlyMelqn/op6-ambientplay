.class public Lcom/android/systemui/statusbar/notification/PropertyAnimator;
.super Ljava/lang/Object;
.source "PropertyAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_notification_PropertyAnimator_3329(Landroid/util/Property;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p2, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 74
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Float;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {p0, p1, v0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;FLcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 26
    .param p1, "animatableProperty"    # Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;
    .param p2, "newEndValue"    # F
    .param p3, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;",
            "F",
            "Lcom/android/systemui/statusbar/stack/AnimationProperties;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "view":Landroid/view/View;, "TT;"
    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;->getProperty()Landroid/util/Property;

    move-result-object v19

    .line 41
    .local v19, "property":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Float;>;"
    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;->getAnimationStartTag()I

    move-result v5

    .line 42
    .local v5, "animationStartTag":I
    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;->getAnimationEndTag()I

    move-result v4

    .line 43
    .local v4, "animationEndTag":I
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Float;

    .line 44
    .local v18, "previousStartValue":Ljava/lang/Float;
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Float;

    .line 45
    .local v17, "previousEndValue":Ljava/lang/Float;
    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v22

    cmpl-float v22, v22, p2

    if-nez v22, :cond_0

    .line 46
    return-void

    .line 48
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;->getAnimatorTag()I

    move-result v7

    .line 49
    .local v7, "animatorTag":I
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/animation/ValueAnimator;

    .line 50
    .local v16, "previousAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v10

    .line 51
    .local v10, "filter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->shouldAnimateProperty(Landroid/util/Property;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 53
    if-eqz v16, :cond_1

    .line 56
    invoke-virtual/range {v16 .. v16}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v21

    .line 57
    .local v21, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v22

    sub-float v20, p2, v22

    .line 58
    .local v20, "relativeDiff":F
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v22

    add-float v13, v22, v20

    .line 59
    .local v13, "newStartValue":F
    const/16 v22, 0x0

    aget-object v22, v21, v22

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput v13, v23, v24

    const/16 v24, 0x1

    aput p2, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 60
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 61
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 62
    invoke-virtual/range {v16 .. v16}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v22

    move-object/from16 v0, v16

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 63
    return-void

    .line 66
    .end local v13    # "newStartValue":F
    .end local v20    # "relativeDiff":F
    .end local v21    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    return-void

    .line 71
    :cond_2
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    .line 72
    .local v8, "currentValue":Ljava/lang/Float;
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v23

    const/16 v24, 0x0

    aput v23, v22, v24

    const/16 v23, 0x1

    aput p2, v22, v23

    invoke-static/range {v22 .. v22}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 74
    .local v6, "animator":Landroid/animation/ValueAnimator;
    new-instance v22, Lcom/android/systemui/statusbar/notification/-$Lambda$Sc7qwEXzLMFEpUxWj_a1qYn-XGQ;

    const/16 v23, 0x3

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v19

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/notification/-$Lambda$Sc7qwEXzLMFEpUxWj_a1qYn-XGQ;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    .line 73
    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 75
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getCustomInterpolator(Landroid/view/View;Landroid/util/Property;)Landroid/view/animation/Interpolator;

    move-result-object v9

    .line 76
    .local v9, "customInterpolator":Landroid/view/animation/Interpolator;
    if-eqz v9, :cond_6

    move-object v11, v9

    .line 78
    .local v11, "interpolator":Landroid/view/animation/Interpolator;
    :goto_0
    invoke-virtual {v6, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 79
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v14

    .line 81
    .local v14, "newDuration":J
    invoke-virtual {v6, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 82
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-lez v22, :cond_4

    if-eqz v16, :cond_3

    .line 83
    invoke-virtual/range {v16 .. v16}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v22

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-nez v22, :cond_4

    .line 84
    :cond_3
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 86
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v12

    .line 87
    .local v12, "listener":Landroid/animation/AnimatorListenerAdapter;
    if-eqz v12, :cond_5

    .line 88
    invoke-virtual {v6, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 91
    :cond_5
    new-instance v22, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7, v5, v4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;-><init>(Landroid/view/View;III)V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 99
    invoke-static {v6, v12}, Lcom/android/systemui/statusbar/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 100
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 101
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 102
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 103
    return-void

    .line 77
    .end local v11    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v12    # "listener":Landroid/animation/AnimatorListenerAdapter;
    .end local v14    # "newDuration":J
    :cond_6
    sget-object v11, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .restart local v11    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0
.end method
