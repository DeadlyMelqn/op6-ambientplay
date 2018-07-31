.class Landroid/text/TextLine;
.super Ljava/lang/Object;
.source "TextLine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextLine$DecorationInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAB_INCREMENT:I = 0x14

.field private static final sCached:[Landroid/text/TextLine;


# instance fields
.field private final mActivePaint:Landroid/text/TextPaint;

.field private mAddedWidth:F

.field private final mCharacterStyleSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mChars:[C

.field private mCharsValid:Z

.field private final mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

.field private final mDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/TextLine$DecorationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDir:I

.field private mDirections:Landroid/text/Layout$Directions;

.field private mHasTabs:Z

.field private mLen:I

.field private final mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/MetricAffectingSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/text/TextPaint;

.field private final mReplacementSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/ReplacementSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mSpanned:Landroid/text/Spanned;

.field private mStart:I

.field private mTabs:Landroid/text/Layout$TabStops;

.field private mText:Ljava/lang/CharSequence;

.field private final mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/TextLine;

    sput-object v0, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    .line 47
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 67
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mActivePaint:Landroid/text/TextPaint;

    .line 69
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/MetricAffectingSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    .line 68
    iput-object v0, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    .line 71
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    .line 70
    iput-object v0, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    .line 73
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/ReplacementSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    .line 72
    iput-object v0, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    .line 75
    new-instance v0, Landroid/text/TextLine$DecorationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/TextLine$DecorationInfo;-><init>(Landroid/text/TextLine$DecorationInfo;)V

    iput-object v0, p0, Landroid/text/TextLine;->mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    .line 47
    return-void
.end method

.method private adjustHyphenEdit(III)I
    .locals 2
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "hyphenEdit"    # I

    .prologue
    .line 918
    move v0, p3

    .line 920
    .local v0, "result":I
    if-lez p1, :cond_0

    .line 921
    and-int/lit8 v0, p3, -0x19

    .line 923
    :cond_0
    iget v1, p0, Landroid/text/TextLine;->mLen:I

    if-ge p2, v1, :cond_1

    .line 924
    and-int/lit8 v0, v0, -0x8

    .line 926
    :cond_1
    return v0
.end method

.method private countStretchableSpaces(II)I
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1182
    const/4 v0, 0x0

    .line 1183
    .local v0, "count":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 1184
    add-int/lit8 v0, v0, 0x1

    .line 1183
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2, p2}, Landroid/text/TextLine;->nextStretchableSpace(II)I

    move-result v1

    goto :goto_0

    .line 1186
    :cond_0
    return v0
.end method

.method private drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F
    .locals 14
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "start"    # I
    .param p3, "limit"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "needWidth"    # Z

    .prologue
    .line 391
    iget v1, p0, Landroid/text/TextLine;->mDir:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move/from16 v0, p4

    if-ne v1, v0, :cond_1

    .line 392
    const/4 v6, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    neg-float v13, v1

    .line 393
    .local v13, "w":F
    add-float v7, p5, v13

    .line 394
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, p1

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    .line 393
    invoke-direct/range {v1 .. v12}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    .line 395
    return v13

    .line 391
    .end local v13    # "w":F
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 399
    :cond_1
    const/4 v11, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, p1

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v12, p9

    .line 398
    invoke-direct/range {v1 .. v12}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v1

    return v1
.end method

.method private static drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V
    .locals 9
    .param p0, "wp"    # Landroid/text/TextPaint;
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "color"    # I
    .param p3, "position"    # F
    .param p4, "thickness"    # F
    .param p5, "xleft"    # F
    .param p6, "xright"    # F
    .param p7, "baseline"    # F

    .prologue
    .line 709
    iget v0, p0, Landroid/text/TextPaint;->baselineShift:I

    int-to-float v0, v0

    add-float v0, v0, p7

    add-float v2, v0, p3

    .line 711
    .local v2, "strokeTop":F
    invoke-virtual {p0}, Landroid/text/TextPaint;->getColor()I

    move-result v7

    .line 712
    .local v7, "previousColor":I
    invoke-virtual {p0}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v8

    .line 713
    .local v8, "previousStyle":Landroid/graphics/Paint$Style;
    invoke-virtual {p0}, Landroid/text/TextPaint;->isAntiAlias()Z

    move-result v6

    .line 715
    .local v6, "previousAntiAlias":Z
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 716
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 718
    invoke-virtual {p0, p2}, Landroid/text/TextPaint;->setColor(I)V

    .line 719
    add-float v4, v2, p4

    move-object v0, p1

    move v1, p5

    move v3, p6

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 721
    invoke-virtual {p0, v8}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 722
    invoke-virtual {p0, v7}, Landroid/text/TextPaint;->setColor(I)V

    .line 723
    invoke-virtual {p0, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 724
    return-void
.end method

.method private drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V
    .locals 18
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "wp"    # Landroid/text/TextPaint;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "contextStart"    # I
    .param p6, "contextEnd"    # I
    .param p7, "runIsRtl"    # Z
    .param p8, "x"    # F
    .param p9, "y"    # I

    .prologue
    .line 1142
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v1, :cond_0

    .line 1143
    sub-int v4, p4, p3

    .line 1144
    .local v4, "count":I
    sub-int v6, p6, p5

    .line 1145
    .local v6, "contextCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    .line 1146
    move/from16 v0, p9

    int-to-float v8, v0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v5, p5

    move/from16 v7, p8

    move/from16 v9, p7

    move-object/from16 v10, p2

    .line 1145
    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .line 1152
    .end local v4    # "count":I
    .end local v6    # "contextCount":I
    :goto_0
    return-void

    .line 1148
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move/from16 v17, v0

    .line 1149
    .local v17, "delta":I
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v9, v17, p3

    add-int v10, v17, p4

    .line 1150
    add-int v11, v17, p5

    add-int v12, v17, p6

    move/from16 v0, p9

    int-to-float v14, v0

    move-object/from16 v7, p1

    move/from16 v13, p8

    move/from16 v15, p7

    move-object/from16 v16, p2

    .line 1149
    invoke-virtual/range {v7 .. v16}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private static expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .locals 6
    .param p0, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p1, "wp"    # Landroid/text/TextPaint;

    .prologue
    .line 686
    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 687
    .local v1, "previousTop":I
    iget v2, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 688
    .local v2, "previousAscent":I
    iget v3, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 689
    .local v3, "previousDescent":I
    iget v4, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 690
    .local v4, "previousBottom":I
    iget v5, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 692
    .local v5, "previousLeading":I
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-object v0, p0

    .line 694
    invoke-static/range {v0 .. v5}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    .line 696
    return-void
.end method

.method private extractDecorationInfo(Landroid/text/TextPaint;Landroid/text/TextLine$DecorationInfo;)V
    .locals 2
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "info"    # Landroid/text/TextLine$DecorationInfo;

    .prologue
    const/4 v1, 0x0

    .line 953
    invoke-virtual {p1}, Landroid/text/TextPaint;->isStrikeThruText()Z

    move-result v0

    iput-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    .line 954
    iget-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    if-eqz v0, :cond_0

    .line 955
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setStrikeThruText(Z)V

    .line 957
    :cond_0
    invoke-virtual {p1}, Landroid/text/TextPaint;->isUnderlineText()Z

    move-result v0

    iput-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    .line 958
    iget-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    if-eqz v0, :cond_1

    .line 959
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 961
    :cond_1
    iget v0, p1, Landroid/text/TextPaint;->underlineColor:I

    iput v0, p2, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    .line 962
    iget v0, p1, Landroid/text/TextPaint;->underlineThickness:F

    iput v0, p2, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    .line 963
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    .line 964
    return-void
.end method

.method private getOffsetBeforeAfter(IIIZIZ)I
    .locals 23
    .param p1, "runIndex"    # I
    .param p2, "runStart"    # I
    .param p3, "runLimit"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "offset"    # I
    .param p6, "after"    # Z

    .prologue
    .line 618
    if-ltz p1, :cond_0

    if-eqz p6, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mLen:I

    :goto_0
    move/from16 v0, p5

    if-ne v0, v3, :cond_3

    .line 622
    :cond_0
    if-eqz p6, :cond_2

    .line 623
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v5, p5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v3, v5

    return v3

    .line 618
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 625
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v5, p5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v3, v5

    return v3

    .line 628
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 629
    .local v2, "wp":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 630
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mAddedWidth:F

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setWordSpacing(F)V

    .line 632
    move/from16 v4, p2

    .line 634
    .local v4, "spanStart":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v3, :cond_5

    .line 635
    move/from16 v20, p3

    .line 671
    .local v20, "spanLimit":I
    :cond_4
    if-eqz p4, :cond_b

    const/4 v6, 0x1

    .line 672
    .local v6, "dir":I
    :goto_1
    if-eqz p6, :cond_c

    const/4 v8, 0x0

    .line 673
    .local v8, "cursorOpt":I
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v3, :cond_d

    .line 674
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    sub-int v5, v20, v4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v8}, Landroid/text/TextPaint;->getTextRunCursor([CIIIII)I

    move-result v3

    return v3

    .line 637
    .end local v6    # "dir":I
    .end local v8    # "cursorOpt":I
    .end local v20    # "spanLimit":I
    :cond_5
    if-eqz p6, :cond_6

    add-int/lit8 v22, p5, 0x1

    .line 638
    .local v22, "target":I
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v17, v3, p3

    .line 640
    .local v17, "limit":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v4

    .line 641
    const-class v7, Landroid/text/style/MetricAffectingSpan;

    .line 640
    move/from16 v0, v17

    invoke-interface {v3, v5, v0, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    .line 641
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    .line 640
    sub-int v20, v3, v5

    .line 642
    .restart local v20    # "spanLimit":I
    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_7

    .line 648
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v4

    .line 649
    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/TextLine;->mStart:I

    add-int v7, v7, v20

    const-class v9, Landroid/text/style/MetricAffectingSpan;

    .line 648
    invoke-interface {v3, v5, v7, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/text/style/MetricAffectingSpan;

    .line 650
    .local v21, "spans":[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v21

    invoke-static {v0, v3, v5}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "spans":[Landroid/text/style/MetricAffectingSpan;
    check-cast v21, [Landroid/text/style/MetricAffectingSpan;

    .line 652
    .restart local v21    # "spans":[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v21

    array-length v3, v0

    if-lez v3, :cond_4

    .line 653
    const/16 v18, 0x0

    .line 654
    .local v18, "replacement":Landroid/text/style/ReplacementSpan;
    const/16 v16, 0x0

    .end local v18    # "replacement":Landroid/text/style/ReplacementSpan;
    .local v16, "j":I
    :goto_5
    move-object/from16 v0, v21

    array-length v3, v0

    move/from16 v0, v16

    if-ge v0, v3, :cond_9

    .line 655
    aget-object v19, v21, v16

    .line 656
    .local v19, "span":Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v19

    instance-of v3, v0, Landroid/text/style/ReplacementSpan;

    if-eqz v3, :cond_8

    move-object/from16 v18, v19

    .line 657
    check-cast v18, Landroid/text/style/ReplacementSpan;

    .line 654
    :goto_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 637
    .end local v16    # "j":I
    .end local v17    # "limit":I
    .end local v19    # "span":Landroid/text/style/MetricAffectingSpan;
    .end local v20    # "spanLimit":I
    .end local v21    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .end local v22    # "target":I
    :cond_6
    move/from16 v22, p5

    .restart local v22    # "target":I
    goto :goto_3

    .line 645
    .restart local v17    # "limit":I
    .restart local v20    # "spanLimit":I
    :cond_7
    move/from16 v4, v20

    goto :goto_4

    .line 659
    .restart local v16    # "j":I
    .restart local v19    # "span":Landroid/text/style/MetricAffectingSpan;
    .restart local v21    # "spans":[Landroid/text/style/MetricAffectingSpan;
    :cond_8
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_6

    .line 663
    .end local v19    # "span":Landroid/text/style/MetricAffectingSpan;
    :cond_9
    if-eqz v18, :cond_4

    .line 666
    if-eqz p6, :cond_a

    .end local v20    # "spanLimit":I
    :goto_7
    return v20

    .restart local v20    # "spanLimit":I
    :cond_a
    move/from16 v20, v4

    goto :goto_7

    .line 671
    .end local v16    # "j":I
    .end local v17    # "limit":I
    .end local v21    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .end local v22    # "target":I
    :cond_b
    const/4 v6, 0x0

    .restart local v6    # "dir":I
    goto/16 :goto_1

    .line 672
    :cond_c
    const/4 v8, 0x2

    .restart local v8    # "cursorOpt":I
    goto/16 :goto_2

    .line 677
    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v11, v3, v4

    .line 678
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v12, v3, v20

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v14, v3, p5

    move-object v9, v2

    move v13, v6

    move v15, v8

    .line 677
    invoke-virtual/range {v9 .. v15}, Landroid/text/TextPaint;->getTextRunCursor(Ljava/lang/CharSequence;IIIII)I

    move-result v3

    .line 678
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    .line 677
    sub-int/2addr v3, v5

    return v3
.end method

.method private getRunAdvance(Landroid/text/TextPaint;IIIIZI)F
    .locals 9
    .param p1, "wp"    # Landroid/text/TextPaint;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "runIsRtl"    # Z
    .param p7, "offset"    # I

    .prologue
    .line 728
    iget-boolean v0, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v0, :cond_0

    .line 729
    iget-object v1, p0, Landroid/text/TextLine;->mChars:[C

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/text/TextPaint;->getRunAdvance([CIIIIZI)F

    move-result v0

    return v0

    .line 731
    :cond_0
    iget v8, p0, Landroid/text/TextLine;->mStart:I

    .line 732
    .local v8, "delta":I
    iget-object v1, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v2, v8, p2

    add-int v3, v8, p3

    .line 733
    add-int v4, v8, p4

    add-int v5, v8, p5

    add-int v7, v8, p7

    move-object v0, p1

    move v6, p6

    .line 732
    invoke-virtual/range {v0 .. v7}, Landroid/text/TextPaint;->getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F

    move-result v0

    return v0
.end method

.method private handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 24
    .param p1, "replacement"    # Landroid/text/style/ReplacementSpan;
    .param p2, "wp"    # Landroid/text/TextPaint;
    .param p3, "start"    # I
    .param p4, "limit"    # I
    .param p5, "runIsRtl"    # Z
    .param p6, "c"    # Landroid/graphics/Canvas;
    .param p7, "x"    # F
    .param p8, "top"    # I
    .param p9, "y"    # I
    .param p10, "bottom"    # I
    .param p11, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p12, "needWidth"    # Z

    .prologue
    .line 876
    const/16 v23, 0x0

    .line 878
    .local v23, "ret":F
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v4, v1, p3

    .line 879
    .local v4, "textStart":I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v1, p4

    .line 881
    .local v5, "textLimit":I
    if-nez p12, :cond_0

    if-eqz p6, :cond_2

    if-eqz p5, :cond_2

    .line 882
    :cond_0
    const/4 v7, 0x0

    .line 883
    .local v7, "previousTop":I
    const/4 v8, 0x0

    .line 884
    .local v8, "previousAscent":I
    const/4 v9, 0x0

    .line 885
    .local v9, "previousDescent":I
    const/4 v10, 0x0

    .line 886
    .local v10, "previousBottom":I
    const/4 v11, 0x0

    .line 888
    .local v11, "previousLeading":I
    if-eqz p11, :cond_6

    const/16 v22, 0x1

    .line 890
    .local v22, "needUpdateMetrics":Z
    :goto_0
    if-eqz v22, :cond_1

    .line 891
    move-object/from16 v0, p11

    iget v7, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 892
    move-object/from16 v0, p11

    iget v8, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 893
    move-object/from16 v0, p11

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 894
    move-object/from16 v0, p11

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 895
    move-object/from16 v0, p11

    iget v11, v0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 898
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p11

    invoke-virtual/range {v1 .. v6}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v1

    int-to-float v0, v1

    move/from16 v23, v0

    .line 900
    if-eqz v22, :cond_2

    move-object/from16 v6, p11

    .line 901
    invoke-static/range {v6 .. v11}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    .line 906
    .end local v7    # "previousTop":I
    .end local v8    # "previousAscent":I
    .end local v9    # "previousDescent":I
    .end local v10    # "previousBottom":I
    .end local v11    # "previousLeading":I
    .end local v22    # "needUpdateMetrics":Z
    :cond_2
    if-eqz p6, :cond_4

    .line 907
    if-eqz p5, :cond_3

    .line 908
    sub-float p7, p7, v23

    .line 910
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v12, p1

    move-object/from16 v13, p6

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, p7

    move/from16 v18, p8

    move/from16 v19, p9

    move/from16 v20, p10

    move-object/from16 v21, p2

    invoke-virtual/range {v12 .. v21}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    .line 914
    :cond_4
    if-eqz p5, :cond_5

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    .end local v23    # "ret":F
    :cond_5
    return v23

    .line 888
    .restart local v7    # "previousTop":I
    .restart local v8    # "previousAscent":I
    .restart local v9    # "previousDescent":I
    .restart local v10    # "previousBottom":I
    .restart local v11    # "previousLeading":I
    .restart local v23    # "ret":F
    :cond_6
    const/16 v22, 0x0

    .restart local v22    # "needUpdateMetrics":Z
    goto :goto_0
.end method

.method private handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 37
    .param p1, "start"    # I
    .param p2, "measureLimit"    # I
    .param p3, "limit"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "c"    # Landroid/graphics/Canvas;
    .param p6, "x"    # F
    .param p7, "top"    # I
    .param p8, "y"    # I
    .param p9, "bottom"    # I
    .param p10, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p11, "needWidth"    # Z

    .prologue
    .line 989
    move/from16 v0, p2

    move/from16 v1, p1

    if-lt v0, v1, :cond_0

    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_1

    .line 990
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "measureLimit ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ") is out of "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 991
    const-string/jumbo v7, "start ("

    .line 990
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 991
    const-string/jumbo v7, ") and limit ("

    .line 990
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 991
    const-string/jumbo v7, ") bounds"

    .line 990
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 995
    :cond_1
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_3

    .line 996
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 997
    .local v4, "wp":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 998
    if-eqz p10, :cond_2

    .line 999
    move-object/from16 v0, p10

    invoke-static {v0, v4}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 1001
    :cond_2
    const/4 v3, 0x0

    return v3

    .line 1005
    .end local v4    # "wp":Landroid/text/TextPaint;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v3, :cond_4

    .line 1006
    const/16 v32, 0x0

    .line 1014
    .local v32, "needsSpanMeasurement":Z
    :goto_0
    if-nez v32, :cond_7

    .line 1015
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 1016
    .restart local v4    # "wp":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1017
    invoke-virtual {v4}, Landroid/text/TextPaint;->getHyphenEdit()I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/TextLine;->adjustHyphenEdit(III)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    .line 1019
    const/16 v18, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v6, p3

    move/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move-object/from16 v15, p10

    move/from16 v16, p11

    move/from16 v17, p2

    .line 1018
    invoke-direct/range {v3 .. v18}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZILjava/util/ArrayList;)F

    move-result v3

    return v3

    .line 1008
    .end local v4    # "wp":Landroid/text/TextPaint;
    .end local v32    # "needsSpanMeasurement":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/TextLine;->mStart:I

    add-int v7, v7, p1

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/TextLine;->mStart:I

    add-int v10, v10, p3

    invoke-virtual {v3, v5, v7, v10}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/TextLine;->mStart:I

    add-int v7, v7, p1

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/TextLine;->mStart:I

    add-int v10, v10, p3

    invoke-virtual {v3, v5, v7, v10}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 1010
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v3, v3, Landroid/text/SpanSet;->numberOfSpans:I

    if-nez v3, :cond_5

    .line 1011
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v3, v3, Landroid/text/SpanSet;->numberOfSpans:I

    if-eqz v3, :cond_6

    const/16 v32, 0x1

    .restart local v32    # "needsSpanMeasurement":Z
    goto/16 :goto_0

    .line 1010
    .end local v32    # "needsSpanMeasurement":Z
    :cond_5
    const/16 v32, 0x1

    .restart local v32    # "needsSpanMeasurement":Z
    goto/16 :goto_0

    .line 1011
    .end local v32    # "needsSpanMeasurement":Z
    :cond_6
    const/16 v32, 0x0

    .restart local v32    # "needsSpanMeasurement":Z
    goto/16 :goto_0

    .line 1027
    :cond_7
    move/from16 v34, p6

    .line 1028
    .local v34, "originalX":F
    move/from16 v8, p1

    .local v8, "i":I
    :goto_1
    move/from16 v0, p2

    if-ge v8, v0, :cond_1a

    .line 1029
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 1030
    .restart local v4    # "wp":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1032
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v8

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/TextLine;->mStart:I

    add-int v7, v7, p3

    invoke-virtual {v3, v5, v7}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v3

    .line 1033
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    .line 1032
    sub-int v28, v3, v5

    .line 1034
    .local v28, "inext":I
    move/from16 v0, v28

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1036
    .local v9, "mlimit":I
    const/4 v6, 0x0

    .line 1038
    .local v6, "replacement":Landroid/text/style/ReplacementSpan;
    const/16 v29, 0x0

    .end local v6    # "replacement":Landroid/text/style/ReplacementSpan;
    .local v29, "j":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v3, v3, Landroid/text/SpanSet;->numberOfSpans:I

    move/from16 v0, v29

    if-ge v0, v3, :cond_b

    .line 1041
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spanStarts:[I

    aget v3, v3, v29

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v9

    if-ge v3, v5, :cond_8

    .line 1042
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spanEnds:[I

    aget v3, v3, v29

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v8

    if-gt v3, v5, :cond_9

    .line 1038
    :cond_8
    :goto_3
    add-int/lit8 v29, v29, 0x1

    goto :goto_2

    .line 1043
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v3, [Landroid/text/style/MetricAffectingSpan;

    aget-object v36, v3, v29

    .line 1044
    .local v36, "span":Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v36

    instance-of v3, v0, Landroid/text/style/ReplacementSpan;

    if-eqz v3, :cond_a

    move-object/from16 v6, v36

    .line 1045
    check-cast v6, Landroid/text/style/ReplacementSpan;

    .local v6, "replacement":Landroid/text/style/ReplacementSpan;
    goto :goto_3

    .line 1049
    .end local v6    # "replacement":Landroid/text/style/ReplacementSpan;
    :cond_a
    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/text/style/MetricAffectingSpan;->updateDrawState(Landroid/text/TextPaint;)V

    goto :goto_3

    .line 1053
    .end local v36    # "span":Landroid/text/style/MetricAffectingSpan;
    :cond_b
    if-eqz v6, :cond_e

    .line 1055
    if-nez p11, :cond_c

    move/from16 v0, p2

    if-ge v9, v0, :cond_d

    :cond_c
    const/16 v17, 0x1

    :goto_4
    move-object/from16 v5, p0

    move-object v7, v4

    move/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    move-object/from16 v16, p10

    .line 1054
    invoke-direct/range {v5 .. v17}, Landroid/text/TextLine;->handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v3

    add-float p6, p6, v3

    .line 1028
    :goto_5
    move/from16 v8, v28

    goto/16 :goto_1

    .line 1055
    :cond_d
    const/16 v17, 0x0

    goto :goto_4

    .line 1059
    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/TextLine;->mActivePaint:Landroid/text/TextPaint;

    .line 1060
    .local v11, "activePaint":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v11, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1061
    move v12, v8

    .line 1062
    .local v12, "activeStart":I
    move v13, v9

    .line 1063
    .local v13, "activeEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

    move-object/from16 v27, v0

    .line 1064
    .local v27, "decorationInfo":Landroid/text/TextLine$DecorationInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1065
    move/from16 v29, v8

    :goto_6
    move/from16 v0, v29

    if-ge v0, v9, :cond_17

    .line 1066
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v5, v29

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/TextLine;->mStart:I

    add-int v7, v7, v28

    invoke-virtual {v3, v5, v7}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v3

    .line 1067
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    .line 1066
    sub-int v30, v3, v5

    .line 1069
    .local v30, "jnext":I
    move/from16 v0, v30

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v33

    .line 1070
    .local v33, "offset":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1071
    const/16 v31, 0x0

    .local v31, "k":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v3, v3, Landroid/text/SpanSet;->numberOfSpans:I

    move/from16 v0, v31

    if-ge v0, v3, :cond_11

    .line 1073
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spanStarts:[I

    aget v3, v3, v31

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v5, v33

    if-ge v3, v5, :cond_f

    .line 1074
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spanEnds:[I

    aget v3, v3, v31

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v5, v29

    if-gt v3, v5, :cond_10

    .line 1071
    :cond_f
    :goto_8
    add-int/lit8 v31, v31, 0x1

    goto :goto_7

    .line 1076
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v3, [Landroid/text/style/CharacterStyle;

    aget-object v35, v3, v31

    .line 1077
    .local v35, "span":Landroid/text/style/CharacterStyle;
    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    goto :goto_8

    .line 1080
    .end local v35    # "span":Landroid/text/style/CharacterStyle;
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v4, v1}, Landroid/text/TextLine;->extractDecorationInfo(Landroid/text/TextPaint;Landroid/text/TextLine$DecorationInfo;)V

    .line 1082
    move/from16 v0, v29

    if-ne v0, v8, :cond_14

    .line 1086
    invoke-virtual {v11, v4}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1107
    :cond_12
    :goto_9
    move/from16 v13, v30

    .line 1108
    invoke-virtual/range {v27 .. v27}, Landroid/text/TextLine$DecorationInfo;->hasDecoration()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1109
    invoke-virtual/range {v27 .. v27}, Landroid/text/TextLine$DecorationInfo;->copyInfo()Landroid/text/TextLine$DecorationInfo;

    move-result-object v26

    .line 1110
    .local v26, "copy":Landroid/text/TextLine$DecorationInfo;
    move/from16 v0, v29

    move-object/from16 v1, v26

    iput v0, v1, Landroid/text/TextLine$DecorationInfo;->start:I

    .line 1111
    move/from16 v0, v30

    move-object/from16 v1, v26

    iput v0, v1, Landroid/text/TextLine$DecorationInfo;->end:I

    .line 1112
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1065
    .end local v26    # "copy":Landroid/text/TextLine$DecorationInfo;
    :cond_13
    move/from16 v29, v30

    goto/16 :goto_6

    .line 1087
    :cond_14
    invoke-virtual {v4, v11}, Landroid/text/TextPaint;->hasEqualAttributes(Landroid/text/TextPaint;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 1092
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getHyphenEdit()I

    move-result v3

    .line 1091
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v3}, Landroid/text/TextLine;->adjustHyphenEdit(III)I

    move-result v3

    invoke-virtual {v11, v3}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    .line 1094
    if-nez p11, :cond_15

    move/from16 v0, p2

    if-ge v13, v0, :cond_16

    :cond_15
    const/16 v23, 0x1

    .line 1095
    :goto_a
    invoke-static {v13, v9}, Ljava/lang/Math;->min(II)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v10, p0

    move v14, v8

    move/from16 v15, v28

    move/from16 v16, p4

    move-object/from16 v17, p5

    move/from16 v18, p6

    move/from16 v19, p7

    move/from16 v20, p8

    move/from16 v21, p9

    move-object/from16 v22, p10

    .line 1093
    invoke-direct/range {v10 .. v25}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZILjava/util/ArrayList;)F

    move-result v3

    add-float p6, p6, v3

    .line 1097
    move/from16 v12, v29

    .line 1098
    invoke-virtual {v11, v4}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1099
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_9

    .line 1094
    :cond_16
    const/16 v23, 0x0

    goto :goto_a

    .line 1117
    .end local v30    # "jnext":I
    .end local v31    # "k":I
    .end local v33    # "offset":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getHyphenEdit()I

    move-result v3

    .line 1116
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v3}, Landroid/text/TextLine;->adjustHyphenEdit(III)I

    move-result v3

    invoke-virtual {v11, v3}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    .line 1119
    if-nez p11, :cond_18

    move/from16 v0, p2

    if-ge v13, v0, :cond_19

    :cond_18
    const/16 v23, 0x1

    .line 1120
    :goto_b
    invoke-static {v13, v9}, Ljava/lang/Math;->min(II)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v10, p0

    move v14, v8

    move/from16 v15, v28

    move/from16 v16, p4

    move-object/from16 v17, p5

    move/from16 v18, p6

    move/from16 v19, p7

    move/from16 v20, p8

    move/from16 v21, p9

    move-object/from16 v22, p10

    .line 1118
    invoke-direct/range {v10 .. v25}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZILjava/util/ArrayList;)F

    move-result v3

    add-float p6, p6, v3

    goto/16 :goto_5

    .line 1119
    :cond_19
    const/16 v23, 0x0

    goto :goto_b

    .line 1123
    .end local v4    # "wp":Landroid/text/TextPaint;
    .end local v9    # "mlimit":I
    .end local v11    # "activePaint":Landroid/text/TextPaint;
    .end local v12    # "activeStart":I
    .end local v13    # "activeEnd":I
    .end local v27    # "decorationInfo":Landroid/text/TextLine$DecorationInfo;
    .end local v28    # "inext":I
    .end local v29    # "j":I
    :cond_1a
    sub-float v3, p6, v34

    return v3
.end method

.method private handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZILjava/util/ArrayList;)F
    .locals 47
    .param p1, "wp"    # Landroid/text/TextPaint;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "runIsRtl"    # Z
    .param p7, "c"    # Landroid/graphics/Canvas;
    .param p8, "x"    # F
    .param p9, "top"    # I
    .param p10, "y"    # I
    .param p11, "bottom"    # I
    .param p12, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p13, "needWidth"    # Z
    .param p14, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/TextPaint;",
            "IIIIZ",
            "Landroid/graphics/Canvas;",
            "FIII",
            "Landroid/graphics/Paint$FontMetricsInt;",
            "ZI",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/TextLine$DecorationInfo;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 763
    .local p15, "decorations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextLine$DecorationInfo;>;"
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mAddedWidth:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setWordSpacing(F)V

    .line 765
    if-eqz p12, :cond_0

    .line 766
    move-object/from16 v0, p12

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 770
    :cond_0
    move/from16 v0, p3

    move/from16 v1, p2

    if-ne v0, v1, :cond_1

    .line 771
    const/4 v2, 0x0

    return v2

    .line 774
    :cond_1
    const/16 v46, 0x0

    .line 776
    .local v46, "totalWidth":F
    if-nez p15, :cond_8

    const/16 v43, 0x0

    .line 777
    .local v43, "numDecorations":I
    :goto_0
    if-nez p13, :cond_2

    if-eqz p7, :cond_3

    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    if-nez v2, :cond_2

    if-eqz v43, :cond_9

    :cond_2
    :goto_1
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p14

    .line 778
    invoke-direct/range {v2 .. v9}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI)F

    move-result v46

    .line 781
    :cond_3
    if-eqz p7, :cond_d

    .line 783
    if-eqz p6, :cond_a

    .line 784
    sub-float v3, p8, v46

    .line 785
    .local v3, "leftX":F
    move/from16 v5, p8

    .line 791
    .local v5, "rightX":F
    :goto_2
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    if-eqz v2, :cond_4

    .line 792
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v44

    .line 793
    .local v44, "previousColor":I
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v45

    .line 795
    .local v45, "previousStyle":Landroid/graphics/Paint$Style;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 796
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 797
    move/from16 v0, p9

    int-to-float v4, v0

    move/from16 v0, p11

    int-to-float v6, v0

    move-object/from16 v2, p7

    move-object/from16 v7, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 799
    move-object/from16 v0, p1

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 800
    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 803
    .end local v44    # "previousColor":I
    .end local v45    # "previousStyle":Landroid/graphics/Paint$Style;
    :cond_4
    if-eqz v43, :cond_c

    .line 804
    const/16 v41, 0x0

    .local v41, "i":I
    :goto_3
    move/from16 v0, v41

    move/from16 v1, v43

    if-ge v0, v1, :cond_c

    .line 805
    move-object/from16 v0, p15

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/text/TextLine$DecorationInfo;

    .line 807
    .local v42, "info":Landroid/text/TextLine$DecorationInfo;
    move-object/from16 v0, v42

    iget v2, v0, Landroid/text/TextLine$DecorationInfo;->start:I

    move/from16 v0, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 808
    .local v13, "decorationStart":I
    move-object/from16 v0, v42

    iget v2, v0, Landroid/text/TextLine$DecorationInfo;->end:I

    move/from16 v0, p14

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v21

    .local v21, "decorationEnd":I
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    .line 809
    invoke-direct/range {v6 .. v13}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI)F

    move-result v40

    .local v40, "decorationStartAdvance":F
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, p3

    move/from16 v18, p4

    move/from16 v19, p5

    move/from16 v20, p6

    .line 811
    invoke-direct/range {v14 .. v21}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI)F

    move-result v39

    .line 814
    .local v39, "decorationEndAdvance":F
    if-eqz p6, :cond_b

    .line 815
    sub-float v27, v5, v39

    .line 816
    .local v27, "decorationXLeft":F
    sub-float v28, v5, v40

    .line 825
    .local v28, "decorationXRight":F
    :goto_4
    move-object/from16 v0, v42

    iget v2, v0, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    if-eqz v2, :cond_5

    .line 826
    move-object/from16 v0, v42

    iget v0, v0, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    move/from16 v24, v0

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getUnderlinePosition()F

    move-result v25

    .line 827
    move-object/from16 v0, v42

    iget v0, v0, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    move/from16 v26, v0

    move/from16 v0, p10

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v22, p1

    move-object/from16 v23, p7

    .line 826
    invoke-static/range {v22 .. v29}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    .line 829
    :cond_5
    move-object/from16 v0, v42

    iget-boolean v2, v0, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    if-eqz v2, :cond_6

    .line 831
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Paint;->getUnderlineThickness()F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v26

    .line 832
    .local v26, "thickness":F
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getUnderlinePosition()F

    move-result v25

    .line 833
    move/from16 v0, p10

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v22, p1

    move-object/from16 v23, p7

    .line 832
    invoke-static/range {v22 .. v29}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    .line 836
    .end local v26    # "thickness":F
    :cond_6
    move-object/from16 v0, v42

    iget-boolean v2, v0, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    if-eqz v2, :cond_7

    .line 838
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Paint;->getStrikeThruThickness()F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v26

    .line 839
    .restart local v26    # "thickness":F
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStrikeThruPosition()F

    move-result v25

    .line 840
    move/from16 v0, p10

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v22, p1

    move-object/from16 v23, p7

    .line 839
    invoke-static/range {v22 .. v29}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    .line 804
    .end local v26    # "thickness":F
    :cond_7
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_3

    .line 776
    .end local v3    # "leftX":F
    .end local v5    # "rightX":F
    .end local v13    # "decorationStart":I
    .end local v21    # "decorationEnd":I
    .end local v27    # "decorationXLeft":F
    .end local v28    # "decorationXRight":F
    .end local v39    # "decorationEndAdvance":F
    .end local v40    # "decorationStartAdvance":F
    .end local v41    # "i":I
    .end local v42    # "info":Landroid/text/TextLine$DecorationInfo;
    .end local v43    # "numDecorations":I
    :cond_8
    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->size()I

    move-result v43

    .restart local v43    # "numDecorations":I
    goto/16 :goto_0

    .line 777
    :cond_9
    if-eqz p6, :cond_3

    goto/16 :goto_1

    .line 787
    :cond_a
    move/from16 v3, p8

    .line 788
    .restart local v3    # "leftX":F
    add-float v5, p8, v46

    .restart local v5    # "rightX":F
    goto/16 :goto_2

    .line 818
    .restart local v13    # "decorationStart":I
    .restart local v21    # "decorationEnd":I
    .restart local v39    # "decorationEndAdvance":F
    .restart local v40    # "decorationStartAdvance":F
    .restart local v41    # "i":I
    .restart local v42    # "info":Landroid/text/TextLine$DecorationInfo;
    :cond_b
    add-float v27, v3, v40

    .line 819
    .restart local v27    # "decorationXLeft":F
    add-float v28, v3, v39

    .restart local v28    # "decorationXRight":F
    goto/16 :goto_4

    .line 846
    .end local v13    # "decorationStart":I
    .end local v21    # "decorationEnd":I
    .end local v27    # "decorationXLeft":F
    .end local v28    # "decorationXRight":F
    .end local v39    # "decorationEndAdvance":F
    .end local v40    # "decorationStartAdvance":F
    .end local v41    # "i":I
    .end local v42    # "info":Landroid/text/TextLine$DecorationInfo;
    :cond_c
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->baselineShift:I

    add-int v38, p10, v2

    move-object/from16 v29, p0

    move-object/from16 v30, p7

    move-object/from16 v31, p1

    move/from16 v32, p2

    move/from16 v33, p3

    move/from16 v34, p4

    move/from16 v35, p5

    move/from16 v36, p6

    move/from16 v37, v3

    .line 845
    invoke-direct/range {v29 .. v38}, Landroid/text/TextLine;->drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V

    .line 849
    .end local v3    # "leftX":F
    .end local v5    # "rightX":F
    :cond_d
    if-eqz p6, :cond_e

    move/from16 v0, v46

    neg-float v0, v0

    move/from16 v46, v0

    .end local v46    # "totalWidth":F
    :cond_e
    return v46
.end method

.method public static isLineEndSpace(C)Z
    .locals 2
    .param p0, "ch"    # C

    .prologue
    const/4 v0, 0x1

    .line 1191
    const/16 v1, 0x20

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x1680

    if-eq p0, v1, :cond_0

    .line 1192
    const/16 v1, 0x2000

    if-gt v1, p0, :cond_2

    const/16 v1, 0x200a

    if-gt p0, v1, :cond_2

    const/16 v1, 0x2007

    if-ne p0, v1, :cond_0

    .line 1193
    :cond_2
    const/16 v1, 0x205f

    if-eq p0, v1, :cond_0

    const/16 v1, 0x3000

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStretchableWhitespace(I)Z
    .locals 2
    .param p1, "ch"    # I

    .prologue
    const/4 v0, 0x1

    .line 1169
    const/16 v1, 0x20

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa0

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F
    .locals 12
    .param p1, "start"    # I
    .param p2, "offset"    # I
    .param p3, "limit"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 417
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    return v0
.end method

.method private nextStretchableSpace(II)I
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1173
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 1174
    iget-boolean v2, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/text/TextLine;->mChars:[C

    aget-char v0, v2, v1

    .line 1175
    .local v0, "c":C
    :goto_1
    invoke-direct {p0, v0}, Landroid/text/TextLine;->isStretchableWhitespace(I)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 1174
    .end local v0    # "c":C
    :cond_0
    iget-object v2, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .restart local v0    # "c":C
    goto :goto_1

    .line 1173
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1177
    .end local v0    # "c":C
    :cond_2
    return p2
.end method

.method static obtain()Landroid/text/TextLine;
    .locals 5

    .prologue
    .line 87
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v3

    .line 88
    :try_start_0
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v0, v2

    .local v0, "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 89
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 90
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v1, v2, v0

    .line 91
    .local v1, "tl":Landroid/text/TextLine;
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    const/4 v4, 0x0

    aput-object v4, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 92
    return-object v1

    .end local v1    # "tl":Landroid/text/TextLine;
    :cond_1
    monitor-exit v3

    .line 96
    new-instance v1, Landroid/text/TextLine;

    invoke-direct {v1}, Landroid/text/TextLine;-><init>()V

    .line 100
    .restart local v1    # "tl":Landroid/text/TextLine;
    return-object v1

    .line 87
    .end local v1    # "tl":Landroid/text/TextLine;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static recycle(Landroid/text/TextLine;)Landroid/text/TextLine;
    .locals 4
    .param p0, "tl"    # Landroid/text/TextLine;

    .prologue
    const/4 v3, 0x0

    .line 111
    iput-object v3, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 112
    iput-object v3, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 113
    iput-object v3, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 114
    iput-object v3, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 115
    iput-object v3, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    .line 116
    iput-object v3, p0, Landroid/text/TextLine;->mChars:[C

    .line 118
    iget-object v1, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 119
    iget-object v1, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 120
    iget-object v1, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 122
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v2

    .line 123
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 124
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 125
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aput-object p0, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 130
    return-object v3

    .line 123
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V
    .locals 1
    .param p0, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p1, "previousTop"    # I
    .param p2, "previousAscent"    # I
    .param p3, "previousDescent"    # I
    .param p4, "previousBottom"    # I
    .param p5, "previousLeading"    # I

    .prologue
    .line 700
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 701
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 702
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 703
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 704
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 705
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;FIII)V
    .locals 18
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "top"    # I
    .param p4, "y"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 224
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-nez v1, :cond_1

    .line 225
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_0

    .line 226
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v10}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    .line 227
    return-void

    .line 229
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_1

    .line 230
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v10}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    .line 231
    return-void

    .line 235
    :cond_1
    const/4 v12, 0x0

    .line 236
    .local v12, "h":F
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v0, v1, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v17, v0

    .line 238
    .local v17, "runs":[I
    move-object/from16 v0, v17

    array-length v1, v0

    add-int/lit8 v14, v1, -0x2

    .line 239
    .local v14, "lastRunIndex":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, v17

    array-length v1, v0

    if-ge v13, v1, :cond_c

    .line 240
    aget v16, v17, v13

    .line 241
    .local v16, "runStart":I
    add-int/lit8 v1, v13, 0x1

    aget v1, v17, v1

    const v2, 0x3ffffff

    and-int/2addr v1, v2

    add-int v15, v16, v1

    .line 242
    .local v15, "runLimit":I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    if-le v15, v1, :cond_2

    .line 243
    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/TextLine;->mLen:I

    .line 245
    :cond_2
    add-int/lit8 v1, v13, 0x1

    aget v1, v17, v1

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    const/4 v5, 0x1

    .line 247
    .local v5, "runIsRtl":Z
    :goto_1
    move/from16 v3, v16

    .line 248
    .local v3, "segstart":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_5

    move/from16 v4, v16

    .local v4, "j":I
    :goto_2
    if-gt v4, v15, :cond_b

    .line 249
    const/4 v11, 0x0

    .line 250
    .local v11, "codept":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_6

    if-ge v4, v15, :cond_6

    .line 251
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mChars:[C

    aget-char v11, v1, v4

    .line 252
    const v1, 0xd800

    if-lt v11, v1, :cond_6

    const v1, 0xdc00

    if-ge v11, v1, :cond_6

    add-int/lit8 v1, v4, 0x1

    if-ge v1, v15, :cond_6

    .line 253
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mChars:[C

    invoke-static {v1, v4}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v11

    .line 254
    const v1, 0xffff

    if-le v11, v1, :cond_6

    .line 255
    add-int/lit8 v4, v4, 0x1

    .line 248
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 245
    .end local v3    # "segstart":I
    .end local v4    # "j":I
    .end local v5    # "runIsRtl":Z
    .end local v11    # "codept":I
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "runIsRtl":Z
    goto :goto_1

    .line 248
    .restart local v3    # "segstart":I
    :cond_5
    move v4, v15

    .restart local v4    # "j":I
    goto :goto_2

    .line 261
    .restart local v11    # "codept":I
    :cond_6
    if-eq v4, v15, :cond_7

    const/16 v1, 0x9

    if-ne v11, v1, :cond_3

    .line 262
    :cond_7
    add-float v6, p2, v12

    .line 263
    if-ne v13, v14, :cond_8

    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    if-eq v4, v1, :cond_a

    :cond_8
    const/4 v10, 0x1

    :goto_4
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    .line 262
    invoke-direct/range {v1 .. v10}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    move-result v1

    add-float/2addr v12, v1

    .line 265
    const/16 v1, 0x9

    if-ne v11, v1, :cond_9

    .line 266
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v2, v2

    mul-float/2addr v2, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/text/TextLine;->nextTab(F)F

    move-result v2

    mul-float v12, v1, v2

    .line 268
    :cond_9
    add-int/lit8 v3, v4, 0x1

    goto :goto_3

    .line 263
    :cond_a
    const/4 v10, 0x0

    goto :goto_4

    .line 239
    .end local v11    # "codept":I
    :cond_b
    add-int/lit8 v13, v13, 0x2

    goto/16 :goto_0

    .line 272
    .end local v3    # "segstart":I
    .end local v4    # "j":I
    .end local v5    # "runIsRtl":Z
    .end local v15    # "runLimit":I
    .end local v16    # "runStart":I
    :cond_c
    return-void
.end method

.method getOffsetToLeftRightOf(IZ)I
    .locals 29
    .param p1, "cursor"    # I
    .param p2, "toLeft"    # Z

    .prologue
    .line 450
    const/16 v17, 0x0

    .line 451
    .local v17, "lineStart":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v16, v0

    .line 452
    .local v16, "lineEnd":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mDir:I

    const/4 v7, -0x1

    if-ne v2, v7, :cond_2

    const/16 v20, 0x1

    .line 453
    .local v20, "paraIsRtl":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v0, v2, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v27, v0

    .line 455
    .local v27, "runs":[I
    const/16 v26, 0x0

    .line 450
    .local v26, "runLevel":I
    const/4 v4, 0x0

    .line 455
    .local v4, "runStart":I
    move/from16 v5, v16

    .local v5, "runLimit":I
    const/16 v18, -0x1

    .line 456
    .local v18, "newCaret":I
    const/16 v28, 0x0

    .line 458
    .local v28, "trailing":Z
    if-nez p1, :cond_3

    .line 459
    const/4 v3, -0x2

    .line 537
    .local v3, "runIndex":I
    :cond_0
    :goto_1
    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    const/4 v8, 0x1

    .line 538
    .local v8, "advance":Z
    :goto_2
    if-eqz v8, :cond_10

    const/4 v2, 0x2

    :goto_3
    add-int v10, v3, v2

    .line 539
    .local v10, "otherRunIndex":I
    if-ltz v10, :cond_18

    move-object/from16 v0, v27

    array-length v2, v0

    if-ge v10, v2, :cond_18

    .line 540
    aget v2, v27, v10

    add-int/lit8 v11, v2, 0x0

    .line 542
    .local v11, "otherRunStart":I
    add-int/lit8 v2, v10, 0x1

    aget v2, v27, v2

    const v7, 0x3ffffff

    and-int/2addr v2, v7

    .line 541
    add-int v12, v11, v2

    .line 543
    .local v12, "otherRunLimit":I
    move/from16 v0, v16

    if-le v12, v0, :cond_1

    .line 544
    move/from16 v12, v16

    .line 546
    :cond_1
    add-int/lit8 v2, v10, 0x1

    aget v2, v27, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v19, v2, 0x3f

    .line 548
    .local v19, "otherRunLevel":I
    and-int/lit8 v2, v19, 0x1

    if-eqz v2, :cond_11

    const/4 v13, 0x1

    .line 550
    .local v13, "otherRunIsRtl":Z
    :goto_4
    move/from16 v0, p2

    if-ne v0, v13, :cond_12

    const/4 v8, 0x1

    .line 551
    :goto_5
    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_15

    .line 554
    if-eqz v8, :cond_13

    move v14, v11

    :goto_6
    move-object/from16 v9, p0

    move v15, v8

    .line 552
    invoke-direct/range {v9 .. v15}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v18

    .line 555
    if-eqz v8, :cond_14

    .end local v12    # "otherRunLimit":I
    :goto_7
    move/from16 v0, v18

    if-ne v0, v12, :cond_16

    .line 558
    move v3, v10

    .line 559
    move/from16 v26, v19

    .line 560
    goto :goto_1

    .line 452
    .end local v3    # "runIndex":I
    .end local v4    # "runStart":I
    .end local v5    # "runLimit":I
    .end local v8    # "advance":Z
    .end local v10    # "otherRunIndex":I
    .end local v11    # "otherRunStart":I
    .end local v13    # "otherRunIsRtl":Z
    .end local v18    # "newCaret":I
    .end local v19    # "otherRunLevel":I
    .end local v20    # "paraIsRtl":Z
    .end local v26    # "runLevel":I
    .end local v27    # "runs":[I
    .end local v28    # "trailing":Z
    :cond_2
    const/16 v20, 0x0

    .restart local v20    # "paraIsRtl":Z
    goto :goto_0

    .line 460
    .restart local v4    # "runStart":I
    .restart local v5    # "runLimit":I
    .restart local v18    # "newCaret":I
    .restart local v26    # "runLevel":I
    .restart local v27    # "runs":[I
    .restart local v28    # "trailing":Z
    :cond_3
    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    .line 461
    move-object/from16 v0, v27

    array-length v3, v0

    .restart local v3    # "runIndex":I
    goto :goto_1

    .line 465
    .end local v3    # "runIndex":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "runIndex":I
    :goto_8
    move-object/from16 v0, v27

    array-length v2, v0

    if-ge v3, v2, :cond_7

    .line 466
    aget v2, v27, v3

    add-int/lit8 v4, v2, 0x0

    .line 467
    move/from16 v0, p1

    if-lt v0, v4, :cond_a

    .line 468
    add-int/lit8 v2, v3, 0x1

    aget v2, v27, v2

    const v7, 0x3ffffff

    and-int/2addr v2, v7

    add-int v5, v4, v2

    .line 469
    move/from16 v0, v16

    if-le v5, v0, :cond_5

    .line 470
    move/from16 v5, v16

    .line 472
    :cond_5
    move/from16 v0, p1

    if-ge v0, v5, :cond_a

    .line 473
    add-int/lit8 v2, v3, 0x1

    aget v2, v27, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v26, v2, 0x3f

    .line 475
    move/from16 v0, p1

    if-ne v0, v4, :cond_7

    .line 480
    add-int/lit8 v21, p1, -0x1

    .line 481
    .local v21, "pos":I
    const/16 v22, 0x0

    .local v22, "prevRunIndex":I
    :goto_9
    move-object/from16 v0, v27

    array-length v2, v0

    move/from16 v0, v22

    if-ge v0, v2, :cond_7

    .line 482
    aget v2, v27, v22

    add-int/lit8 v25, v2, 0x0

    .line 483
    .local v25, "prevRunStart":I
    move/from16 v0, v21

    move/from16 v1, v25

    if-lt v0, v1, :cond_9

    .line 485
    add-int/lit8 v2, v22, 0x1

    aget v2, v27, v2

    const v7, 0x3ffffff

    and-int/2addr v2, v7

    .line 484
    add-int v24, v25, v2

    .line 486
    .local v24, "prevRunLimit":I
    move/from16 v0, v24

    move/from16 v1, v16

    if-le v0, v1, :cond_6

    .line 487
    move/from16 v24, v16

    .line 489
    :cond_6
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_9

    .line 490
    add-int/lit8 v2, v22, 0x1

    aget v2, v27, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v23, v2, 0x3f

    .line 492
    .local v23, "prevRunLevel":I
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_9

    .line 494
    move/from16 v3, v22

    .line 495
    move/from16 v26, v23

    .line 496
    move/from16 v4, v25

    .line 497
    move/from16 v5, v24

    .line 498
    const/16 v28, 0x1

    .line 515
    .end local v21    # "pos":I
    .end local v22    # "prevRunIndex":I
    .end local v23    # "prevRunLevel":I
    .end local v24    # "prevRunLimit":I
    .end local v25    # "prevRunStart":I
    :cond_7
    move-object/from16 v0, v27

    array-length v2, v0

    if-eq v3, v2, :cond_0

    .line 516
    and-int/lit8 v2, v26, 0x1

    if-eqz v2, :cond_b

    const/4 v6, 0x1

    .line 517
    .local v6, "runIsRtl":Z
    :goto_a
    move/from16 v0, p2

    if-ne v0, v6, :cond_c

    const/4 v8, 0x1

    .line 518
    .restart local v8    # "advance":Z
    :goto_b
    if-eqz v8, :cond_d

    move v2, v5

    :goto_c
    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    move/from16 v0, v28

    if-eq v8, v0, :cond_0

    :cond_8
    move-object/from16 v2, p0

    move/from16 v7, p1

    .line 520
    invoke-direct/range {v2 .. v8}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v18

    .line 524
    if-eqz v8, :cond_e

    move v2, v5

    :goto_d
    move/from16 v0, v18

    if-eq v0, v2, :cond_0

    .line 525
    return v18

    .line 481
    .end local v6    # "runIsRtl":Z
    .end local v8    # "advance":Z
    .restart local v21    # "pos":I
    .restart local v22    # "prevRunIndex":I
    .restart local v25    # "prevRunStart":I
    :cond_9
    add-int/lit8 v22, v22, 0x2

    goto :goto_9

    .line 465
    .end local v21    # "pos":I
    .end local v22    # "prevRunIndex":I
    .end local v25    # "prevRunStart":I
    :cond_a
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_8

    .line 516
    :cond_b
    const/4 v6, 0x0

    .restart local v6    # "runIsRtl":Z
    goto :goto_a

    .line 517
    :cond_c
    const/4 v8, 0x0

    .restart local v8    # "advance":Z
    goto :goto_b

    :cond_d
    move v2, v4

    .line 518
    goto :goto_c

    :cond_e
    move v2, v4

    .line 524
    goto :goto_d

    .line 537
    .end local v6    # "runIsRtl":Z
    .end local v8    # "advance":Z
    :cond_f
    const/4 v8, 0x0

    .restart local v8    # "advance":Z
    goto/16 :goto_2

    .line 538
    :cond_10
    const/4 v2, -0x2

    goto/16 :goto_3

    .line 548
    .restart local v10    # "otherRunIndex":I
    .restart local v11    # "otherRunStart":I
    .restart local v12    # "otherRunLimit":I
    .restart local v19    # "otherRunLevel":I
    :cond_11
    const/4 v13, 0x0

    .restart local v13    # "otherRunIsRtl":Z
    goto/16 :goto_4

    .line 550
    :cond_12
    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_13
    move v14, v12

    .line 554
    goto/16 :goto_6

    :cond_14
    move v12, v11

    .line 555
    goto/16 :goto_7

    .line 566
    :cond_15
    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_16

    .line 568
    if-eqz v8, :cond_17

    move/from16 v18, v11

    .line 595
    .end local v11    # "otherRunStart":I
    .end local v12    # "otherRunLimit":I
    .end local v13    # "otherRunIsRtl":Z
    .end local v19    # "otherRunLevel":I
    :cond_16
    :goto_e
    return v18

    .line 568
    .restart local v11    # "otherRunStart":I
    .restart local v12    # "otherRunLimit":I
    .restart local v13    # "otherRunIsRtl":Z
    .restart local v19    # "otherRunLevel":I
    :cond_17
    move/from16 v18, v12

    goto :goto_e

    .line 573
    .end local v11    # "otherRunStart":I
    .end local v12    # "otherRunLimit":I
    .end local v13    # "otherRunIsRtl":Z
    .end local v19    # "otherRunLevel":I
    :cond_18
    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_1a

    .line 577
    if-eqz v8, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mLen:I

    add-int/lit8 v18, v2, 0x1

    goto :goto_e

    :cond_19
    const/16 v18, -0x1

    goto :goto_e

    .line 589
    :cond_1a
    move/from16 v0, v18

    move/from16 v1, v16

    if-gt v0, v1, :cond_16

    .line 590
    if-eqz v8, :cond_1b

    move/from16 v18, v16

    goto :goto_e

    .line 450
    :cond_1b
    const/16 v18, 0x0

    .line 590
    goto :goto_e
.end method

.method justify(F)V
    .locals 6
    .param p1, "justifyWidth"    # F

    .prologue
    const/4 v5, 0x0

    .line 200
    iget v0, p0, Landroid/text/TextLine;->mLen:I

    .line 201
    .local v0, "end":I
    :goto_0
    if-lez v0, :cond_0

    iget-object v3, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v4, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/text/TextLine;->isLineEndSpace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 204
    :cond_0
    invoke-direct {p0, v5, v0}, Landroid/text/TextLine;->countStretchableSpaces(II)I

    move-result v1

    .line 205
    .local v1, "spaces":I
    if-nez v1, :cond_1

    .line 208
    return-void

    .line 210
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v5, v3}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 211
    .local v2, "width":F
    sub-float v3, p1, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    iput v3, p0, Landroid/text/TextLine;->mAddedWidth:F

    .line 212
    return-void
.end method

.method measure(IZLandroid/graphics/Paint$FontMetricsInt;)F
    .locals 18
    .param p1, "offset"    # I
    .param p2, "trailing"    # Z
    .param p3, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 298
    if-eqz p2, :cond_0

    add-int/lit8 v16, p1, -0x1

    .line 299
    .local v16, "target":I
    :goto_0
    if-gez v16, :cond_1

    .line 300
    const/4 v1, 0x0

    return v1

    .line 298
    .end local v16    # "target":I
    :cond_0
    move/from16 v16, p1

    .restart local v16    # "target":I
    goto :goto_0

    .line 303
    :cond_1
    const/4 v10, 0x0

    .line 305
    .local v10, "h":F
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-nez v1, :cond_3

    .line 306
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v1, v3, :cond_2

    .line 307
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    return v1

    .line 309
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v3, :cond_3

    .line 310
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    return v1

    .line 314
    :cond_3
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/TextLine;->mChars:[C

    .line 315
    .local v8, "chars":[C
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v15, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 316
    .local v15, "runs":[I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    array-length v1, v15

    if-ge v11, v1, :cond_13

    .line 317
    aget v14, v15, v11

    .line 318
    .local v14, "runStart":I
    add-int/lit8 v1, v11, 0x1

    aget v1, v15, v1

    const v3, 0x3ffffff

    and-int/2addr v1, v3

    add-int v13, v14, v1

    .line 319
    .local v13, "runLimit":I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    if-le v13, v1, :cond_4

    .line 320
    move-object/from16 v0, p0

    iget v13, v0, Landroid/text/TextLine;->mLen:I

    .line 322
    :cond_4
    add-int/lit8 v1, v11, 0x1

    aget v1, v15, v1

    const/high16 v3, 0x4000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_6

    const/4 v5, 0x1

    .line 324
    .local v5, "runIsRtl":Z
    :goto_2
    move v2, v14

    .line 325
    .local v2, "segstart":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_7

    move v4, v14

    .local v4, "j":I
    :goto_3
    if-gt v4, v13, :cond_12

    .line 326
    const/4 v9, 0x0

    .line 327
    .local v9, "codept":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_8

    if-ge v4, v13, :cond_8

    .line 328
    aget-char v9, v8, v4

    .line 329
    const v1, 0xd800

    if-lt v9, v1, :cond_8

    const v1, 0xdc00

    if-ge v9, v1, :cond_8

    add-int/lit8 v1, v4, 0x1

    if-ge v1, v13, :cond_8

    .line 330
    invoke-static {v8, v4}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v9

    .line 331
    const v1, 0xffff

    if-le v9, v1, :cond_8

    .line 332
    add-int/lit8 v4, v4, 0x1

    .line 325
    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 322
    .end local v2    # "segstart":I
    .end local v4    # "j":I
    .end local v5    # "runIsRtl":Z
    .end local v9    # "codept":I
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "runIsRtl":Z
    goto :goto_2

    .line 325
    .restart local v2    # "segstart":I
    :cond_7
    move v4, v13

    .restart local v4    # "j":I
    goto :goto_3

    .line 338
    .restart local v9    # "codept":I
    :cond_8
    if-eq v4, v13, :cond_9

    const/16 v1, 0x9

    if-ne v9, v1, :cond_5

    .line 339
    :cond_9
    move/from16 v0, v16

    if-lt v0, v2, :cond_a

    move/from16 v0, v16

    if-ge v0, v4, :cond_a

    const/4 v12, 0x1

    .line 341
    .local v12, "inSegment":Z
    :goto_5
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_b

    const/4 v1, 0x1

    :goto_6
    if-ne v1, v5, :cond_c

    const/4 v7, 0x1

    .line 342
    .local v7, "advance":Z
    :goto_7
    if-eqz v12, :cond_d

    if-eqz v7, :cond_d

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v6, p3

    .line 343
    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    add-float/2addr v10, v1

    return v10

    .line 339
    .end local v7    # "advance":Z
    .end local v12    # "inSegment":Z
    :cond_a
    const/4 v12, 0x0

    .restart local v12    # "inSegment":Z
    goto :goto_5

    .line 341
    :cond_b
    const/4 v1, 0x0

    goto :goto_6

    :cond_c
    const/4 v7, 0x0

    .restart local v7    # "advance":Z
    goto :goto_7

    :cond_d
    move-object/from16 v1, p0

    move v3, v4

    move-object/from16 v6, p3

    .line 346
    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v17

    .line 347
    .local v17, "w":F
    if-eqz v7, :cond_e

    .end local v17    # "w":F
    :goto_8
    add-float v10, v10, v17

    .line 349
    if-eqz v12, :cond_f

    .line 350
    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    add-float/2addr v10, v1

    return v10

    .line 347
    .restart local v17    # "w":F
    :cond_e
    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    goto :goto_8

    .line 353
    .end local v17    # "w":F
    :cond_f
    const/16 v1, 0x9

    if-ne v9, v1, :cond_11

    .line 354
    move/from16 v0, p1

    if-ne v0, v4, :cond_10

    .line 355
    return v10

    .line 357
    :cond_10
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v3, v3

    mul-float/2addr v3, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/TextLine;->nextTab(F)F

    move-result v3

    mul-float v10, v1, v3

    .line 358
    move/from16 v0, v16

    if-ne v0, v4, :cond_11

    .line 359
    return v10

    .line 363
    :cond_11
    add-int/lit8 v2, v4, 0x1

    goto :goto_4

    .line 316
    .end local v7    # "advance":Z
    .end local v9    # "codept":I
    .end local v12    # "inSegment":Z
    :cond_12
    add-int/lit8 v11, v11, 0x2

    goto/16 :goto_1

    .line 368
    .end local v2    # "segstart":I
    .end local v4    # "j":I
    .end local v5    # "runIsRtl":Z
    .end local v13    # "runLimit":I
    .end local v14    # "runStart":I
    :cond_13
    return v10
.end method

.method metrics(Landroid/graphics/Paint$FontMetricsInt;)F
    .locals 2
    .param p1, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 281
    iget v0, p0, Landroid/text/TextLine;->mLen:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    return v0
.end method

.method nextTab(F)F
    .locals 1
    .param p1, "h"    # F

    .prologue
    .line 1161
    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    if-eqz v0, :cond_0

    .line 1162
    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    invoke-virtual {v0, p1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v0

    return v0

    .line 1164
    :cond_0
    const/16 v0, 0x14

    invoke-static {p1, v0}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v0

    return v0
.end method

.method set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V
    .locals 9
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "limit"    # I
    .param p5, "dir"    # I
    .param p6, "directions"    # Landroid/text/Layout$Directions;
    .param p7, "hasTabs"    # Z
    .param p8, "tabStops"    # Landroid/text/Layout$TabStops;

    .prologue
    .line 147
    iput-object p1, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 148
    iput-object p2, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 149
    iput p3, p0, Landroid/text/TextLine;->mStart:I

    .line 150
    sub-int v7, p4, p3

    iput v7, p0, Landroid/text/TextLine;->mLen:I

    .line 151
    iput p5, p0, Landroid/text/TextLine;->mDir:I

    .line 152
    iput-object p6, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 153
    iget-object v7, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    if-nez v7, :cond_0

    .line 154
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Directions cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 156
    :cond_0
    move/from16 v0, p7

    iput-boolean v0, p0, Landroid/text/TextLine;->mHasTabs:Z

    .line 157
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 159
    const/4 v3, 0x0

    .line 160
    .local v3, "hasReplacement":Z
    instance-of v7, p2, Landroid/text/Spanned;

    if-eqz v7, :cond_1

    move-object v7, p2

    .line 161
    check-cast v7, Landroid/text/Spanned;

    iput-object v7, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 162
    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget-object v8, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    invoke-virtual {v7, v8, p3, p4}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 163
    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget v7, v7, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v7, :cond_5

    const/4 v3, 0x1

    .line 166
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    if-nez p7, :cond_2

    sget-object v7, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eq p6, v7, :cond_6

    :cond_2
    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, p0, Landroid/text/TextLine;->mCharsValid:Z

    .line 168
    iget-boolean v7, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v7, :cond_8

    .line 169
    iget-object v7, p0, Landroid/text/TextLine;->mChars:[C

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/text/TextLine;->mChars:[C

    array-length v7, v7

    iget v8, p0, Landroid/text/TextLine;->mLen:I

    if-ge v7, v8, :cond_4

    .line 170
    :cond_3
    iget v7, p0, Landroid/text/TextLine;->mLen:I

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v7

    iput-object v7, p0, Landroid/text/TextLine;->mChars:[C

    .line 172
    :cond_4
    iget-object v7, p0, Landroid/text/TextLine;->mChars:[C

    const/4 v8, 0x0

    invoke-static {p2, p3, p4, v7, v8}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 173
    if-eqz v3, :cond_8

    .line 179
    iget-object v1, p0, Landroid/text/TextLine;->mChars:[C

    .line 180
    .local v1, "chars":[C
    move v4, p3

    .local v4, "i":I
    :goto_2
    if-ge v4, p4, :cond_8

    .line 181
    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v7, v4, p4}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v5

    .line 182
    .local v5, "inext":I
    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v7, v4, v5}, Landroid/text/SpanSet;->hasSpansIntersecting(II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 184
    sub-int v7, v4, p3

    const v8, 0xfffc

    aput-char v8, v1, v7

    .line 185
    sub-int v7, v4, p3

    add-int/lit8 v6, v7, 0x1

    .local v6, "j":I
    sub-int v2, v5, p3

    .local v2, "e":I
    :goto_3
    if-ge v6, v2, :cond_7

    .line 186
    const v7, 0xfeff

    aput-char v7, v1, v6

    .line 185
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 163
    .end local v1    # "chars":[C
    .end local v2    # "e":I
    .end local v4    # "i":I
    .end local v5    # "inext":I
    .end local v6    # "j":I
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 166
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 180
    .restart local v1    # "chars":[C
    .restart local v4    # "i":I
    .restart local v5    # "inext":I
    :cond_7
    move v4, v5

    goto :goto_2

    .line 192
    .end local v1    # "chars":[C
    .end local v4    # "i":I
    .end local v5    # "inext":I
    :cond_8
    move-object/from16 v0, p8

    iput-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    .line 193
    const/4 v7, 0x0

    iput v7, p0, Landroid/text/TextLine;->mAddedWidth:F

    .line 194
    return-void
.end method
