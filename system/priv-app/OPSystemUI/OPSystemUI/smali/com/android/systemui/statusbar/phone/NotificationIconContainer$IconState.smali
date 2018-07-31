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

    .line 564
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    .line 566
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 567
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    .line 569
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    .line 575
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    .line 578
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    .line 564
    return-void
.end method

.method private shouldVibrateChange(Z)Z
    .locals 2
    .param p1, "inShelfChanged"    # Z

    .prologue
    const/4 v1, 0x0

    .line 660
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get8(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    return v1

    .line 663
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    if-eqz v0, :cond_1

    .line 664
    return v1

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get4(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 667
    return v1

    .line 669
    :cond_2
    if-nez p1, :cond_3

    .line 670
    return v1

    .line 672
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get6(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isHapticFeedbackDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 673
    return v1

    .line 675
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

    .line 582
    instance-of v8, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v8, :cond_8

    move-object v4, p1

    .line 583
    check-cast v4, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 584
    .local v4, "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    const/4 v0, 0x0

    .line 585
    .local v0, "animate":Z
    const/4 v2, 0x0

    .line 586
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

    .line 587
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    xor-int/lit8 v3, v8, 0x1

    .line 588
    :goto_0
    if-eqz v3, :cond_7

    .line 589
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justReplaced:Z

    if-eqz v8, :cond_a

    .line 590
    :cond_0
    invoke-super {p0, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 591
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_1

    .line 592
    invoke-virtual {v4, v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->setAlpha(F)V

    .line 593
    invoke-virtual {v4, v10, v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZ)V

    .line 595
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get0()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    .line 596
    .local v2, "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    const/4 v0, 0x1

    .line 602
    .end local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    :cond_1
    :goto_1
    if-nez v0, :cond_3

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get3(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v8

    if-ltz v8, :cond_3

    .line 603
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v8, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->indexOfChild(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get3(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v9

    if-lt v8, v9, :cond_3

    .line 604
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v8

    if-ne v8, v10, :cond_2

    .line 605
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    if-eq v8, v10, :cond_3

    .line 606
    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get1()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    .line 607
    .restart local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    const/4 v0, 0x1

    .line 609
    .end local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    :cond_3
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    if-eqz v8, :cond_5

    .line 610
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get10()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    .line 611
    .local v1, "animationFilter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->reset()V

    .line 613
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get2()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v8

    .line 612
    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->combineFilter(Lcom/android/systemui/statusbar/stack/AnimationFilter;)V

    .line 614
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get10()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->resetCustomInterpolators()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 615
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get10()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v8

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get2()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->combineCustomInterpolators(Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 616
    if-eqz v2, :cond_4

    .line 617
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->combineFilter(Lcom/android/systemui/statusbar/stack/AnimationFilter;)V

    .line 618
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get10()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->combineCustomInterpolators(Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 620
    :cond_4
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get10()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    .line 621
    .restart local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    invoke-virtual {v2, v12, v13}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 622
    const/4 v0, 0x1

    .line 623
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v9, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->indexOfChild(Landroid/view/View;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-set0(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;I)I

    .line 625
    .end local v1    # "animationFilter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .end local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    :cond_5
    if-nez v0, :cond_7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get5(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v8

    if-ltz v8, :cond_7

    .line 626
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v8, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->indexOfChild(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get5(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v9

    if-le v8, v9, :cond_7

    .line 627
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v8

    if-ne v8, v10, :cond_6

    .line 628
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    if-eq v8, v10, :cond_7

    .line 629
    :cond_6
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get10()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    .line 630
    .restart local v1    # "animationFilter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->reset()V

    .line 631
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateX()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    .line 632
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get10()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->resetCustomInterpolators()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 633
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get10()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    .line 634
    .restart local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    invoke-virtual {v2, v12, v13}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 635
    const/4 v0, 0x1

    .line 638
    .end local v1    # "animationFilter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .end local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    :cond_7
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    invoke-virtual {v4, v8, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZ)V

    .line 639
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    if-eqz v9, :cond_b

    :goto_2
    invoke-virtual {v4, v8, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconColor(IZ)V

    .line 640
    if-eqz v0, :cond_c

    .line 641
    invoke-virtual {p0, v4, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 645
    :goto_3
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->isInShelf()Z

    move-result v6

    .line 646
    .local v6, "wasInShelf":Z
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_d

    const/4 v5, 0x1

    .line 647
    .local v5, "inShelf":Z
    :goto_4
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIsInShelf(Z)V

    .line 648
    if-eq v6, v5, :cond_e

    const/4 v8, 0x1

    :goto_5
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->shouldVibrateChange(Z)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 650
    new-instance v8, Lcom/android/systemui/statusbar/phone/-$Lambda$s7b_D0Wx3UIN_Bk_BlNMnpBO8ss;

    const/16 v9, 0xa

    invoke-direct {v8, v9, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$s7b_D0Wx3UIN_Bk_BlNMnpBO8ss;-><init>(BLjava/lang/Object;)V

    .line 649
    invoke-static {v8}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 654
    .end local v0    # "animate":Z
    .end local v4    # "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    .end local v5    # "inShelf":Z
    .end local v6    # "wasInShelf":Z
    :cond_8
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    .line 655
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justReplaced:Z

    .line 656
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    .line 657
    return-void

    .line 586
    .restart local v0    # "animate":Z
    .local v2, "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .restart local v4    # "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_9
    const/4 v3, 0x0

    .local v3, "animationsAllowed":Z
    goto/16 :goto_0

    .line 598
    .end local v3    # "animationsAllowed":Z
    :cond_a
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v9

    if-eq v8, v9, :cond_1

    .line 599
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get1()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    .line 600
    .local v2, "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    const/4 v0, 0x1

    goto/16 :goto_1

    .end local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    :cond_b
    move v3, v7

    .line 639
    goto :goto_2

    .line 643
    :cond_c
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    goto :goto_3

    .line 646
    .restart local v6    # "wasInShelf":Z
    :cond_d
    const/4 v5, 0x0

    .restart local v5    # "inShelf":Z
    goto :goto_4

    :cond_e
    move v8, v7

    .line 648
    goto :goto_5
.end method

.method public hasCustomTransformHeight()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 679
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
    .line 684
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 685
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_0

    .line 686
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStaticDrawableColor()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    .line 688
    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_NotificationIconContainer$IconState_27154()V
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get9(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Landroid/os/Vibrator;

    move-result-object v0

    .line 651
    const/4 v1, 0x2

    .line 650
    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void
.end method
