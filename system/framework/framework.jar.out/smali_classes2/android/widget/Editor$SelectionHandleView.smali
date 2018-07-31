.class Landroid/widget/Editor$SelectionHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionHandleView"
.end annotation


# instance fields
.field private final mHandleType:I

.field private mInWord:Z

.field private mLanguageDirectionChanged:Z

.field private mPrevX:F

.field private final mTextViewEdgeSlop:F

.field private final mTextViewLocation:[I

.field private mTouchWordDelta:F

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 8
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;
    .param p4, "id"    # I
    .param p5, "handleType"    # I

    .prologue
    const/4 v7, 0x0

    .line 4782
    iput-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 4784
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor$HandleView;)V

    .line 4769
    iput-boolean v7, p0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    .line 4775
    iput-boolean v7, p0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 4780
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    .line 4785
    iput p5, p0, Landroid/widget/Editor$SelectionHandleView;->mHandleType:I

    .line 4786
    invoke-static {p1}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 4787
    .local v6, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    .line 4788
    return-void
.end method

.method private getHorizontal(Landroid/text/Layout;IZ)F
    .locals 6
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I
    .param p3, "startHandle"    # Z

    .prologue
    .line 5081
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 5082
    .local v2, "line":I
    if-eqz p3, :cond_0

    move v3, p2

    .line 5083
    .local v3, "offsetToCheck":I
    :goto_0
    invoke-virtual {p1, v3}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 5084
    .local v0, "isRtlChar":Z
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    const/4 v1, 0x1

    .line 5085
    .local v1, "isRtlParagraph":Z
    :goto_1
    if-ne v0, v1, :cond_2

    .line 5086
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    .line 5085
    :goto_2
    return v4

    .line 5082
    .end local v0    # "isRtlChar":Z
    .end local v1    # "isRtlParagraph":Z
    .end local v3    # "offsetToCheck":I
    :cond_0
    add-int/lit8 v4, p2, -0x1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .restart local v3    # "offsetToCheck":I
    goto :goto_0

    .line 5084
    .restart local v0    # "isRtlChar":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isRtlParagraph":Z
    goto :goto_1

    .line 5086
    :cond_2
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v4

    goto :goto_2
.end method

.method private isStartHandle()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4791
    iget v1, p0, Landroid/widget/Editor$SelectionHandleView;->mHandleType:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private positionAndAdjustForCrossingHandles(IZ)V
    .locals 12
    .param p1, "offset"    # I
    .param p2, "fromTouchScreen"    # Z

    .prologue
    const/4 v11, 0x0

    .line 5022
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 5023
    .local v1, "anotherHandleOffset":I
    :goto_0
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v7

    if-eqz v7, :cond_3

    if-lt p1, v1, :cond_3

    .line 5025
    :cond_0
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 5026
    iget-object v7, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 5027
    .local v5, "layout":Landroid/text/Layout;
    if-eqz v5, :cond_6

    if-eq p1, v1, :cond_6

    .line 5028
    invoke-virtual {p0, v5, p1}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v4

    .line 5030
    .local v4, "horiz":F
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    .line 5029
    invoke-direct {p0, v5, v1, v7}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;IZ)F

    move-result v0

    .line 5031
    .local v0, "anotherHandleHoriz":F
    iget v7, p0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    invoke-virtual {p0, v5, v7}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v2

    .line 5032
    .local v2, "currentHoriz":F
    cmpg-float v7, v2, v0

    if-gez v7, :cond_5

    cmpg-float v7, v4, v0

    if-gez v7, :cond_5

    .line 5036
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v3

    .line 5037
    .local v3, "currentOffset":I
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 5038
    move v6, v3

    .line 5039
    .local v6, "offsetToGetRunRange":I
    :goto_1
    invoke-virtual {v5, v6}, Landroid/text/Layout;->getRunRange(I)J

    move-result-wide v8

    .line 5040
    .local v8, "range":J
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 5041
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result p1

    .line 5045
    :goto_2
    invoke-virtual {p0, p1, v11, p2}, Landroid/widget/Editor$SelectionHandleView;->positionAtCursorOffset(IZZ)V

    .line 5046
    return-void

    .line 5022
    .end local v0    # "anotherHandleHoriz":F
    .end local v1    # "anotherHandleOffset":I
    .end local v2    # "currentHoriz":F
    .end local v3    # "currentOffset":I
    .end local v4    # "horiz":F
    .end local v5    # "layout":Landroid/text/Layout;
    .end local v6    # "offsetToGetRunRange":I
    .end local v8    # "range":J
    :cond_2
    iget-object v7, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .restart local v1    # "anotherHandleOffset":I
    goto :goto_0

    .line 5024
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v7

    if-nez v7, :cond_4

    if-le p1, v1, :cond_0

    .line 5052
    :cond_4
    :goto_3
    invoke-virtual {p0, p1, v11, p2}, Landroid/widget/Editor$SelectionHandleView;->positionAtCursorOffset(IZZ)V

    .line 5053
    return-void

    .line 5033
    .restart local v0    # "anotherHandleHoriz":F
    .restart local v2    # "currentHoriz":F
    .restart local v4    # "horiz":F
    .restart local v5    # "layout":Landroid/text/Layout;
    :cond_5
    cmpl-float v7, v2, v0

    if-lez v7, :cond_6

    cmpl-float v7, v4, v0

    if-gtz v7, :cond_1

    .line 5050
    .end local v0    # "anotherHandleHoriz":F
    .end local v2    # "currentHoriz":F
    .end local v4    # "horiz":F
    :cond_6
    iget-object v7, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    invoke-static {v7, v1, v10}, Landroid/widget/Editor;->-wrap16(Landroid/widget/Editor;IZ)I

    move-result p1

    goto :goto_3

    .line 5038
    .restart local v0    # "anotherHandleHoriz":F
    .restart local v2    # "currentHoriz":F
    .restart local v3    # "currentOffset":I
    .restart local v4    # "horiz":F
    :cond_7
    add-int/lit8 v7, v3, -0x1

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    .restart local v6    # "offsetToGetRunRange":I
    goto :goto_1

    .line 5043
    .restart local v8    # "range":J
    :cond_8
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result p1

    goto :goto_2
.end method

.method private positionNearEdgeOfScrollingView(FZ)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "atRtl"    # Z

    .prologue
    const/4 v5, 0x0

    .line 5056
    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 5058
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v3

    if-ne p2, v3, :cond_1

    .line 5059
    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    aget v3, v3, v5

    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 5060
    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    .line 5059
    sub-int v2, v3, v4

    .line 5061
    .local v2, "rightEdge":I
    int-to-float v3, v2

    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    sub-float/2addr v3, v4

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    const/4 v1, 0x1

    .line 5066
    .end local v2    # "rightEdge":I
    .local v1, "nearEdge":Z
    :goto_0
    return v1

    .line 5061
    .end local v1    # "nearEdge":Z
    .restart local v2    # "rightEdge":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "nearEdge":Z
    goto :goto_0

    .line 5063
    .end local v1    # "nearEdge":Z
    .end local v2    # "rightEdge":I
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    aget v3, v3, v5

    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    add-int v0, v3, v4

    .line 5064
    .local v0, "leftEdge":I
    int-to-float v3, v0

    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    add-float/2addr v3, v4

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    const/4 v1, 0x1

    .restart local v1    # "nearEdge":Z
    goto :goto_0

    .end local v1    # "nearEdge":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "nearEdge":Z
    goto :goto_0
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 4810
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    goto :goto_0
.end method

.method public getHorizontal(Landroid/text/Layout;I)F
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .prologue
    .line 5077
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;IZ)F

    move-result v0

    return v0
.end method

.method protected getHorizontalGravity(Z)I
    .locals 1
    .param p1, "isRtlRun"    # Z

    .prologue
    .line 4805
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 4796
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-ne p2, v0, :cond_0

    .line 4797
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0

    .line 4799
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected getOffsetAtCoordinate(Landroid/text/Layout;IF)I
    .locals 11
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "line"    # I
    .param p3, "x"    # F

    .prologue
    const/4 v10, 0x0

    .line 5091
    iget-object v9, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, p3}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v3

    .line 5092
    .local v3, "localX":F
    const/4 v9, 0x1

    invoke-virtual {p1, p2, v3, v9}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v6

    .line 5093
    .local v6, "primaryOffset":I
    invoke-virtual {p1, v6}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 5094
    return v6

    .line 5096
    :cond_0
    invoke-virtual {p1, p2, v3, v10}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v8

    .line 5097
    .local v8, "secondaryOffset":I
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v0

    .line 5098
    .local v0, "currentOffset":I
    sub-int v9, v6, v0

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 5099
    .local v5, "primaryDiff":I
    sub-int v9, v8, v0

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 5100
    .local v7, "secondaryDiff":I
    if-ge v5, v7, :cond_1

    .line 5101
    return v6

    .line 5102
    :cond_1
    if-le v5, v7, :cond_2

    .line 5103
    return v8

    .line 5105
    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 5106
    move v4, v0

    .line 5107
    .local v4, "offsetToCheck":I
    :goto_0
    invoke-virtual {p1, v4}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v1

    .line 5108
    .local v1, "isRtlChar":Z
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_4

    const/4 v2, 0x1

    .line 5109
    .local v2, "isRtlParagraph":Z
    :goto_1
    if-ne v1, v2, :cond_5

    .end local v6    # "primaryOffset":I
    :goto_2
    return v6

    .line 5106
    .end local v1    # "isRtlChar":Z
    .end local v2    # "isRtlParagraph":Z
    .end local v4    # "offsetToCheck":I
    .restart local v6    # "primaryOffset":I
    :cond_3
    add-int/lit8 v9, v0, -0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .restart local v4    # "offsetToCheck":I
    goto :goto_0

    .line 5108
    .restart local v1    # "isRtlChar":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "isRtlParagraph":Z
    goto :goto_1

    :cond_5
    move v6, v8

    .line 5109
    goto :goto_2
.end method

.method protected isAtRtlRun(Landroid/text/Layout;I)Z
    .locals 3
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .prologue
    .line 5071
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, p2

    .line 5072
    .local v0, "offsetToCheck":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v1

    return v1

    .line 5071
    .end local v0    # "offsetToCheck":I
    :cond_0
    add-int/lit8 v1, p2, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .restart local v0    # "offsetToCheck":I
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5010
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 5011
    .local v0, "superResult":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    .line 5014
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 5015
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 5017
    :cond_0
    return v0
.end method

.method protected positionAtCursorOffset(IZZ)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "forceUpdatePosition"    # Z
    .param p3, "fromTouchScreen"    # Z

    .prologue
    .line 5004
    invoke-super {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 5005
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-wrap0(Landroid/widget/Editor;)Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->isBoundary(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    .line 5006
    return-void

    .line 5005
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updatePosition(FFZ)V
    .locals 26
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "fromTouchScreen"    # Z

    .prologue
    .line 4830
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v12

    .line 4831
    .local v12, "layout":Landroid/text/Layout;
    if-nez v12, :cond_0

    .line 4834
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 4836
    return-void

    .line 4839
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 4840
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    .line 4843
    :cond_1
    const/16 v16, 0x0

    .line 4845
    .local v16, "positionCursor":Z
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .line 4846
    .local v5, "anotherHandleOffset":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, p2

    invoke-static {v0, v12, v1, v2}, Landroid/widget/Editor;->-wrap15(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    move-result v7

    .line 4847
    .local v7, "currLine":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v12, v7, v1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v9

    .line 4849
    .local v9, "initialOffset":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_7

    if-lt v9, v5, :cond_7

    .line 4853
    :goto_1
    invoke-virtual {v12, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .line 4854
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v12, v7, v1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v9

    .line 4857
    :cond_2
    move v14, v9

    .line 4858
    .local v14, "offset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v14}, Landroid/widget/Editor;->-wrap17(Landroid/widget/Editor;I)I

    move-result v21

    .line 4859
    .local v21, "wordEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v14}, Landroid/widget/Editor;->-wrap18(Landroid/widget/Editor;I)I

    move-result v22

    .line 4861
    .local v22, "wordStart":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    move/from16 v24, v0

    const/high16 v25, -0x40800000    # -1.0f

    cmpl-float v24, v24, v25

    if-nez v24, :cond_3

    .line 4862
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 4865
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v8

    .line 4866
    .local v8, "currentOffset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v17

    .line 4867
    .local v17, "rtlAtCurrentOffset":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v6

    .line 4868
    .local v6, "atRtl":Z
    invoke-virtual {v12, v14}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v11

    .line 4873
    .local v11, "isLvlBoundary":Z
    if-nez v11, :cond_5

    if-eqz v17, :cond_4

    xor-int/lit8 v24, v6, 0x1

    if-nez v24, :cond_5

    :cond_4
    if-nez v17, :cond_8

    if-eqz v6, :cond_8

    .line 4876
    :cond_5
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 4877
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 4878
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v14, v1}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 4879
    return-void

    .line 4845
    .end local v5    # "anotherHandleOffset":I
    .end local v6    # "atRtl":Z
    .end local v7    # "currLine":I
    .end local v8    # "currentOffset":I
    .end local v9    # "initialOffset":I
    .end local v11    # "isLvlBoundary":Z
    .end local v14    # "offset":I
    .end local v17    # "rtlAtCurrentOffset":Z
    .end local v21    # "wordEnd":I
    .end local v22    # "wordStart":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .restart local v5    # "anotherHandleOffset":I
    goto/16 :goto_0

    .line 4850
    .restart local v7    # "currLine":I
    .restart local v9    # "initialOffset":I
    :cond_7
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-nez v24, :cond_2

    if-gt v9, v5, :cond_2

    goto/16 :goto_1

    .line 4880
    .restart local v6    # "atRtl":Z
    .restart local v8    # "currentOffset":I
    .restart local v11    # "isLvlBoundary":Z
    .restart local v14    # "offset":I
    .restart local v17    # "rtlAtCurrentOffset":Z
    .restart local v21    # "wordEnd":I
    .restart local v22    # "wordStart":I
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_9

    xor-int/lit8 v24, v11, 0x1

    if-eqz v24, :cond_9

    .line 4883
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v14, v1}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 4884
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 4885
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 4886
    return-void

    .line 4890
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    move/from16 v24, v0

    sub-float v23, p1, v24

    .line 4891
    .local v23, "xDiff":F
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_d

    .line 4892
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v7, v0, :cond_c

    const/4 v10, 0x1

    .line 4896
    .local v10, "isExpanding":Z
    :goto_2
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    move/from16 v0, v24

    if-ne v6, v0, :cond_10

    .line 4897
    const/16 v24, 0x0

    cmpl-float v24, v23, v24

    if-lez v24, :cond_f

    const/16 v24, 0x1

    :goto_3
    or-int v10, v10, v24

    .line 4902
    .local v10, "isExpanding":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v24

    if-eqz v24, :cond_13

    .line 4903
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v6}, Landroid/widget/Editor$SelectionHandleView;->positionNearEdgeOfScrollingView(FZ)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 4904
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getScrollX()I

    move-result v24

    if-eqz v24, :cond_12

    .line 4907
    :cond_a
    if-eqz v10, :cond_1d

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_1c

    if-ge v14, v8, :cond_1c

    .line 4913
    :cond_b
    :goto_5
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 4914
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    move/from16 v0, v24

    if-ne v6, v0, :cond_1e

    .line 4915
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v13

    .line 4917
    .local v13, "nextOffset":I
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v13, v1}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 4918
    return-void

    .line 4892
    .end local v10    # "isExpanding":Z
    .end local v13    # "nextOffset":I
    :cond_c
    const/4 v10, 0x0

    .local v10, "isExpanding":Z
    goto :goto_2

    .line 4894
    .end local v10    # "isExpanding":Z
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v7, v0, :cond_e

    const/4 v10, 0x1

    .restart local v10    # "isExpanding":Z
    goto :goto_2

    .end local v10    # "isExpanding":Z
    :cond_e
    const/4 v10, 0x0

    .restart local v10    # "isExpanding":Z
    goto :goto_2

    .line 4897
    :cond_f
    const/16 v24, 0x0

    goto :goto_3

    .line 4899
    :cond_10
    const/16 v24, 0x0

    cmpg-float v24, v23, v24

    if-gez v24, :cond_11

    const/16 v24, 0x1

    :goto_7
    or-int v10, v10, v24

    .local v10, "isExpanding":Z
    goto :goto_4

    .local v10, "isExpanding":Z
    :cond_11
    const/16 v24, 0x0

    goto :goto_7

    .line 4905
    .local v10, "isExpanding":Z
    :cond_12
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-nez v24, :cond_13

    .line 4906
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    if-eqz v6, :cond_1b

    const/16 v24, -0x1

    :goto_8
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->canScrollHorizontally(I)Z

    move-result v24

    .line 4903
    if-nez v24, :cond_a

    .line 4922
    :cond_13
    if-eqz v10, :cond_2a

    .line 4924
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_1f

    move/from16 v20, v22

    .line 4925
    .local v20, "wordBoundary":I
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    move/from16 v24, v0

    if-eqz v24, :cond_14

    .line 4926
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v7, v0, :cond_21

    .line 4927
    :cond_14
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v24

    move/from16 v0, v24

    if-ne v6, v0, :cond_22

    const/16 v19, 0x1

    .line 4928
    .local v19, "snapToWord":Z
    :goto_a
    if-eqz v19, :cond_17

    .line 4932
    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v24

    move/from16 v0, v24

    if-eq v0, v7, :cond_15

    .line 4933
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_23

    .line 4934
    invoke-virtual {v12, v7}, Landroid/text/Layout;->getLineStart(I)I

    move-result v20

    .line 4936
    :cond_15
    :goto_b
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_24

    .line 4937
    sub-int v24, v21, v20

    div-int/lit8 v24, v24, 0x2

    sub-int v15, v21, v24

    .line 4939
    .local v15, "offsetThresholdToSnap":I
    :goto_c
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_25

    .line 4940
    if-le v14, v15, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v7, v0, :cond_25

    .line 4943
    :cond_16
    move/from16 v14, v22

    .line 4953
    .end local v15    # "offsetThresholdToSnap":I
    :cond_17
    :goto_d
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_28

    if-ge v14, v9, :cond_28

    .line 4955
    :cond_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v4

    .line 4957
    .local v4, "adjustedX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v24

    sub-float v24, v24, v4

    .line 4956
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 4961
    .end local v4    # "adjustedX":F
    :goto_e
    const/16 v16, 0x1

    .line 4994
    .end local v19    # "snapToWord":Z
    .end local v20    # "wordBoundary":I
    :cond_19
    :goto_f
    if-eqz v16, :cond_1a

    .line 4995
    move-object/from16 v0, p0

    iput v7, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    .line 4996
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v14, v1}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 4998
    :cond_1a
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 4999
    return-void

    .line 4906
    :cond_1b
    const/16 v24, 0x1

    goto/16 :goto_8

    .line 4908
    :cond_1c
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-nez v24, :cond_1d

    if-gt v14, v8, :cond_b

    .line 4909
    :cond_1d
    xor-int/lit8 v24, v10, 0x1

    .line 4903
    if-eqz v24, :cond_13

    goto/16 :goto_5

    .line 4916
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v13

    .restart local v13    # "nextOffset":I
    goto/16 :goto_6

    .line 4924
    .end local v13    # "nextOffset":I
    :cond_1f
    move/from16 v20, v21

    .restart local v20    # "wordBoundary":I
    goto/16 :goto_9

    .line 4926
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-gt v7, v0, :cond_14

    .line 4925
    :cond_21
    const/16 v19, 0x0

    .restart local v19    # "snapToWord":Z
    goto/16 :goto_a

    .line 4927
    .end local v19    # "snapToWord":Z
    :cond_22
    const/16 v19, 0x0

    .restart local v19    # "snapToWord":Z
    goto/16 :goto_a

    .line 4934
    :cond_23
    invoke-virtual {v12, v7}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v20

    goto/16 :goto_b

    .line 4938
    :cond_24
    sub-int v24, v20, v22

    div-int/lit8 v24, v24, 0x2

    add-int v15, v22, v24

    .restart local v15    # "offsetThresholdToSnap":I
    goto/16 :goto_c

    .line 4944
    :cond_25
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-nez v24, :cond_27

    .line 4945
    if-ge v14, v15, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v7, v0, :cond_27

    .line 4948
    :cond_26
    move/from16 v14, v21

    .line 4945
    goto/16 :goto_d

    .line 4950
    :cond_27
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    goto/16 :goto_d

    .line 4954
    .end local v15    # "offsetThresholdToSnap":I
    :cond_28
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-nez v24, :cond_29

    if-gt v14, v9, :cond_18

    .line 4959
    :cond_29
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    goto/16 :goto_e

    .line 4964
    .end local v19    # "snapToWord":Z
    .end local v20    # "wordBoundary":I
    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    move/from16 v24, v0

    sub-float v24, p1, v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v12, v7, v1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v3

    .line 4965
    .local v3, "adjustedOffset":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_2e

    .line 4966
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-gt v3, v0, :cond_2b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v7, v0, :cond_2d

    :cond_2b
    const/16 v18, 0x1

    .line 4968
    .local v18, "shrinking":Z
    :goto_10
    if-eqz v18, :cond_35

    .line 4970
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v7, v0, :cond_34

    .line 4972
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_31

    move/from16 v14, v22

    .line 4973
    :goto_11
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_32

    if-ge v14, v9, :cond_32

    .line 4975
    :cond_2c
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v4

    .line 4977
    .restart local v4    # "adjustedX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v24

    sub-float v24, v24, v4

    .line 4976
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 4984
    .end local v4    # "adjustedX":F
    :goto_12
    const/16 v16, 0x1

    goto/16 :goto_f

    .line 4966
    .end local v18    # "shrinking":Z
    :cond_2d
    const/16 v18, 0x0

    .restart local v18    # "shrinking":Z
    goto :goto_10

    .line 4967
    .end local v18    # "shrinking":Z
    :cond_2e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v3, v0, :cond_2f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v7, v0, :cond_30

    :cond_2f
    const/16 v18, 0x1

    .restart local v18    # "shrinking":Z
    goto :goto_10

    .end local v18    # "shrinking":Z
    :cond_30
    const/16 v18, 0x0

    .restart local v18    # "shrinking":Z
    goto :goto_10

    .line 4972
    :cond_31
    move/from16 v14, v21

    goto :goto_11

    .line 4974
    :cond_32
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-nez v24, :cond_33

    if-gt v14, v9, :cond_2c

    .line 4979
    :cond_33
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    goto :goto_12

    .line 4982
    :cond_34
    move v14, v3

    goto :goto_12

    .line 4985
    :cond_35
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_36

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v3, v0, :cond_36

    .line 4989
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v24

    .line 4990
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v12, v1}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v25

    .line 4989
    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    goto/16 :goto_f

    .line 4986
    :cond_36
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-nez v24, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v3, v0, :cond_19

    goto :goto_13
.end method

.method protected updateSelection(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 4815
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4816
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 4817
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 4816
    invoke-static {v0, p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 4822
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->updateDrawable()V

    .line 4823
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get12(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4824
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-wrap20(Landroid/widget/Editor;)V

    .line 4826
    :cond_0
    return-void

    .line 4819
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 4820
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 4819
    invoke-static {v0, v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0
.end method
