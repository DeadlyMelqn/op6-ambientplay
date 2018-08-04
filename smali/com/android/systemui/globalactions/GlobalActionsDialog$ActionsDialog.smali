.class final Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;
.super Landroid/app/Dialog;
.source "GlobalActionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActionsDialog"
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

.field private final mClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mColorExtractor:Lcom/android/internal/colorextraction/ColorExtractor;

.field private final mContext:Landroid/content/Context;

.field private final mGradientDrawable:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

.field private final mHardwareLayout:Lcom/android/systemui/HardwareUiLayout;

.field private mKeyguardShowing:Z

.field private final mListView:Landroid/widget/LinearLayout;

.field private final mLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "adapter"    # Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;
    .param p4, "longClickListener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    const/4 v3, 0x1

    .line 1316
    const v1, 0x7f1201ac

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1317
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    .line 1318
    iput-object p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    .line 1319
    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1320
    iput-object p4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 1321
    new-instance v1, Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGradientDrawable:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    .line 1322
    const-class v1, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/colorextraction/ColorExtractor;

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mColorExtractor:Lcom/android/internal/colorextraction/ColorExtractor;

    .line 1325
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1326
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 1327
    const v1, 0x10002

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1330
    const v1, 0x10c0120

    .line 1329
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1335
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGradientDrawable:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1336
    const/16 v1, 0x7e4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 1338
    const v1, 0x7f0d0035

    invoke-virtual {p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->setContentView(I)V

    .line 1339
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mListView:Landroid/widget/LinearLayout;

    .line 1340
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mListView:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lcom/android/systemui/HardwareUiLayout;->get(Landroid/view/View;)Lcom/android/systemui/HardwareUiLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mHardwareLayout:Lcom/android/systemui/HardwareUiLayout;

    .line 1341
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mHardwareLayout:Lcom/android/systemui/HardwareUiLayout;

    new-instance v2, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE$1;

    invoke-direct {v2, v3, p0}, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE$1;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/HardwareUiLayout;->setOutsideTouchListener(Landroid/view/View$OnClickListener;)V

    .line 1342
    return-void
.end method

.method private getAnimTranslation()F
    .locals 2

    .prologue
    .line 1416
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1417
    const v1, 0x7f0700ac

    .line 1416
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 1417
    const/high16 v1, 0x40000000    # 2.0f

    .line 1416
    div-float/2addr v0, v1

    return v0
.end method

.method private updateList()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1345
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1346
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1347
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mListView:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1348
    .local v2, "v":Landroid/view/View;
    move v1, v0

    .line 1349
    .local v1, "pos":I
    new-instance v3, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE$3;

    invoke-direct {v3, v6, v1, p0}, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE$3;-><init>(BILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1350
    new-instance v3, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE$4;

    invoke-direct {v3, v6, v1, p0, v2}, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE$4;-><init>(BILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1352
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1346
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1354
    .end local v1    # "pos":I
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 1399
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mHardwareLayout:Lcom/android/systemui/HardwareUiLayout;

    invoke-virtual {v0, v2}, Lcom/android/systemui/HardwareUiLayout;->setTranslationX(F)V

    .line 1400
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mHardwareLayout:Lcom/android/systemui/HardwareUiLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/HardwareUiLayout;->setAlpha(F)V

    .line 1401
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mHardwareLayout:Lcom/android/systemui/HardwareUiLayout;

    invoke-virtual {v0}, Lcom/android/systemui/HardwareUiLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1403
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getAnimTranslation()F

    move-result v1

    .line 1401
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1404
    const-wide/16 v2, 0x12c

    .line 1401
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1405
    new-instance v1, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE$2;

    invoke-direct {v1, v4, p0}, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE$2;-><init>(BLjava/lang/Object;)V

    .line 1401
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1406
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$LogAccelerateInterpolator;

    invoke-direct {v1}, Lcom/android/systemui/volume/VolumeDialogMotion$LogAccelerateInterpolator;-><init>()V

    .line 1401
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1407
    new-instance v1, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE;

    invoke-direct {v1, v4, p0}, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE;-><init>(BLjava/lang/Object;)V

    .line 1401
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1413
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1422
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 1423
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1425
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v2, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;->getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1426
    .local v1, "label":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 1427
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1423
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1431
    .end local v0    # "i":I
    .end local v1    # "label":Ljava/lang/CharSequence;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    return v2
.end method

.method synthetic lambda$-com_android_systemui_globalactions_GlobalActionsDialog$ActionsDialog_50148(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1341
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_globalactions_GlobalActionsDialog$ActionsDialog_50450(ILandroid/view/View;)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p0, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_globalactions_GlobalActionsDialog$ActionsDialog_50535(Landroid/view/View;ILandroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "pos"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$-com_android_systemui_globalactions_GlobalActionsDialog$ActionsDialog_51945(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1389
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1390
    const v2, 0x3ee66666    # 0.45f

    .line 1389
    mul-float/2addr v1, v2

    .line 1390
    const/high16 v2, 0x437f0000    # 255.0f

    .line 1389
    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 1391
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGradientDrawable:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setAlpha(I)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_globalactions_GlobalActionsDialog$ActionsDialog_52236()V
    .locals 1

    .prologue
    .line 1393
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    return-void
.end method

.method synthetic lambda$-com_android_systemui_globalactions_GlobalActionsDialog$ActionsDialog_52675()V
    .locals 0

    .prologue
    .line 1405
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_globalactions_GlobalActionsDialog$ActionsDialog_52807(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1408
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    .line 1409
    const v2, 0x3ee66666    # 0.45f

    .line 1408
    mul-float/2addr v1, v2

    .line 1409
    const/high16 v2, 0x437f0000    # 255.0f

    .line 1408
    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 1410
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGradientDrawable:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

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

    .line 1436
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mKeyguardShowing:Z

    if-eqz v0, :cond_1

    .line 1437
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_0

    .line 1438
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGradientDrawable:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    invoke-virtual {p1, v2}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 1445
    :cond_0
    :goto_0
    return-void

    .line 1441
    :cond_1
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 1442
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGradientDrawable:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    invoke-virtual {p1, v1}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1358
    invoke-super {p0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1359
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 1360
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->updateList()V

    .line 1362
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1363
    .local v1, "displaySize":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1364
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mColorExtractor:Lcom/android/internal/colorextraction/ColorExtractor;

    invoke-virtual {v3, p0}, Lcom/android/internal/colorextraction/ColorExtractor;->addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    .line 1365
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGradientDrawable:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setScreenSize(II)V

    .line 1366
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mColorExtractor:Lcom/android/internal/colorextraction/ColorExtractor;

    iget-boolean v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mKeyguardShowing:Z

    if-eqz v4, :cond_0

    .line 1367
    const/4 v2, 0x2

    .line 1366
    :cond_0
    invoke-virtual {v3, v2}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    .line 1368
    .local v0, "colors":Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGradientDrawable:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    .line 1369
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1373
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 1374
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mColorExtractor:Lcom/android/internal/colorextraction/ColorExtractor;

    invoke-virtual {v0, p0}, Lcom/android/internal/colorextraction/ColorExtractor;->removeOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    .line 1375
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 0
    .param p1, "keyguardShowing"    # Z

    .prologue
    .line 1448
    iput-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mKeyguardShowing:Z

    .line 1449
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x0

    .line 1379
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 1380
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGradientDrawable:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setAlpha(I)V

    .line 1381
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mHardwareLayout:Lcom/android/systemui/HardwareUiLayout;

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getAnimTranslation()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/HardwareUiLayout;->setTranslationX(F)V

    .line 1382
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mHardwareLayout:Lcom/android/systemui/HardwareUiLayout;

    invoke-virtual {v0, v2}, Lcom/android/systemui/HardwareUiLayout;->setAlpha(F)V

    .line 1383
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mHardwareLayout:Lcom/android/systemui/HardwareUiLayout;

    invoke-virtual {v0}, Lcom/android/systemui/HardwareUiLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1384
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1383
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1386
    const-wide/16 v2, 0x12c

    .line 1383
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1387
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 1383
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1388
    new-instance v1, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE;

    invoke-direct {v1, v4, p0}, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE;-><init>(BLjava/lang/Object;)V

    .line 1383
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1393
    new-instance v1, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE$2;

    invoke-direct {v1, v4, p0}, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE$2;-><init>(BLjava/lang/Object;)V

    .line 1383
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1395
    return-void
.end method
