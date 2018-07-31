.class Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChooserRowAdapter"
.end annotation


# instance fields
.field private mAnimationCount:I

.field private mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

.field private final mColumnCount:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;
    .locals 1
    .param p0, "-this"    # Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "-this"    # Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;
    .locals 1
    .param p0, "-this"    # Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;[Lcom/android/internal/app/ChooserActivity$RowScale;)[Lcom/android/internal/app/ChooserActivity$RowScale;
    .locals 0
    .param p0, "-this"    # Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;
    .param p1, "-value"    # [Lcom/android/internal/app/ChooserActivity$RowScale;

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;I)F
    .locals 1
    .param p0, "-this"    # Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;
    .param p1, "rowPosition"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getRowScale(I)F

    move-result v0

    return v0
.end method

.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "wrappedAdapter"    # Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .prologue
    .line 1302
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1297
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mColumnCount:I

    .line 1300
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mAnimationCount:I

    .line 1303
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .line 1304
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1307
    const v0, 0x10c0005

    .line 1306
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1309
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)V

    invoke-virtual {p2, v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1362
    return-void
.end method

.method private getRowScale(I)F
    .locals 4
    .param p1, "rowPosition"    # I

    .prologue
    .line 1365
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getCallerTargetRowCount()I

    move-result v1

    .line 1366
    .local v1, "start":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getServiceTargetRowCount()I

    move-result v2

    add-int v0, v1, v2

    .line 1367
    .local v0, "end":I
    if-lt p1, v1, :cond_0

    if-ge p1, v0, :cond_0

    .line 1368
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;

    sub-int v3, p1, v1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$RowScale;->get()F

    move-result v2

    return v2

    .line 1370
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    return v2
.end method

.method private setVertPadding(Lcom/android/internal/app/ChooserActivity$RowViewHolder;II)V
    .locals 3
    .param p1, "holder"    # Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 1565
    iget-object v0, p1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    iget-object v1, p1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    .line 1566
    iget-object v2, p1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    .line 1565
    invoke-virtual {v0, v1, p2, v2, p3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1567
    return-void
.end method


# virtual methods
.method bindViewHolder(ILcom/android/internal/app/ChooserActivity$RowViewHolder;)V
    .locals 22
    .param p1, "rowPosition"    # I
    .param p2, "holder"    # Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    .prologue
    .line 1495
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getFirstRowPosition(I)I

    move-result v11

    .line 1496
    .local v11, "start":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    move-result v12

    .line 1498
    .local v12, "startType":I
    add-int/lit8 v17, v11, 0x4

    add-int/lit8 v5, v17, -0x1

    .line 1499
    .local v5, "end":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v12, :cond_0

    if-lt v5, v11, :cond_0

    .line 1500
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 1503
    :cond_0
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_5

    .line 1506
    new-instance v15, Landroid/util/TypedValue;

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    .line 1507
    .local v15, "typedValue":Landroid/util/TypedValue;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/ChooserActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    .line 1508
    .local v13, "theme":Landroid/content/res/Resources$Theme;
    const v17, 0x1010031

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v15, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1509
    iget v4, v15, Landroid/util/TypedValue;->data:I

    .line 1510
    .local v4, "color":I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    .line 1511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/content/res/ThemeController;->getInstance(Landroid/content/Context;)Landroid/content/res/ThemeController;

    move-result-object v18

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    move-object/from16 v20, v0

    const v21, 0x1060059

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/app/ChooserActivity;->getColor(I)I

    move-result v20

    const/16 v21, 0x0

    aput v20, v19, v21

    const/16 v20, 0x1

    aput v4, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/ThemeController;->getCorrectThemeResource([I)I

    move-result v18

    .line 1510
    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    move-object/from16 v17, v0

    .line 1518
    add-int/lit8 v18, p1, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getFirstRowPosition(I)I

    move-result v18

    .line 1517
    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    move-result v8

    .line 1519
    .local v8, "nextStartType":I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 1520
    const v18, 0x1050032

    .line 1519
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 1521
    .local v10, "serviceSpacing":I
    if-nez p1, :cond_2

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_2

    .line 1523
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->setVertPadding(Lcom/android/internal/app/ChooserActivity$RowViewHolder;II)V

    .line 1545
    .end local v4    # "color":I
    .end local v8    # "nextStartType":I
    .end local v10    # "serviceSpacing":I
    .end local v13    # "theme":Landroid/content/res/Resources$Theme;
    .end local v15    # "typedValue":Landroid/util/TypedValue;
    :goto_1
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    iget v9, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1546
    .local v9, "oldHeight":I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .line 1547
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measuredRowHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getRowScale(I)F

    move-result v19

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    .line 1546
    const/16 v19, 0x1

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1548
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v9, :cond_1

    .line 1549
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1552
    :cond_1
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v6, v0, :cond_9

    .line 1553
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->cells:[Landroid/view/View;

    move-object/from16 v17, v0

    aget-object v16, v17, v6

    .line 1554
    .local v16, "v":Landroid/view/View;
    add-int v17, v11, v6

    move/from16 v0, v17

    if-gt v0, v5, :cond_8

    .line 1555
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 1556
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->itemIndices:[I

    move-object/from16 v17, v0

    add-int v18, v11, v6

    aput v18, v17, v6

    .line 1557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->itemIndices:[I

    move-object/from16 v18, v0

    aget v18, v18, v6

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->bindView(ILandroid/view/View;)V

    .line 1552
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1525
    .end local v6    # "i":I
    .end local v9    # "oldHeight":I
    .end local v16    # "v":Landroid/view/View;
    .restart local v4    # "color":I
    .restart local v8    # "nextStartType":I
    .restart local v10    # "serviceSpacing":I
    .restart local v13    # "theme":Landroid/content/res/Resources$Theme;
    .restart local v15    # "typedValue":Landroid/util/TypedValue;
    :cond_2
    if-nez p1, :cond_3

    move v14, v10

    .line 1526
    .local v14, "top":I
    :goto_4
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_4

    .line 1527
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v10}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->setVertPadding(Lcom/android/internal/app/ChooserActivity$RowViewHolder;II)V

    goto/16 :goto_1

    .line 1525
    .end local v14    # "top":I
    :cond_3
    const/4 v14, 0x0

    .restart local v14    # "top":I
    goto :goto_4

    .line 1529
    :cond_4
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v17

    invoke-direct {v0, v1, v14, v2}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->setVertPadding(Lcom/android/internal/app/ChooserActivity$RowViewHolder;II)V

    goto/16 :goto_1

    .line 1533
    .end local v4    # "color":I
    .end local v8    # "nextStartType":I
    .end local v10    # "serviceSpacing":I
    .end local v13    # "theme":Landroid/content/res/Resources$Theme;
    .end local v14    # "top":I
    .end local v15    # "typedValue":Landroid/util/TypedValue;
    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    move-object/from16 v17, v0

    .line 1535
    add-int/lit8 v18, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getFirstRowPosition(I)I

    move-result v18

    .line 1534
    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    move-result v7

    .line 1536
    .local v7, "lastStartType":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_6

    if-nez p1, :cond_7

    .line 1537
    :cond_6
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 1538
    const v18, 0x1050032

    .line 1537
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 1539
    .restart local v10    # "serviceSpacing":I
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v17

    invoke-direct {v0, v1, v10, v2}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->setVertPadding(Lcom/android/internal/app/ChooserActivity$RowViewHolder;II)V

    goto/16 :goto_1

    .line 1541
    .end local v10    # "serviceSpacing":I
    :cond_7
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->setVertPadding(Lcom/android/internal/app/ChooserActivity$RowViewHolder;II)V

    goto/16 :goto_1

    .line 1559
    .end local v7    # "lastStartType":I
    .restart local v6    # "i":I
    .restart local v9    # "oldHeight":I
    .restart local v16    # "v":Landroid/view/View;
    :cond_8
    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1562
    .end local v16    # "v":Landroid/view/View;
    :cond_9
    return-void
.end method

.method createViewHolder(Landroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    .locals 13
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v12, 0x4

    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 1432
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v8, 0x1090048

    invoke-virtual {v7, v8, p1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 1434
    .local v4, "row":Landroid/view/ViewGroup;
    new-instance v1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    invoke-direct {v1, v4, v12}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;-><init>(Landroid/view/ViewGroup;I)V

    .line 1435
    .local v1, "holder":Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1437
    .local v5, "spec":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v12, :cond_2

    .line 1438
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v7, v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1439
    .local v6, "v":Landroid/view/View;
    move v0, v2

    .line 1440
    .local v0, "column":I
    new-instance v7, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;

    invoke-direct {v7, p0, v0, v1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;ILcom/android/internal/app/ChooserActivity$RowViewHolder;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1450
    new-instance v7, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;

    invoke-direct {v7, p0, v0, v1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;ILcom/android/internal/app/ChooserActivity$RowViewHolder;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1463
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1464
    iget-object v7, v1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->cells:[Landroid/view/View;

    aput-object v6, v7, v2

    .line 1467
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1468
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v6, v5, v5}, Landroid/view/View;->measure(II)V

    .line 1469
    if-nez v3, :cond_1

    .line 1470
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-direct {v3, v11, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1471
    .restart local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1475
    :goto_1
    const/4 v7, 0x3

    if-eq v2, v7, :cond_0

    .line 1476
    new-instance v7, Landroid/widget/Space;

    iget-object v8, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {v7, v8}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 1477
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v8, v10, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1476
    invoke-virtual {v4, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1437
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1473
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 1482
    .end local v0    # "column":I
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v6    # "v":Landroid/view/View;
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measure()V

    .line 1483
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1484
    .restart local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_3

    .line 1485
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v7, v1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measuredRowHeight:I

    invoke-direct {v3, v11, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1486
    .restart local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1490
    :goto_2
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 1491
    return-object v1

    .line 1488
    :cond_3
    iget v7, v1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measuredRowHeight:I

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2
.end method

.method public getCallerTargetRowCount()I
    .locals 2

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 1398
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 1391
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getCallerTargetRowCount()I

    move-result v0

    .line 1392
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getServiceTargetRowCount()I

    move-result v1

    .line 1391
    add-int/2addr v0, v1

    int-to-double v0, v0

    .line 1393
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getStandardTargetCount()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    .line 1390
    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method getFirstRowPosition(I)I
    .locals 7
    .param p1, "row"    # I

    .prologue
    const/high16 v6, 0x40800000    # 4.0f

    .line 1570
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    .line 1571
    .local v0, "callerCount":I
    int-to-float v4, v0

    div-float/2addr v4, v6

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 1573
    .local v1, "callerRows":I
    if-ge p1, v1, :cond_0

    .line 1574
    mul-int/lit8 v4, p1, 0x4

    return v4

    .line 1577
    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v2

    .line 1578
    .local v2, "serviceCount":I
    int-to-float v4, v2

    div-float/2addr v4, v6

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 1580
    .local v3, "serviceRows":I
    add-int v4, v1, v3

    if-ge p1, v4, :cond_1

    .line 1581
    sub-int v4, p1, v1

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v0

    return v4

    .line 1584
    :cond_1
    add-int v4, v0, v2

    .line 1585
    sub-int v5, p1, v1

    sub-int/2addr v5, v3

    mul-int/lit8 v5, v5, 0x4

    .line 1584
    add-int/2addr v4, v5

    return v4
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1410
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1415
    int-to-long v0, p1

    return-wide v0
.end method

.method public getServiceTargetRowCount()I
    .locals 2

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 1403
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1421
    if-nez p2, :cond_0

    .line 1422
    invoke-virtual {p0, p3}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->createViewHolder(Landroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    move-result-object v0

    .line 1426
    .local v0, "holder":Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->bindViewHolder(ILcom/android/internal/app/ChooserActivity$RowViewHolder;)V

    .line 1428
    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    return-object v1

    .line 1424
    .end local v0    # "holder":Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    .restart local v0    # "holder":Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    goto :goto_0
.end method

.method public onAnimationEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1382
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mAnimationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mAnimationCount:I

    .line 1383
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mAnimationCount:I

    if-nez v0, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->setDismissLocked(Z)V

    .line 1386
    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 3

    .prologue
    .line 1374
    iget v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mAnimationCount:I

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 1375
    .local v0, "lock":Z
    :goto_0
    iget v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mAnimationCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mAnimationCount:I

    .line 1376
    if-eqz v0, :cond_0

    .line 1377
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->setDismissLocked(Z)V

    .line 1379
    :cond_0
    return-void

    .line 1374
    .end local v0    # "lock":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "lock":Z
    goto :goto_0
.end method
