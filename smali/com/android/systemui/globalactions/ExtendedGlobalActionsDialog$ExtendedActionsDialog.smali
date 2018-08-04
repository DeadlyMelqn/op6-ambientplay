.class final Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;
.super Landroid/app/Dialog;
.source "ExtendedGlobalActionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtendedActionsDialog"
.end annotation


# instance fields
.field private final mClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mColorExtractor:Lcom/android/internal/colorextraction/ColorExtractor;

.field private final mContext:Landroid/content/Context;

.field private final mExtendedAdapter:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;

.field private final mGradientDrawable:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

.field private final mHardwareLayout:Lcom/android/systemui/HardwareUiLayout;

.field private mKeyguardShowing:Z

.field private final mListView:Landroid/widget/LinearLayout;

.field private final mLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "adapter"    # Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;
    .param p4, "longClickListener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 536
    const v1, 0x7f1201ac

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 537
    iput-object p1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mContext:Landroid/content/Context;

    .line 538
    iput-object p3, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mExtendedAdapter:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;

    .line 539
    iput-object p2, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 540
    iput-object p4, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 541
    new-instance v1, Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    iget-object v2, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mGradientDrawable:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    .line 542
    const-class v1, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/colorextraction/ColorExtractor;

    iput-object v1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mColorExtractor:Lcom/android/internal/colorextraction/ColorExtractor;

    .line 545
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 546
    .local v0, "window":Landroid/view/Window;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 547
    const v1, 0x10002

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 550
    const v1, 0x10c0120

    .line 549
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 555
    iget-object v1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mGradientDrawable:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 556
    const/16 v1, 0x7e4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 558
    const v1, 0x7f0d0035

    invoke-virtual {p0, v1}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->setContentView(I)V

    .line 559
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mListView:Landroid/widget/LinearLayout;

    .line 560
    iget-object v1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mListView:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lcom/android/systemui/HardwareUiLayout;->get(Landroid/view/View;)Lcom/android/systemui/HardwareUiLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mHardwareLayout:Lcom/android/systemui/HardwareUiLayout;

    .line 561
    iget-object v1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mHardwareLayout:Lcom/android/systemui/HardwareUiLayout;

    new-instance v2, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE$1;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE$1;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/HardwareUiLayout;->setOutsideTouchListener(Landroid/view/View$OnClickListener;)V

    .line 562
    return-void
.end method

.method private getAnimTranslation()F
    .locals 2

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 637
    const v1, 0x7f0700ac

    .line 636
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 637
    const/high16 v1, 0x40000000    # 2.0f

    .line 636
    div-float/2addr v0, v1

    return v0
.end method

.method private updateList()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 565
    iget-object v3, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 566
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mExtendedAdapter:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;

    invoke-virtual {v3}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 567
    iget-object v3, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mExtendedAdapter:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;

    iget-object v4, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mListView:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 568
    .local v2, "v":Landroid/view/View;
    move v1, v0

    .line 569
    .local v1, "pos":I
    new-instance v3, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE$3;

    invoke-direct {v3, v6, v1, p0}, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE$3;-><init>(BILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    new-instance v3, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE$4;

    invoke-direct {v3, v6, v1, p0, v2}, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE$4;-><init>(BILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 572
    iget-object v3, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 566
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 574
    .end local v1    # "pos":I
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 619
    iget-object v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mHardwareLayout:Lcom/android/systemui/HardwareUiLayout;

    invoke-virtual {v0, v2}, Lcom/android/systemui/HardwareUiLayout;->setTranslationX(F)V

    .line 620
    iget-object v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mHardwareLayout:Lcom/android/systemui/HardwareUiLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/HardwareUiLayout;->setAlpha(F)V

    .line 621
    iget-object v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mHardwareLayout:Lcom/android/systemui/HardwareUiLayout;

    invoke-virtual {v0}, Lcom/android/systemui/HardwareUiLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 623
    invoke-direct {p0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->getAnimTranslation()F

    move-result v1

    .line 621
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 624
    const-wide/16 v2, 0x12c

    .line 621
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 625
    new-instance v1, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE$2;

    invoke-direct {v1, v4, p0}, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE$2;-><init>(BLjava/lang/Object;)V

    .line 621
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 626
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$LogAccelerateInterpolator;

    invoke-direct {v1}, Lcom/android/systemui/volume/VolumeDialogMotion$LogAccelerateInterpolator;-><init>()V

    .line 621
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 627
    new-instance v1, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE;

    invoke-direct {v1, v4, p0}, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE;-><init>(BLjava/lang/Object;)V

    .line 621
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 633
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 642
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 643
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mExtendedAdapter:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 645
    iget-object v2, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mExtendedAdapter:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;

    invoke-virtual {v2, v0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;->getItem(I)Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$Action;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$Action;->getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 646
    .local v1, "label":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 647
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 651
    .end local v0    # "i":I
    .end local v1    # "label":Ljava/lang/CharSequence;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    return v2
.end method

.method synthetic lambda$-com_android_systemui_globalactions_ExtendedGlobalActionsDialog$ExtendedActionsDialog_20340(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_globalactions_ExtendedGlobalActionsDialog$ExtendedActionsDialog_20658(ILandroid/view/View;)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p0, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_globalactions_ExtendedGlobalActionsDialog$ExtendedActionsDialog_20743(Landroid/view/View;ILandroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "pos"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$-com_android_systemui_globalactions_ExtendedGlobalActionsDialog$ExtendedActionsDialog_22153(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 609
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 610
    const v2, 0x3ee66666    # 0.45f

    .line 609
    mul-float/2addr v1, v2

    .line 610
    const/high16 v2, 0x437f0000    # 255.0f

    .line 609
    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 611
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mGradientDrawable:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setAlpha(I)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_globalactions_ExtendedGlobalActionsDialog$ExtendedActionsDialog_22444()V
    .locals 1

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    return-void
.end method

.method synthetic lambda$-com_android_systemui_globalactions_ExtendedGlobalActionsDialog$ExtendedActionsDialog_22883()V
    .locals 0

    .prologue
    .line 625
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_globalactions_ExtendedGlobalActionsDialog$ExtendedActionsDialog_23015(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 628
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    .line 629
    const v2, 0x3ee66666    # 0.45f

    .line 628
    mul-float/2addr v1, v2

    .line 629
    const/high16 v2, 0x437f0000    # 255.0f

    .line 628
    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 630
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mGradientDrawable:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setAlpha(I)V

    return-void
.end method

.method public onColorsChanged(Lcom/android/internal/colorextraction/ColorExtractor;I)V
    .locals 3
    .param p1, "extractor"    # Lcom/android/internal/colorextraction/ColorExtractor;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 656
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mKeyguardShowing:Z

    if-eqz v0, :cond_1

    .line 657
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mGradientDrawable:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    invoke-virtual {p1, v2}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mGradientDrawable:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    invoke-virtual {p1, v1}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 578
    invoke-super {p0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 579
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 580
    invoke-direct {p0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->updateList()V

    .line 582
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 583
    .local v1, "displaySize":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 584
    iget-object v3, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mColorExtractor:Lcom/android/internal/colorextraction/ColorExtractor;

    invoke-virtual {v3, p0}, Lcom/android/internal/colorextraction/ColorExtractor;->addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    .line 585
    iget-object v3, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mGradientDrawable:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setScreenSize(II)V

    .line 586
    iget-object v3, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mColorExtractor:Lcom/android/internal/colorextraction/ColorExtractor;

    iget-boolean v4, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mKeyguardShowing:Z

    if-eqz v4, :cond_0

    .line 587
    const/4 v2, 0x2

    .line 586
    :cond_0
    invoke-virtual {v3, v2}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    .line 588
    .local v0, "colors":Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    iget-object v2, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mGradientDrawable:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    .line 589
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 593
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 594
    iget-object v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mColorExtractor:Lcom/android/internal/colorextraction/ColorExtractor;

    invoke-virtual {v0, p0}, Lcom/android/internal/colorextraction/ColorExtractor;->removeOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    .line 595
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 0
    .param p1, "keyguardShowing"    # Z

    .prologue
    .line 668
    iput-boolean p1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mKeyguardShowing:Z

    .line 669
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 599
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 600
    iget-object v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mGradientDrawable:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setAlpha(I)V

    .line 601
    iget-object v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mHardwareLayout:Lcom/android/systemui/HardwareUiLayout;

    invoke-direct {p0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->getAnimTranslation()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/HardwareUiLayout;->setTranslationX(F)V

    .line 602
    iget-object v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mHardwareLayout:Lcom/android/systemui/HardwareUiLayout;

    invoke-virtual {v0, v2}, Lcom/android/systemui/HardwareUiLayout;->setAlpha(F)V

    .line 603
    iget-object v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->mHardwareLayout:Lcom/android/systemui/HardwareUiLayout;

    invoke-virtual {v0}, Lcom/android/systemui/HardwareUiLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 604
    const/high16 v1, 0x3f800000    # 1.0f

    .line 603
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 606
    const-wide/16 v2, 0x12c

    .line 603
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 607
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 603
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 608
    new-instance v1, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE;

    invoke-direct {v1, v4, p0}, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE;-><init>(BLjava/lang/Object;)V

    .line 603
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 613
    new-instance v1, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE$2;

    invoke-direct {v1, v4, p0}, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE$2;-><init>(BLjava/lang/Object;)V

    .line 603
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 615
    return-void
.end method
