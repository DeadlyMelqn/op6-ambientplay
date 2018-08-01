.class public Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
.super Lcom/android/systemui/statusbar/stack/ViewState;
.source "NotificationIconContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IconState"
.end annotation


# instance fields
.field public clampedAppearAmount:F

.field public customTransformHeight:I

.field public iconAppearAmount:F

.field public iconColor:I

.field public isLastExpandIcon:Z

.field public justAdded:Z

.field private justReplaced:Z

.field public needsCannedAnimation:Z

.field public noAnimations:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field public translateContent:Z

.field public useFullTransitionAmount:Z

.field public useLinearTransitionAmount:Z

.field public visibleState:I


# direct methods
.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justReplaced:Z

    return p1
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 530
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    .line 532
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 533
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    .line 535
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    .line 541
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    .line 544
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    .line 530
    return-void
.end method

.method private shouldVibrateChange(Z)Z
    .locals 2
    .param p1, "inShelfChanged"    # Z

    .prologue
    const/4 v1, 0x0

    .line 626
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get8(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    return v1

    .line 629
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    if-eqz v0, :cond_1

    .line 630
    return v1

    .line 632
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get4(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 633
    return v1

    .line 635
    :cond_2
    if-nez p1, :cond_3

    .line 636
    return v1

    .line 638
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get6(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isHapticFeedbackDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 639
    return v1

    .line 641
    :cond_4
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public applyToView(Landroid/view/View;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-wide/16 v12, 0x64

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v7, 0x0

    .line 548
    instance-of v8, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v8, :cond_8

    move-object v4, p1

    .line 549
    check-cast v4, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 550
    .local v4, "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    const/4 v0, 0x0

    .line 551
    .local v0, "animate":Z
    const/4 v2, 0x0

    .line 552
    .local v2, "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get4(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get7(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_9

    .line 553
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    xor-int/lit8 v3, v8, 0x1

    .line 554
    :goto_0
    if-eqz v3, :cond_7

    .line 555
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justReplaced:Z

    if-eqz v8, :cond_a

    .line 556
    :cond_0
    invoke-super {p0, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 557
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_1

    .line 558
    invoke-virtual {v4, v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->setAlpha(F)V

    .line 559
    invoke-virtual {v4, v10, v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZ)V

    .line 561
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get0()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    .line 562
    .local v2, "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    const/4 v0, 0x1

    .line 568
    .end local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    :cond_1
    :goto_1
    if-nez v0, :cond_3

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get3(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v8

    if-ltz v8, :cond_3

    .line 569
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v8, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->indexOfChild(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get3(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v9

    if-lt v8, v9, :cond_3

    .line 570
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v8

    if-ne v8, v10, :cond_2

    .line 571
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    if-eq v8, v10, :cond_3

    .line 572
    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get1()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    .line 573
    .restart local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    const/4 v0, 0x1

    .line 575
    .end local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    :cond_3
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    if-eqz v8, :cond_5

    .line 576
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get10()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    .line 577
    .local v1, "animationFilter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->reset()V

    .line 579
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get2()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v8

    .line 578
    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->combineFilter(Lcom/android/systemui/statusbar/stack/AnimationFilter;)V

    .line 580
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get10()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->resetCustomInterpolators()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 581
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get10()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v8

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get2()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->combineCustomInterpolators(Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 582
    if-eqz v2, :cond_4

    .line 583
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->combineFilter(Lcom/android/systemui/statusbar/stack/AnimationFilter;)V

    .line 584
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get10()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->combineCustomInterpolators(Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 586
    :cond_4
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get10()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    .line 587
    .restart local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    invoke-virtual {v2, v12, v13}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 588
    const/4 v0, 0x1

    .line 589
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v9, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->indexOfChild(Landroid/view/View;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-set0(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;I)I

    .line 591
    .end local v1    # "animationFilter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .end local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    :cond_5
    if-nez v0, :cond_7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get5(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v8

    if-ltz v8, :cond_7

    .line 592
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v8, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->indexOfChild(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get5(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v9

    if-le v8, v9, :cond_7

    .line 593
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v8

    if-ne v8, v10, :cond_6

    .line 594
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    if-eq v8, v10, :cond_7

    .line 595
    :cond_6
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get10()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    .line 596
    .restart local v1    # "animationFilter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->reset()V

    .line 597
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateX()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    .line 598
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get10()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->resetCustomInterpolators()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 599
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get10()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    .line 600
    .restart local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    invoke-virtual {v2, v12, v13}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 601
    const/4 v0, 0x1

    .line 604
    .end local v1    # "animationFilter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .end local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    :cond_7
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    invoke-virtual {v4, v8, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZ)V

    .line 605
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    if-eqz v9, :cond_b

    :goto_2
    invoke-virtual {v4, v8, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconColor(IZ)V

    .line 606
    if-eqz v0, :cond_c

    .line 607
    invoke-virtual {p0, v4, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 611
    :goto_3
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->isInShelf()Z

    move-result v6

    .line 612
    .local v6, "wasInShelf":Z
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_d

    const/4 v5, 0x1

    .line 613
    .local v5, "inShelf":Z
    :goto_4
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIsInShelf(Z)V

    .line 614
    if-eq v6, v5, :cond_e

    const/4 v8, 0x1

    :goto_5
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->shouldVibrateChange(Z)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 616
    new-instance v8, Lcom/android/systemui/statusbar/phone/-$Lambda$5Q5wqWNihXVaQ93Ryhul3XY_Ets;

    const/16 v9, 0xa

    invoke-direct {v8, v9, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$5Q5wqWNihXVaQ93Ryhul3XY_Ets;-><init>(BLjava/lang/Object;)V

    .line 615
    invoke-static {v8}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 620
    .end local v0    # "animate":Z
    .end local v4    # "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    .end local v5    # "inShelf":Z
    .end local v6    # "wasInShelf":Z
    :cond_8
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    .line 621
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justReplaced:Z

    .line 622
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    .line 623
    return-void

    .line 552
    .restart local v0    # "animate":Z
    .local v2, "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .restart local v4    # "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_9
    const/4 v3, 0x0

    .local v3, "animationsAllowed":Z
    goto/16 :goto_0

    .line 564
    .end local v3    # "animationsAllowed":Z
    :cond_a
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v9

    if-eq v8, v9, :cond_1

    .line 565
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get1()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    .line 566
    .local v2, "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    const/4 v0, 0x1

    goto/16 :goto_1

    .end local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    :cond_b
    move v3, v7

    .line 605
    goto :goto_2

    .line 609
    :cond_c
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    goto :goto_3

    .line 612
    .restart local v6    # "wasInShelf":Z
    :cond_d
    const/4 v5, 0x0

    .restart local v5    # "inShelf":Z
    goto :goto_4

    :cond_e
    move v8, v7

    .line 614
    goto :goto_5
.end method

.method public hasCustomTransformHeight()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 645
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public initFrom(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 650
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 651
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_0

    .line 652
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStaticDrawableColor()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    .line 654
    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_NotificationIconContainer$IconState_25363()V
    .locals 2

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get9(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Landroid/os/Vibrator;

    move-result-object v0

    .line 617
    const/4 v1, 0x2

    .line 616
    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void
.end method
