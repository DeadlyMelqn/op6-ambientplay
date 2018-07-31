.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/StaticLayout$Builder;,
        Landroid/text/StaticLayout$LineBreaks;
    }
.end annotation


# static fields
.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final COLUMNS_ELLIPSIZE:I = 0x6

.field private static final COLUMNS_NORMAL:I = 0x4

.field private static final DEFAULT_MAX_LINE_HEIGHT:I = -0x1

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x5

.field private static final ELLIPSIS_START:I = 0x4

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final HYPHEN:I = 0x3

.field private static final HYPHEN_MASK:I = 0xff

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mColumns:I

.field private mEllipsized:Z

.field private mEllipsizedWidth:I

.field private mLeftIndents:[I

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaxLineHeight:I

.field private mMaximumVisibleLineCount:I

.field private mRightIndents:[I

.field private mTopPadding:I


# direct methods
.method static synthetic -wrap0(JJJIIZ)F
    .locals 2
    .param p0, "nativePtr"    # J
    .param p2, "nativePaint"    # J
    .param p4, "nativeTypeface"    # J
    .param p6, "start"    # I
    .param p7, "end"    # I
    .param p8, "isRtl"    # Z

    .prologue
    invoke-static/range {p0 .. p8}, Landroid/text/StaticLayout;->nAddStyleRun(JJJIIZ)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap1()J
    .locals 2

    invoke-static {}, Landroid/text/StaticLayout;->nNewBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap2(JII[F)V
    .locals 0
    .param p0, "nativePtr"    # J
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "widths"    # [F

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/StaticLayout;->nAddMeasuredRun(JII[F)V

    return-void
.end method

.method static synthetic -wrap3(JIIF)V
    .locals 0
    .param p0, "nativePtr"    # J
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "width"    # F

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/StaticLayout;->nAddReplacementRun(JIIF)V

    return-void
.end method

.method static synthetic -wrap4(J)V
    .locals 0
    .param p0, "nativePtr"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/text/StaticLayout;->nFinishBuilder(J)V

    return-void
.end method

.method static synthetic -wrap5(J)V
    .locals 0
    .param p0, "nativePtr"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/text/StaticLayout;->nFreeBuilder(J)V

    return-void
.end method

.method static synthetic -wrap6(J[I)V
    .locals 0
    .param p0, "nativePtr"    # J
    .param p2, "indents"    # [I

    .prologue
    invoke-static {p0, p1, p2}, Landroid/text/StaticLayout;->nSetIndents(J[I)V

    return-void
.end method

.method static synthetic -wrap7(JLjava/lang/String;[J)V
    .locals 0
    .param p0, "nativePtr"    # J
    .param p2, "locales"    # Ljava/lang/String;
    .param p3, "nativeHyphenators"    # [J

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/text/StaticLayout;->nSetLocales(JLjava/lang/String;[J)V

    return-void
.end method

.method private constructor <init>(Landroid/text/StaticLayout$Builder;)V
    .locals 8
    .param p1, "b"    # Landroid/text/StaticLayout$Builder;

    .prologue
    .line 569
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    .line 570
    iget-object v1, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 574
    :goto_0
    iget-object v2, p1, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    iget v3, p1, Landroid/text/StaticLayout$Builder;->mWidth:I

    iget-object v4, p1, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    iget v5, p1, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    iget v6, p1, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    move-object v0, p0

    .line 569
    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1382
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    .line 1397
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 576
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v0, :cond_2

    .line 577
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Layout$Ellipsizer;

    .line 579
    .local v7, "e":Landroid/text/Layout$Ellipsizer;
    iput-object p0, v7, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 580
    iget v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    iput v0, v7, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 581
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    iput-object v0, v7, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 582
    iget v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 584
    const/4 v0, 0x6

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 590
    .end local v7    # "e":Landroid/text/Layout$Ellipsizer;
    :goto_1
    const-class v0, Landroid/text/Layout$Directions;

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 591
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 592
    iget v0, p1, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 594
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    .line 595
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    iput-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    .line 596
    iget v0, p1, Landroid/text/StaticLayout$Builder;->mJustificationMode:I

    invoke-virtual {p0, v0}, Landroid/text/StaticLayout;->setJustificationMode(I)V

    .line 598
    iget-boolean v0, p1, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    iget-boolean v1, p1, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    .line 599
    return-void

    .line 571
    :cond_0
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 572
    new-instance v1, Landroid/text/Layout$SpannedEllipsizer;

    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    invoke-direct {v1, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 573
    :cond_1
    new-instance v1, Landroid/text/Layout$Ellipsizer;

    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    invoke-direct {v1, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 586
    :cond_2
    const/4 v0, 0x4

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 587
    iget v0, p1, Landroid/text/StaticLayout$Builder;->mWidth:I

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/text/StaticLayout$Builder;Landroid/text/StaticLayout;)V
    .locals 0
    .param p1, "b"    # Landroid/text/StaticLayout$Builder;
    .param p2, "-this1"    # Landroid/text/StaticLayout;

    .prologue
    invoke-direct {p0, p1}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 561
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1382
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    .line 1397
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 563
    const/4 v0, 0x6

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 564
    const-class v0, Landroid/text/Layout$Directions;

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 565
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 566
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z

    .prologue
    .line 479
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 478
    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 480
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p11, "ellipsizedWidth"    # I

    .prologue
    .line 501
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 502
    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    .line 500
    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 503
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z

    .prologue
    .line 491
    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 490
    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 492
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z
    .param p11, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p12, "ellipsizedWidth"    # I
    .param p13, "maxLines"    # I

    .prologue
    .line 514
    if-nez p11, :cond_0

    move-object v3, p1

    :goto_0
    move-object v2, p0

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v2 .. v9}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 1382
    const/4 v2, -0x1

    iput v2, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    .line 1397
    const v2, 0x7fffffff

    iput v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 521
    invoke-static/range {p1 .. p5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p9

    move/from16 v1, p8

    invoke-virtual {v2, v0, v1}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p10

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p12

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p13

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v10

    .line 537
    .local v10, "b":Landroid/text/StaticLayout$Builder;
    if-eqz p11, :cond_2

    .line 538
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Landroid/text/Layout$Ellipsizer;

    .line 540
    .local v11, "e":Landroid/text/Layout$Ellipsizer;
    iput-object p0, v11, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 541
    move/from16 v0, p12

    iput v0, v11, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 542
    move-object/from16 v0, p11

    iput-object v0, v11, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 543
    move/from16 v0, p12

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 545
    const/4 v2, 0x6

    iput v2, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 551
    .end local v11    # "e":Landroid/text/Layout$Ellipsizer;
    :goto_1
    const-class v2, Landroid/text/Layout$Directions;

    iget v3, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/Layout$Directions;

    iput-object v2, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 552
    iget-object v2, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 553
    move/from16 v0, p13

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 555
    iget-boolean v2, v10, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    iget-boolean v3, v10, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    invoke-virtual {p0, v10, v2, v3}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    .line 557
    invoke-static {v10}, Landroid/text/StaticLayout$Builder;->-wrap0(Landroid/text/StaticLayout$Builder;)V

    .line 558
    return-void

    .line 516
    .end local v10    # "b":Landroid/text/StaticLayout$Builder;
    :cond_0
    instance-of v2, p1, Landroid/text/Spanned;

    if-eqz v2, :cond_1

    .line 517
    new-instance v3, Landroid/text/Layout$SpannedEllipsizer;

    invoke-direct {v3, p1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 518
    :cond_1
    new-instance v3, Landroid/text/Layout$Ellipsizer;

    invoke-direct {v3, p1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 547
    .restart local v10    # "b":Landroid/text/StaticLayout$Builder;
    :cond_2
    const/4 v2, 0x4

    iput v2, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 548
    move/from16 v0, p5

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "includepad"    # Z

    .prologue
    .line 458
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 460
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 11
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z

    .prologue
    .line 469
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .line 471
    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 20
    .param p1, "lineStart"    # I
    .param p2, "lineEnd"    # I
    .param p3, "widths"    # [F
    .param p4, "widthStart"    # I
    .param p5, "avail"    # F
    .param p6, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "line"    # I
    .param p8, "textWidth"    # F
    .param p9, "paint"    # Landroid/text/TextPaint;
    .param p10, "forceEllipsis"    # Z

    .prologue
    .line 1061
    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v0, v1}, Landroid/text/StaticLayout;->getTotalInsets(I)F

    move-result v17

    sub-float p5, p5, v17

    .line 1062
    cmpg-float v17, p8, p5

    if-gtz v17, :cond_0

    xor-int/lit8 v17, p10, 0x1

    if-eqz v17, :cond_0

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x4

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x5

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 1066
    return-void

    .line 1070
    :cond_0
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 1071
    sget-object v17, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    :goto_0
    const/16 v18, 0x0

    const/16 v19, 0x1

    .line 1069
    move-object/from16 v0, p9

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText([CII)F

    move-result v6

    .line 1072
    .local v6, "ellipsisWidth":F
    const/4 v5, 0x0

    .line 1073
    .local v5, "ellipsisStart":I
    const/4 v4, 0x0

    .line 1074
    .local v4, "ellipsisCount":I
    sub-int v10, p2, p1

    .line 1077
    .local v10, "len":I
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 1078
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 1079
    const/4 v15, 0x0

    .line 1082
    .local v15, "sum":F
    move v7, v10

    .local v7, "i":I
    :goto_1
    if-lez v7, :cond_3

    .line 1083
    add-int/lit8 v17, v7, -0x1

    add-int v17, v17, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    .line 1084
    .local v16, "w":F
    add-float v17, v16, v15

    add-float v17, v17, v6

    cmpl-float v17, v17, p5

    if-lez v17, :cond_2

    .line 1085
    :goto_2
    if-ge v7, v10, :cond_3

    add-int v17, v7, p1

    sub-int v17, v17, p4

    aget v17, p3, v17

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-nez v17, :cond_3

    .line 1086
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1071
    .end local v4    # "ellipsisCount":I
    .end local v5    # "ellipsisStart":I
    .end local v6    # "ellipsisWidth":F
    .end local v7    # "i":I
    .end local v10    # "len":I
    .end local v15    # "sum":F
    .end local v16    # "w":F
    :cond_1
    sget-object v17, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    goto :goto_0

    .line 1091
    .restart local v4    # "ellipsisCount":I
    .restart local v5    # "ellipsisStart":I
    .restart local v6    # "ellipsisWidth":F
    .restart local v7    # "i":I
    .restart local v10    # "len":I
    .restart local v15    # "sum":F
    .restart local v16    # "w":F
    :cond_2
    add-float v15, v15, v16

    .line 1082
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 1094
    .end local v16    # "w":F
    :cond_3
    const/4 v5, 0x0

    .line 1095
    move v4, v7

    .line 1160
    .end local v7    # "i":I
    .end local v15    # "sum":F
    :cond_4
    :goto_3
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/text/StaticLayout;->mEllipsized:Z

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x4

    aput v5, v17, v18

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x5

    aput v4, v17, v18

    .line 1163
    return-void

    .line 1097
    :cond_5
    const-string/jumbo v17, "StaticLayout"

    const/16 v18, 0x5

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1098
    const-string/jumbo v17, "StaticLayout"

    const-string/jumbo v18, "Start Ellipsis only supported with one line"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1101
    :cond_6
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_7

    sget-object v17, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 1103
    :cond_7
    const/4 v15, 0x0

    .line 1106
    .restart local v15    # "sum":F
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    if-ge v7, v10, :cond_8

    .line 1107
    add-int v17, v7, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    .line 1109
    .restart local v16    # "w":F
    add-float v17, v16, v15

    add-float v17, v17, v6

    cmpl-float v17, v17, p5

    if-lez v17, :cond_a

    .line 1116
    .end local v16    # "w":F
    :cond_8
    move v5, v7

    .line 1117
    sub-int v4, v10, v7

    .line 1118
    if-eqz p10, :cond_4

    if-nez v4, :cond_4

    if-lez v10, :cond_4

    .line 1119
    add-int/lit8 v5, v10, -0x1

    .line 1120
    const/4 v4, 0x1

    goto :goto_3

    .line 1102
    .end local v7    # "i":I
    .end local v15    # "sum":F
    :cond_9
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_7

    .line 1124
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 1125
    const/4 v11, 0x0

    .local v11, "lsum":F
    const/4 v14, 0x0

    .line 1126
    .local v14, "rsum":F
    const/4 v9, 0x0

    .local v9, "left":I
    move v13, v10

    .line 1128
    .local v13, "right":I
    sub-float v17, p5, v6

    const/high16 v18, 0x40000000    # 2.0f

    div-float v12, v17, v18

    .line 1129
    .local v12, "ravail":F
    move v13, v10

    :goto_5
    if-lez v13, :cond_c

    .line 1130
    add-int/lit8 v17, v13, -0x1

    add-int v17, v17, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    .line 1132
    .restart local v16    # "w":F
    add-float v17, v16, v14

    cmpl-float v17, v17, v12

    if-lez v17, :cond_b

    .line 1133
    :goto_6
    if-ge v13, v10, :cond_c

    add-int v17, v13, p1

    sub-int v17, v17, p4

    aget v17, p3, v17

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-nez v17, :cond_c

    .line 1134
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 1113
    .end local v9    # "left":I
    .end local v11    # "lsum":F
    .end local v12    # "ravail":F
    .end local v13    # "right":I
    .end local v14    # "rsum":F
    .restart local v7    # "i":I
    .restart local v15    # "sum":F
    :cond_a
    add-float v15, v15, v16

    .line 1106
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1138
    .end local v7    # "i":I
    .end local v15    # "sum":F
    .restart local v9    # "left":I
    .restart local v11    # "lsum":F
    .restart local v12    # "ravail":F
    .restart local v13    # "right":I
    .restart local v14    # "rsum":F
    :cond_b
    add-float v14, v14, v16

    .line 1129
    add-int/lit8 v13, v13, -0x1

    goto :goto_5

    .line 1141
    .end local v16    # "w":F
    :cond_c
    sub-float v17, p5, v6

    sub-float v8, v17, v14

    .line 1142
    .local v8, "lavail":F
    const/4 v9, 0x0

    :goto_7
    if-ge v9, v13, :cond_d

    .line 1143
    add-int v17, v9, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    .line 1145
    .restart local v16    # "w":F
    add-float v17, v16, v11

    cmpl-float v17, v17, v8

    if-lez v17, :cond_e

    .line 1152
    .end local v16    # "w":F
    :cond_d
    move v5, v9

    .line 1153
    sub-int v4, v13, v9

    goto/16 :goto_3

    .line 1149
    .restart local v16    # "w":F
    :cond_e
    add-float v11, v11, v16

    .line 1142
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 1155
    .end local v8    # "lavail":F
    .end local v9    # "left":I
    .end local v11    # "lsum":F
    .end local v12    # "ravail":F
    .end local v13    # "right":I
    .end local v14    # "rsum":F
    .end local v16    # "w":F
    :cond_f
    const-string/jumbo v17, "StaticLayout"

    const/16 v18, 0x5

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1156
    const-string/jumbo v17, "StaticLayout"

    const-string/jumbo v18, "Middle Ellipsis only supported with one line"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private getTotalInsets(I)F
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1166
    const/4 v0, 0x0

    .line 1167
    .local v0, "totalIndent":I
    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz v1, :cond_0

    .line 1168
    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v0, v1, v2

    .line 1170
    :cond_0
    iget-object v1, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v1, :cond_1

    .line 1171
    iget-object v1, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 1173
    :cond_1
    int-to-float v1, v0

    return v1
.end method

.method private static native nAddMeasuredRun(JII[F)V
.end method

.method private static native nAddReplacementRun(JIIF)V
.end method

.method private static native nAddStyleRun(JJJIIZ)F
.end method

.method private static native nComputeLineBreaks(JLandroid/text/StaticLayout$LineBreaks;[I[F[II)I
.end method

.method private static native nFinishBuilder(J)V
.end method

.method private static native nFreeBuilder(J)V
.end method

.method private static native nGetWidths(J[F)V
.end method

.method static native nLoadHyphenator(Ljava/nio/ByteBuffer;III)J
.end method

.method private static native nNewBuilder()J
.end method

.method private static native nSetIndents(J[I)V
.end method

.method private static native nSetLocales(JLjava/lang/String;[J)V
.end method

.method private static native nSetupParagraph(J[CIFIF[IIIIZ)V
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;ZZ)I
    .locals 29
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "above"    # I
    .param p5, "below"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I
    .param p8, "v"    # I
    .param p9, "spacingmult"    # F
    .param p10, "spacingadd"    # F
    .param p11, "chooseHt"    # [Landroid/text/style/LineHeightSpan;
    .param p12, "chooseHtv"    # [I
    .param p13, "fm"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p14, "flags"    # I
    .param p15, "needMultiply"    # Z
    .param p16, "chdirs"    # [B
    .param p17, "dir"    # I
    .param p18, "easy"    # Z
    .param p19, "bufEnd"    # I
    .param p20, "includePad"    # Z
    .param p21, "trackPad"    # Z
    .param p22, "chs"    # [C
    .param p23, "widths"    # [F
    .param p24, "widthStart"    # I
    .param p25, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p26, "ellipsisWidth"    # F
    .param p27, "textWidth"    # F
    .param p28, "paint"    # Landroid/text/TextPaint;
    .param p29, "moreChars"    # Z
    .param p30, "isLastLineSpacing"    # Z

    .prologue
    .line 923
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move/from16 v22, v0

    .line 924
    .local v22, "j":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v27, v22, v2

    .line 925
    .local v27, "off":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v27

    add-int/lit8 v28, v2, 0x1

    .line 926
    .local v28, "want":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v25, v0

    .line 928
    .local v25, "lines":[I
    move-object/from16 v0, v25

    array-length v2, v0

    move/from16 v0, v28

    if-lt v0, v2, :cond_0

    .line 930
    const-class v2, Landroid/text/Layout$Directions;

    invoke-static/range {v28 .. v28}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v3

    .line 929
    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/text/Layout$Directions;

    .line 931
    .local v20, "grow2":[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 932
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v3, v3

    .line 931
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-static {v2, v4, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 933
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 935
    move-object/from16 v0, v20

    array-length v2, v0

    new-array v0, v2, [I

    move-object/from16 v19, v0

    .line 936
    .local v19, "grow":[I
    move-object/from16 v0, v25

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 937
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 938
    move-object/from16 v25, v19

    .line 941
    .end local v19    # "grow":[I
    .end local v20    # "grow2":[Landroid/text/Layout$Directions;
    :cond_0
    if-eqz p11, :cond_3

    .line 942
    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 943
    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 944
    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 945
    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 947
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    move-object/from16 v0, p11

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_2

    .line 948
    aget-object v2, p11, v21

    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v2, :cond_1

    .line 949
    aget-object v2, p11, v21

    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    .line 950
    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    move-object/from16 v9, p28

    .line 949
    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 947
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 953
    :cond_1
    aget-object v2, p11, v21

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    invoke-interface/range {v2 .. v8}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_1

    .line 957
    :cond_2
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    .line 958
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    .line 959
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    .line 960
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .line 963
    .end local v21    # "i":I
    :cond_3
    if-nez v22, :cond_e

    const/16 v18, 0x1

    .line 964
    .local v18, "firstLine":Z
    :goto_2
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_f

    const/4 v13, 0x1

    .line 966
    .local v13, "currentLineIsTheLastVisibleOne":Z
    :goto_3
    if-eqz p25, :cond_6

    .line 969
    if-eqz p29, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_10

    const/4 v12, 0x1

    .line 972
    .local v12, "forceEllipsis":Z
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    if-nez p29, :cond_5

    :cond_4
    if-eqz v18, :cond_11

    xor-int/lit8 v2, p29, 0x1

    if-eqz v2, :cond_11

    .line 973
    :cond_5
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-eq v0, v2, :cond_11

    .line 972
    const/4 v14, 0x1

    .line 976
    .local v14, "doEllipsis":Z
    :goto_5
    if-eqz v14, :cond_6

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p23

    move/from16 v6, p24

    move/from16 v7, p26

    move-object/from16 v8, p25

    move/from16 v9, v22

    move/from16 v10, p27

    move-object/from16 v11, p28

    .line 977
    invoke-direct/range {v2 .. v12}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .line 983
    .end local v12    # "forceEllipsis":Z
    .end local v14    # "doEllipsis":Z
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    if-nez v2, :cond_7

    move/from16 v0, p3

    move/from16 v1, p19

    if-ne v0, v1, :cond_15

    :cond_7
    const/16 v23, 0x1

    .line 985
    .local v23, "lastLine":Z
    :goto_6
    if-eqz v18, :cond_9

    .line 986
    if-eqz p21, :cond_8

    .line 987
    sub-int v2, p6, p4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mTopPadding:I

    .line 990
    :cond_8
    if-eqz p20, :cond_9

    .line 991
    move/from16 p4, p6

    .line 997
    :cond_9
    if-eqz v23, :cond_b

    .line 998
    if-eqz p21, :cond_a

    .line 999
    sub-int v2, p7, p5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mBottomPadding:I

    .line 1002
    :cond_a
    if-eqz p20, :cond_b

    .line 1003
    move/from16 p5, p7

    .line 1007
    :cond_b
    if-eqz p15, :cond_17

    if-eqz v23, :cond_c

    if-eqz p30, :cond_17

    .line 1008
    :cond_c
    sub-int v2, p5, p4

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, p9, v3

    mul-float/2addr v2, v3

    add-float v2, v2, p10

    float-to-double v0, v2

    move-wide/from16 v16, v0

    .line 1009
    .local v16, "ex":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v16, v2

    if-ltz v2, :cond_16

    .line 1010
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double v2, v2, v16

    double-to-int v15, v2

    .line 1018
    .end local v16    # "ex":D
    .local v15, "extra":I
    :goto_7
    add-int/lit8 v2, v27, 0x0

    aput p2, v25, v2

    .line 1019
    add-int/lit8 v2, v27, 0x1

    aput p8, v25, v2

    .line 1020
    add-int/lit8 v2, v27, 0x2

    add-int v3, p5, v15

    aput v3, v25, v2

    .line 1024
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    if-nez v2, :cond_d

    if-eqz v13, :cond_d

    .line 1026
    if-eqz p20, :cond_18

    move/from16 v26, p7

    .line 1028
    .local v26, "maxLineBelow":I
    :goto_8
    sub-int v2, v26, p4

    add-int v2, v2, p8

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    .line 1031
    .end local v26    # "maxLineBelow":I
    :cond_d
    sub-int v2, p5, p4

    add-int/2addr v2, v15

    add-int p8, p8, v2

    .line 1032
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v27

    add-int/lit8 v2, v2, 0x0

    aput p3, v25, v2

    .line 1033
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v27

    add-int/lit8 v2, v2, 0x1

    aput p8, v25, v2

    .line 1037
    add-int/lit8 v2, v27, 0x0

    aget v3, v25, v2

    const/high16 v4, 0x20000000

    and-int v4, v4, p14

    or-int/2addr v3, v4

    aput v3, v25, v2

    .line 1038
    add-int/lit8 v2, v27, 0x3

    aput p14, v25, v2

    .line 1040
    add-int/lit8 v2, v27, 0x0

    aget v3, v25, v2

    shl-int/lit8 v4, p17, 0x1e

    or-int/2addr v3, v4

    aput v3, v25, v2

    .line 1041
    sget-object v24, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 1045
    .local v24, "linedirs":Landroid/text/Layout$Directions;
    if-eqz p18, :cond_19

    .line 1046
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aput-object v24, v2, v22

    .line 1052
    :goto_9
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 1053
    return p8

    .line 963
    .end local v13    # "currentLineIsTheLastVisibleOne":Z
    .end local v15    # "extra":I
    .end local v18    # "firstLine":Z
    .end local v23    # "lastLine":Z
    .end local v24    # "linedirs":Landroid/text/Layout$Directions;
    :cond_e
    const/16 v18, 0x0

    .restart local v18    # "firstLine":Z
    goto/16 :goto_2

    .line 964
    :cond_f
    const/4 v13, 0x0

    .restart local v13    # "currentLineIsTheLastVisibleOne":Z
    goto/16 :goto_3

    .line 969
    :cond_10
    const/4 v12, 0x0

    .restart local v12    # "forceEllipsis":Z
    goto/16 :goto_4

    .line 974
    :cond_11
    if-nez v18, :cond_14

    if-nez v13, :cond_12

    xor-int/lit8 v2, p29, 0x1

    if-eqz v2, :cond_14

    .line 975
    :cond_12
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_13

    const/4 v14, 0x1

    .restart local v14    # "doEllipsis":Z
    goto/16 :goto_5

    .end local v14    # "doEllipsis":Z
    :cond_13
    const/4 v14, 0x0

    .restart local v14    # "doEllipsis":Z
    goto/16 :goto_5

    .line 974
    .end local v14    # "doEllipsis":Z
    :cond_14
    const/4 v14, 0x0

    .restart local v14    # "doEllipsis":Z
    goto/16 :goto_5

    .line 983
    .end local v12    # "forceEllipsis":Z
    .end local v14    # "doEllipsis":Z
    :cond_15
    const/16 v23, 0x0

    .restart local v23    # "lastLine":Z
    goto/16 :goto_6

    .line 1012
    .restart local v16    # "ex":D
    :cond_16
    move-wide/from16 v0, v16

    neg-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v15, v2

    .restart local v15    # "extra":I
    goto/16 :goto_7

    .line 1015
    .end local v15    # "extra":I
    .end local v16    # "ex":D
    :cond_17
    const/4 v15, 0x0

    .restart local v15    # "extra":I
    goto/16 :goto_7

    .line 1026
    :cond_18
    move/from16 v26, p5

    .restart local v26    # "maxLineBelow":I
    goto/16 :goto_8

    .line 1048
    .end local v26    # "maxLineBelow":I
    .restart local v24    # "linedirs":Landroid/text/Layout$Directions;
    :cond_19
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v4, p2, p24

    .line 1049
    sub-int v6, p2, p24

    sub-int v7, p3, p2

    move/from16 v2, p17

    move-object/from16 v3, p16

    move-object/from16 v5, p22

    .line 1048
    invoke-static/range {v2 .. v7}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v2

    aput-object v2, v8, v22

    goto :goto_9
.end method


# virtual methods
.method generate(Landroid/text/StaticLayout$Builder;ZZ)V
    .locals 120
    .param p1, "b"    # Landroid/text/StaticLayout$Builder;
    .param p2, "includepad"    # Z
    .param p3, "trackpad"    # Z

    .prologue
    .line 602
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 603
    .local v5, "source":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mStart:I

    move/from16 v73, v0

    .line 604
    .local v73, "bufStart":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mEnd:I

    move/from16 v37, v0

    .line 605
    .local v37, "bufEnd":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v46, v0

    .line 606
    .local v46, "paint":Landroid/text/TextPaint;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mWidth:I

    move/from16 v102, v0

    .line 607
    .local v102, "outerWidth":I
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 608
    .local v8, "textDir":Landroid/text/TextDirectionHeuristic;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    move/from16 v27, v0

    .line 609
    .local v27, "spacingmult":F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    move/from16 v28, v0

    .line 610
    .local v28, "spacingadd":F
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/text/StaticLayout$Builder;->mIsLastLineSpacing:Z

    move/from16 v48, v0

    .line 611
    .local v48, "isLastLineSpacing":Z
    move-object/from16 v0, p1

    iget v9, v0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    int-to-float v0, v9

    move/from16 v44, v0

    .line 612
    .local v44, "ellipsizedWidth":F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v43, v0

    .line 613
    .local v43, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    new-instance v97, Landroid/text/StaticLayout$LineBreaks;

    invoke-direct/range {v97 .. v97}, Landroid/text/StaticLayout$LineBreaks;-><init>()V

    .line 615
    .local v97, "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    const/4 v9, 0x4

    new-array v0, v9, [I

    move-object/from16 v109, v0

    .line 618
    .local v109, "spanEndCache":[I
    const/16 v9, 0x10

    new-array v0, v9, [I

    move-object/from16 v87, v0

    .line 619
    .local v87, "fmCache":[I
    invoke-virtual/range {v46 .. v46}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Landroid/text/StaticLayout$Builder;->-wrap1(Landroid/text/StaticLayout$Builder;Landroid/os/LocaleList;)V

    .line 621
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 622
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    .line 623
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v10, 0x1

    if-ge v9, v10, :cond_3

    const/4 v9, 0x0

    :goto_0
    move-object/from16 v0, p0

    iput v9, v0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    .line 625
    const/16 v26, 0x0

    .line 626
    .local v26, "v":I
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v27, v9

    if-nez v9, :cond_0

    const/4 v9, 0x0

    cmpl-float v9, v28, v9

    if-eqz v9, :cond_4

    :cond_0
    const/16 v33, 0x1

    .line 628
    .local v33, "needMultiply":Z
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v31, v0

    .line 629
    .local v31, "fm":Landroid/graphics/Paint$FontMetricsInt;
    const/16 v30, 0x0

    .line 631
    .local v30, "chooseHtv":[I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    .line 633
    .local v4, "measured":Landroid/text/MeasuredText;
    const/16 v115, 0x0

    .line 634
    .local v115, "spanned":Landroid/text/Spanned;
    instance-of v9, v5, Landroid/text/Spanned;

    if-eqz v9, :cond_1

    move-object/from16 v115, v5

    .line 635
    check-cast v115, Landroid/text/Spanned;

    .line 638
    .end local v115    # "spanned":Landroid/text/Spanned;
    :cond_1
    move/from16 v6, v73

    .end local v30    # "chooseHtv":[I
    .local v6, "paraStart":I
    :goto_2
    move/from16 v0, v37

    if-gt v6, v0, :cond_2c

    .line 639
    const/16 v9, 0xa

    move/from16 v0, v37

    invoke-static {v5, v9, v6, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v7

    .line 640
    .local v7, "paraEnd":I
    if-gez v7, :cond_5

    .line 641
    move/from16 v7, v37

    .line 645
    :goto_3
    const/4 v15, 0x1

    .line 646
    .local v15, "firstWidthLineCount":I
    move/from16 v84, v102

    .line 647
    .local v84, "firstWidth":I
    move/from16 v104, v102

    .line 649
    .local v104, "restWidth":I
    const/16 v29, 0x0

    .line 651
    .local v29, "chooseHt":[Landroid/text/style/LineHeightSpan;
    if-eqz v115, :cond_7

    .line 653
    const-class v9, Landroid/text/style/LeadingMarginSpan;

    .line 652
    move-object/from16 v0, v115

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v107

    check-cast v107, [Landroid/text/style/LeadingMarginSpan;

    .line 654
    .local v107, "sp":[Landroid/text/style/LeadingMarginSpan;
    const/16 v91, 0x0

    .local v91, "i":I
    :goto_4
    move-object/from16 v0, v107

    array-length v9, v0

    move/from16 v0, v91

    if-ge v0, v9, :cond_6

    .line 655
    aget-object v99, v107, v91

    .line 656
    .local v99, "lms":Landroid/text/style/LeadingMarginSpan;
    aget-object v9, v107, v91

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    sub-int v84, v84, v9

    .line 657
    aget-object v9, v107, v91

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    sub-int v104, v104, v9

    .line 661
    move-object/from16 v0, v99

    instance-of v9, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v9, :cond_2

    move-object/from16 v100, v99

    .line 662
    check-cast v100, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 664
    .local v100, "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    invoke-interface/range {v100 .. v100}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v9

    .line 663
    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 654
    .end local v100    # "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    :cond_2
    add-int/lit8 v91, v91, 0x1

    goto :goto_4

    .line 623
    .end local v4    # "measured":Landroid/text/MeasuredText;
    .end local v6    # "paraStart":I
    .end local v7    # "paraEnd":I
    .end local v15    # "firstWidthLineCount":I
    .end local v26    # "v":I
    .end local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v31    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v33    # "needMultiply":Z
    .end local v84    # "firstWidth":I
    .end local v91    # "i":I
    .end local v99    # "lms":Landroid/text/style/LeadingMarginSpan;
    .end local v104    # "restWidth":I
    .end local v107    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_3
    const/4 v9, -0x1

    goto/16 :goto_0

    .line 626
    .restart local v26    # "v":I
    :cond_4
    const/16 v33, 0x0

    .restart local v33    # "needMultiply":Z
    goto :goto_1

    .line 643
    .restart local v4    # "measured":Landroid/text/MeasuredText;
    .restart local v6    # "paraStart":I
    .restart local v7    # "paraEnd":I
    .restart local v31    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 668
    .restart local v15    # "firstWidthLineCount":I
    .restart local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v84    # "firstWidth":I
    .restart local v91    # "i":I
    .restart local v104    # "restWidth":I
    .restart local v107    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_6
    const-class v9, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v115

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v29

    .end local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    check-cast v29, [Landroid/text/style/LineHeightSpan;

    .line 670
    .local v29, "chooseHt":[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v29

    array-length v9, v0

    if-nez v9, :cond_8

    .line 671
    const/16 v29, 0x0

    .end local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v91    # "i":I
    .end local v107    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_7
    move-object/from16 v9, p1

    .line 695
    invoke-virtual/range {v4 .. v9}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    .line 696
    iget-object v12, v4, Landroid/text/MeasuredText;->mChars:[C

    .line 697
    .local v12, "chs":[C
    iget-object v0, v4, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v41, v0

    .line 698
    .local v41, "widths":[F
    iget-object v0, v4, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v34, v0

    .line 699
    .local v34, "chdirs":[B
    iget v0, v4, Landroid/text/MeasuredText;->mDir:I

    move/from16 v35, v0

    .line 700
    .local v35, "dir":I
    iget-boolean v0, v4, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v36, v0

    .line 703
    .local v36, "easy":Z
    const/16 v17, 0x0

    .line 704
    .local v17, "variableTabStops":[I
    if-eqz v115, :cond_d

    .line 706
    const-class v9, Landroid/text/style/TabStopSpan;

    .line 705
    move-object/from16 v0, v115

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v117

    check-cast v117, [Landroid/text/style/TabStopSpan;

    .line 707
    .local v117, "spans":[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v117

    array-length v9, v0

    if-lez v9, :cond_d

    .line 708
    move-object/from16 v0, v117

    array-length v9, v0

    new-array v0, v9, [I

    move-object/from16 v118, v0

    .line 709
    .local v118, "stops":[I
    const/16 v91, 0x0

    .restart local v91    # "i":I
    :goto_5
    move-object/from16 v0, v117

    array-length v9, v0

    move/from16 v0, v91

    if-ge v0, v9, :cond_c

    .line 710
    aget-object v9, v117, v91

    invoke-interface {v9}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v9

    aput v9, v118, v91

    .line 709
    add-int/lit8 v91, v91, 0x1

    goto :goto_5

    .line 673
    .end local v12    # "chs":[C
    .end local v17    # "variableTabStops":[I
    .end local v34    # "chdirs":[B
    .end local v35    # "dir":I
    .end local v36    # "easy":Z
    .end local v41    # "widths":[F
    .end local v117    # "spans":[Landroid/text/style/TabStopSpan;
    .end local v118    # "stops":[I
    .restart local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v107    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_8
    if-eqz v30, :cond_9

    .line 674
    move-object/from16 v0, v30

    array-length v9, v0

    move-object/from16 v0, v29

    array-length v10, v0

    if-ge v9, v10, :cond_a

    .line 675
    :cond_9
    move-object/from16 v0, v29

    array-length v9, v0

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v30

    .line 678
    :cond_a
    const/16 v91, 0x0

    :goto_6
    move-object/from16 v0, v29

    array-length v9, v0

    move/from16 v0, v91

    if-ge v0, v9, :cond_7

    .line 679
    aget-object v9, v29, v91

    move-object/from16 v0, v115

    invoke-interface {v0, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v101

    .line 681
    .local v101, "o":I
    move/from16 v0, v101

    if-ge v0, v6, :cond_b

    .line 685
    move-object/from16 v0, p0

    move/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v9

    aput v9, v30, v91

    .line 678
    :goto_7
    add-int/lit8 v91, v91, 0x1

    goto :goto_6

    .line 689
    :cond_b
    aput v26, v30, v91

    goto :goto_7

    .line 712
    .end local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v101    # "o":I
    .end local v107    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .restart local v12    # "chs":[C
    .restart local v17    # "variableTabStops":[I
    .restart local v34    # "chdirs":[B
    .restart local v35    # "dir":I
    .restart local v36    # "easy":Z
    .restart local v41    # "widths":[F
    .restart local v117    # "spans":[Landroid/text/style/TabStopSpan;
    .restart local v118    # "stops":[I
    :cond_c
    move-object/from16 v0, v118

    array-length v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, v118

    invoke-static {v0, v10, v9}, Ljava/util/Arrays;->sort([III)V

    .line 713
    move-object/from16 v17, v118

    .line 717
    .end local v17    # "variableTabStops":[I
    .end local v91    # "i":I
    .end local v117    # "spans":[Landroid/text/style/TabStopSpan;
    .end local v118    # "stops":[I
    :cond_d
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    sub-int v13, v7, v6

    .line 718
    move/from16 v0, v84

    int-to-float v14, v0

    move/from16 v0, v104

    int-to-float v0, v0

    move/from16 v16, v0

    .line 719
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    move/from16 v20, v0

    .line 721
    move-object/from16 v0, p1

    iget v9, v0, Landroid/text/StaticLayout$Builder;->mJustificationMode:I

    if-eqz v9, :cond_f

    const/16 v21, 0x1

    .line 719
    :goto_8
    const/16 v18, 0x14

    .line 717
    invoke-static/range {v10 .. v21}, Landroid/text/StaticLayout;->nSetupParagraph(J[CIFIF[IIIIZ)V

    .line 722
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v9, :cond_e

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v9, :cond_15

    .line 726
    :cond_e
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v9, :cond_10

    const/16 v95, 0x0

    .line 727
    .local v95, "leftLen":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v9, :cond_11

    const/16 v105, 0x0

    .line 728
    .local v105, "rightLen":I
    :goto_a
    move/from16 v0, v95

    move/from16 v1, v105

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    sub-int/2addr v9, v10

    const/4 v10, 0x1

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v93

    .line 729
    .local v93, "indentsLen":I
    move/from16 v0, v93

    new-array v0, v0, [I

    move-object/from16 v92, v0

    .line 730
    .local v92, "indents":[I
    const/16 v91, 0x0

    .restart local v91    # "i":I
    :goto_b
    move/from16 v0, v91

    move/from16 v1, v93

    if-ge v0, v1, :cond_14

    .line 731
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v9, :cond_12

    const/16 v96, 0x0

    .line 733
    .local v96, "leftMargin":I
    :goto_c
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v9, :cond_13

    const/16 v106, 0x0

    .line 735
    .local v106, "rightMargin":I
    :goto_d
    add-int v9, v96, v106

    aput v9, v92, v91

    .line 730
    add-int/lit8 v91, v91, 0x1

    goto :goto_b

    .line 721
    .end local v91    # "i":I
    .end local v92    # "indents":[I
    .end local v93    # "indentsLen":I
    .end local v95    # "leftLen":I
    .end local v96    # "leftMargin":I
    .end local v105    # "rightLen":I
    .end local v106    # "rightMargin":I
    :cond_f
    const/16 v21, 0x0

    goto :goto_8

    .line 726
    :cond_10
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v0, v9

    move/from16 v95, v0

    .restart local v95    # "leftLen":I
    goto :goto_9

    .line 727
    :cond_11
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v0, v9

    move/from16 v105, v0

    .restart local v105    # "rightLen":I
    goto :goto_a

    .line 732
    .restart local v91    # "i":I
    .restart local v92    # "indents":[I
    .restart local v93    # "indentsLen":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int v10, v10, v91

    add-int/lit8 v11, v95, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aget v96, v9, v10

    .restart local v96    # "leftMargin":I
    goto :goto_c

    .line 734
    :cond_13
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int v10, v10, v91

    add-int/lit8 v11, v105, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aget v106, v9, v10

    .restart local v106    # "rightMargin":I
    goto :goto_d

    .line 737
    .end local v96    # "leftMargin":I
    .end local v106    # "rightMargin":I
    :cond_14
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    move-object/from16 v0, v92

    invoke-static {v10, v11, v0}, Landroid/text/StaticLayout;->nSetIndents(J[I)V

    .line 743
    .end local v91    # "i":I
    .end local v92    # "indents":[I
    .end local v93    # "indentsLen":I
    .end local v95    # "leftLen":I
    .end local v105    # "rightLen":I
    :cond_15
    const/16 v88, 0x0

    .line 744
    .local v88, "fmCacheCount":I
    const/16 v110, 0x0

    .line 745
    .local v110, "spanEndCacheCount":I
    move/from16 v114, v6

    .local v114, "spanStart":I
    :goto_e
    move/from16 v0, v114

    if-ge v0, v7, :cond_19

    .line 746
    mul-int/lit8 v9, v88, 0x4

    move-object/from16 v0, v87

    array-length v10, v0

    if-lt v9, v10, :cond_16

    .line 747
    mul-int/lit8 v9, v88, 0x4

    mul-int/lit8 v9, v9, 0x2

    new-array v0, v9, [I

    move-object/from16 v90, v0

    .line 748
    .local v90, "grow":[I
    mul-int/lit8 v9, v88, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v87

    move-object/from16 v1, v90

    invoke-static {v0, v10, v1, v11, v9}, Ljava/lang/System;->arraycopy([II[III)V

    .line 749
    move-object/from16 v87, v90

    .line 752
    .end local v90    # "grow":[I
    :cond_16
    move-object/from16 v0, v109

    array-length v9, v0

    move/from16 v0, v110

    if-lt v0, v9, :cond_17

    .line 753
    mul-int/lit8 v9, v110, 0x2

    new-array v0, v9, [I

    move-object/from16 v90, v0

    .line 754
    .restart local v90    # "grow":[I
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v109

    move-object/from16 v1, v90

    move/from16 v2, v110

    invoke-static {v0, v9, v1, v10, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 755
    move-object/from16 v109, v90

    .line 758
    .end local v90    # "grow":[I
    :cond_17
    if-nez v115, :cond_18

    .line 759
    move/from16 v108, v7

    .line 760
    .local v108, "spanEnd":I
    sub-int v113, v7, v114

    .line 761
    .local v113, "spanLen":I
    move-object/from16 v0, v46

    move/from16 v1, v113

    move-object/from16 v2, v31

    invoke-virtual {v4, v0, v1, v2}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 774
    :goto_f
    mul-int/lit8 v9, v88, 0x4

    add-int/lit8 v9, v9, 0x0

    move-object/from16 v0, v31

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    aput v10, v87, v9

    .line 775
    mul-int/lit8 v9, v88, 0x4

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v31

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    aput v10, v87, v9

    .line 776
    mul-int/lit8 v9, v88, 0x4

    add-int/lit8 v9, v9, 0x2

    move-object/from16 v0, v31

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    aput v10, v87, v9

    .line 777
    mul-int/lit8 v9, v88, 0x4

    add-int/lit8 v9, v9, 0x3

    move-object/from16 v0, v31

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    aput v10, v87, v9

    .line 778
    add-int/lit8 v88, v88, 0x1

    .line 780
    aput v108, v109, v110

    .line 781
    add-int/lit8 v110, v110, 0x1

    .line 745
    move/from16 v114, v108

    goto :goto_e

    .line 764
    .end local v108    # "spanEnd":I
    .end local v113    # "spanLen":I
    :cond_18
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    .line 763
    move-object/from16 v0, v115

    move/from16 v1, v114

    invoke-interface {v0, v1, v7, v9}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v108

    .line 765
    .restart local v108    # "spanEnd":I
    sub-int v113, v108, v114

    .line 767
    .restart local v113    # "spanLen":I
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v115

    move/from16 v1, v114

    move/from16 v2, v108

    invoke-interface {v0, v1, v2, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v116

    check-cast v116, [Landroid/text/style/MetricAffectingSpan;

    .line 768
    .local v116, "spans":[Landroid/text/style/MetricAffectingSpan;
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v116

    move-object/from16 v1, v115

    invoke-static {v0, v1, v9}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v116

    .end local v116    # "spans":[Landroid/text/style/MetricAffectingSpan;
    check-cast v116, [Landroid/text/style/MetricAffectingSpan;

    .line 769
    .restart local v116    # "spans":[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v46

    move-object/from16 v1, v116

    move/from16 v2, v113

    move-object/from16 v3, v31

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    goto :goto_f

    .line 784
    .end local v108    # "spanEnd":I
    .end local v113    # "spanLen":I
    .end local v116    # "spans":[Landroid/text/style/MetricAffectingSpan;
    :cond_19
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    move-object/from16 v0, v41

    invoke-static {v10, v11, v0}, Landroid/text/StaticLayout;->nGetWidths(J[F)V

    .line 785
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v97

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    move-object/from16 v21, v0

    .line 786
    move-object/from16 v0, v97

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    move-object/from16 v22, v0

    move-object/from16 v0, v97

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v97

    iget-object v9, v0, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    array-length v0, v9

    move/from16 v24, v0

    move-object/from16 v20, v97

    .line 785
    invoke-static/range {v18 .. v24}, Landroid/text/StaticLayout;->nComputeLineBreaks(JLandroid/text/StaticLayout$LineBreaks;[I[F[II)I

    move-result v80

    .line 788
    .local v80, "breakCount":I
    move-object/from16 v0, v97

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    move-object/from16 v82, v0

    .line 789
    .local v82, "breaks":[I
    move-object/from16 v0, v97

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    move-object/from16 v98, v0

    .line 790
    .local v98, "lineWidths":[F
    move-object/from16 v0, v97

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    move-object/from16 v86, v0

    .line 792
    .local v86, "flags":[I
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    sub-int v103, v9, v10

    .line 793
    .local v103, "remainingLineCount":I
    if-eqz v43, :cond_1e

    .line 794
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v43

    if-eq v0, v9, :cond_1b

    .line 795
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1d

    .line 796
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v43

    if-eq v0, v9, :cond_1c

    const/16 v83, 0x1

    .line 797
    .local v83, "ellipsisMayBeApplied":Z
    :goto_10
    if-lez v103, :cond_22

    move/from16 v0, v103

    move/from16 v1, v80

    if-ge v0, v1, :cond_22

    if-eqz v83, :cond_22

    .line 800
    const/16 v119, 0x0

    .line 801
    .local v119, "width":F
    const/16 v85, 0x0

    .line 802
    .local v85, "flag":I
    add-int/lit8 v91, v103, -0x1

    .restart local v91    # "i":I
    :goto_11
    move/from16 v0, v91

    move/from16 v1, v80

    if-ge v0, v1, :cond_21

    .line 803
    add-int/lit8 v9, v80, -0x1

    move/from16 v0, v91

    if-ne v0, v9, :cond_1f

    .line 804
    aget v9, v98, v91

    add-float v119, v119, v9

    .line 810
    :cond_1a
    aget v9, v86, v91

    const/high16 v10, 0x20000000

    and-int/2addr v9, v10

    or-int v85, v85, v9

    .line 802
    add-int/lit8 v91, v91, 0x1

    goto :goto_11

    .line 794
    .end local v83    # "ellipsisMayBeApplied":Z
    .end local v85    # "flag":I
    .end local v91    # "i":I
    .end local v119    # "width":F
    :cond_1b
    const/16 v83, 0x1

    .restart local v83    # "ellipsisMayBeApplied":Z
    goto :goto_10

    .line 796
    .end local v83    # "ellipsisMayBeApplied":Z
    :cond_1c
    const/16 v83, 0x0

    .restart local v83    # "ellipsisMayBeApplied":Z
    goto :goto_10

    .line 795
    .end local v83    # "ellipsisMayBeApplied":Z
    :cond_1d
    const/16 v83, 0x0

    .restart local v83    # "ellipsisMayBeApplied":Z
    goto :goto_10

    .line 793
    .end local v83    # "ellipsisMayBeApplied":Z
    :cond_1e
    const/16 v83, 0x0

    .restart local v83    # "ellipsisMayBeApplied":Z
    goto :goto_10

    .line 806
    .restart local v85    # "flag":I
    .restart local v91    # "i":I
    .restart local v119    # "width":F
    :cond_1f
    if-nez v91, :cond_20

    const/16 v94, 0x0

    .local v94, "j":I
    :goto_12
    aget v9, v82, v91

    move/from16 v0, v94

    if-ge v0, v9, :cond_1a

    .line 807
    aget v9, v41, v94

    add-float v119, v119, v9

    .line 806
    add-int/lit8 v94, v94, 0x1

    goto :goto_12

    .end local v94    # "j":I
    :cond_20
    add-int/lit8 v9, v91, -0x1

    aget v94, v82, v9

    .restart local v94    # "j":I
    goto :goto_12

    .line 813
    .end local v94    # "j":I
    :cond_21
    add-int/lit8 v9, v103, -0x1

    add-int/lit8 v10, v80, -0x1

    aget v10, v82, v10

    aput v10, v82, v9

    .line 814
    add-int/lit8 v9, v103, -0x1

    aput v119, v98, v9

    .line 815
    add-int/lit8 v9, v103, -0x1

    aput v85, v86, v9

    .line 817
    move/from16 v80, v103

    .line 821
    .end local v85    # "flag":I
    .end local v91    # "i":I
    .end local v119    # "width":F
    :cond_22
    move/from16 v20, v6

    .line 823
    .local v20, "here":I
    const/16 v24, 0x0

    .local v24, "fmTop":I
    const/16 v25, 0x0

    .local v25, "fmBottom":I
    const/16 v22, 0x0

    .local v22, "fmAscent":I
    const/16 v23, 0x0

    .line 824
    .local v23, "fmDescent":I
    const/16 v89, 0x0

    .line 825
    .local v89, "fmCacheIndex":I
    const/16 v111, 0x0

    .line 826
    .local v111, "spanEndCacheIndex":I
    const/16 v81, 0x0

    .line 827
    .local v81, "breakIndex":I
    move/from16 v114, v6

    move/from16 v112, v111

    .end local v111    # "spanEndCacheIndex":I
    .local v112, "spanEndCacheIndex":I
    :goto_13
    move/from16 v0, v114

    if-ge v0, v7, :cond_2b

    .line 829
    add-int/lit8 v111, v112, 0x1

    .end local v112    # "spanEndCacheIndex":I
    .restart local v111    # "spanEndCacheIndex":I
    aget v108, v109, v112

    .line 832
    .restart local v108    # "spanEnd":I
    mul-int/lit8 v9, v89, 0x4

    add-int/lit8 v9, v9, 0x0

    aget v9, v87, v9

    move-object/from16 v0, v31

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 833
    mul-int/lit8 v9, v89, 0x4

    add-int/lit8 v9, v9, 0x1

    aget v9, v87, v9

    move-object/from16 v0, v31

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 834
    mul-int/lit8 v9, v89, 0x4

    add-int/lit8 v9, v9, 0x2

    aget v9, v87, v9

    move-object/from16 v0, v31

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 835
    mul-int/lit8 v9, v89, 0x4

    add-int/lit8 v9, v9, 0x3

    aget v9, v87, v9

    move-object/from16 v0, v31

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 836
    add-int/lit8 v89, v89, 0x1

    .line 838
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v0, v24

    if-ge v9, v0, :cond_23

    .line 839
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v24, v0

    .line 841
    :cond_23
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v0, v22

    if-ge v9, v0, :cond_24

    .line 842
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v22, v0

    .line 844
    :cond_24
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v0, v23

    if-le v9, v0, :cond_25

    .line 845
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v23, v0

    .line 847
    :cond_25
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v0, v25

    if-le v9, v0, :cond_26

    .line 848
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v25, v0

    .line 852
    :cond_26
    :goto_14
    move/from16 v0, v81

    move/from16 v1, v80

    if-ge v0, v1, :cond_27

    aget v9, v82, v81

    add-int/2addr v9, v6

    move/from16 v0, v114

    if-ge v9, v0, :cond_27

    .line 853
    add-int/lit8 v81, v81, 0x1

    goto :goto_14

    .line 856
    :cond_27
    move/from16 v0, v81

    move/from16 v1, v80

    if-ge v0, v1, :cond_2a

    aget v9, v82, v81

    add-int/2addr v9, v6

    move/from16 v0, v108

    if-gt v9, v0, :cond_2a

    .line 857
    aget v9, v82, v81

    add-int v21, v6, v9

    .line 859
    .local v21, "endPos":I
    move/from16 v0, v21

    move/from16 v1, v37

    if-ge v0, v1, :cond_28

    const/16 v47, 0x1

    .line 863
    .local v47, "moreChars":Z
    :goto_15
    aget v32, v86, v81

    .line 866
    aget v45, v98, v81

    move-object/from16 v18, p0

    move-object/from16 v19, v5

    move/from16 v38, p2

    move/from16 v39, p3

    move-object/from16 v40, v12

    move/from16 v42, v6

    .line 861
    invoke-direct/range {v18 .. v48}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;ZZ)I

    move-result v26

    .line 868
    move/from16 v0, v21

    move/from16 v1, v108

    if-ge v0, v1, :cond_29

    .line 870
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v24, v0

    .line 871
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v25, v0

    .line 872
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v22, v0

    .line 873
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v23, v0

    .line 878
    :goto_16
    move/from16 v20, v21

    .line 879
    add-int/lit8 v81, v81, 0x1

    .line 881
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v9, v10, :cond_27

    move-object/from16 v0, p0

    iget-boolean v9, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    if-eqz v9, :cond_27

    .line 882
    return-void

    .line 859
    .end local v47    # "moreChars":Z
    :cond_28
    const/16 v47, 0x0

    .restart local v47    # "moreChars":Z
    goto :goto_15

    .line 875
    :cond_29
    const/16 v23, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v24, 0x0

    goto :goto_16

    .line 827
    .end local v21    # "endPos":I
    .end local v47    # "moreChars":Z
    :cond_2a
    move/from16 v114, v108

    move/from16 v112, v111

    .end local v111    # "spanEndCacheIndex":I
    .restart local v112    # "spanEndCacheIndex":I
    goto/16 :goto_13

    .line 887
    .end local v108    # "spanEnd":I
    :cond_2b
    move/from16 v0, v37

    if-ne v7, v0, :cond_2f

    .line 891
    .end local v7    # "paraEnd":I
    .end local v12    # "chs":[C
    .end local v15    # "firstWidthLineCount":I
    .end local v20    # "here":I
    .end local v22    # "fmAscent":I
    .end local v23    # "fmDescent":I
    .end local v24    # "fmTop":I
    .end local v25    # "fmBottom":I
    .end local v34    # "chdirs":[B
    .end local v35    # "dir":I
    .end local v36    # "easy":Z
    .end local v41    # "widths":[F
    .end local v80    # "breakCount":I
    .end local v81    # "breakIndex":I
    .end local v82    # "breaks":[I
    .end local v83    # "ellipsisMayBeApplied":Z
    .end local v84    # "firstWidth":I
    .end local v86    # "flags":[I
    .end local v88    # "fmCacheCount":I
    .end local v89    # "fmCacheIndex":I
    .end local v98    # "lineWidths":[F
    .end local v103    # "remainingLineCount":I
    .end local v104    # "restWidth":I
    .end local v110    # "spanEndCacheCount":I
    .end local v112    # "spanEndCacheIndex":I
    .end local v114    # "spanStart":I
    :cond_2c
    move/from16 v0, v37

    move/from16 v1, v73

    if-eq v0, v1, :cond_2d

    add-int/lit8 v9, v37, -0x1

    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_2e

    .line 892
    :cond_2d
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v9, v10, :cond_2e

    move-object/from16 v49, v4

    move-object/from16 v50, v5

    move/from16 v51, v37

    move/from16 v52, v37

    move-object/from16 v53, v8

    move-object/from16 v54, p1

    .line 895
    invoke-virtual/range {v49 .. v54}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    .line 897
    move-object/from16 v0, v46

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 900
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v53, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v54, v0

    .line 901
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v55, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v56, v0

    .line 905
    iget-object v0, v4, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v65, v0

    iget v0, v4, Landroid/text/MeasuredText;->mDir:I

    move/from16 v66, v0

    iget-boolean v0, v4, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v67, v0

    .line 908
    const/16 v76, 0x0

    .line 903
    const/16 v60, 0x0

    .line 904
    const/16 v61, 0x0

    const/16 v63, 0x0

    .line 906
    const/16 v71, 0x0

    .line 907
    const/16 v72, 0x0

    .line 908
    const/16 v78, 0x0

    move-object/from16 v49, p0

    move-object/from16 v50, v5

    move/from16 v51, v37

    move/from16 v52, v37

    move/from16 v57, v26

    move/from16 v58, v27

    move/from16 v59, v28

    move-object/from16 v62, v31

    move/from16 v64, v33

    move/from16 v68, v37

    move/from16 v69, p2

    move/from16 v70, p3

    move-object/from16 v74, v43

    move/from16 v75, v44

    move-object/from16 v77, v46

    move/from16 v79, v48

    .line 899
    invoke-direct/range {v49 .. v79}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;ZZ)I

    move-result v26

    .line 910
    :cond_2e
    return-void

    .line 638
    .restart local v7    # "paraEnd":I
    .restart local v12    # "chs":[C
    .restart local v15    # "firstWidthLineCount":I
    .restart local v20    # "here":I
    .restart local v22    # "fmAscent":I
    .restart local v23    # "fmDescent":I
    .restart local v24    # "fmTop":I
    .restart local v25    # "fmBottom":I
    .restart local v34    # "chdirs":[B
    .restart local v35    # "dir":I
    .restart local v36    # "easy":Z
    .restart local v41    # "widths":[F
    .restart local v80    # "breakCount":I
    .restart local v81    # "breakIndex":I
    .restart local v82    # "breaks":[I
    .restart local v83    # "ellipsisMayBeApplied":Z
    .restart local v84    # "firstWidth":I
    .restart local v86    # "flags":[I
    .restart local v88    # "fmCacheCount":I
    .restart local v89    # "fmCacheIndex":I
    .restart local v98    # "lineWidths":[F
    .restart local v103    # "remainingLineCount":I
    .restart local v104    # "restWidth":I
    .restart local v110    # "spanEndCacheCount":I
    .restart local v112    # "spanEndCacheIndex":I
    .restart local v114    # "spanStart":I
    :cond_2f
    move v6, v7

    goto/16 :goto_2
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 1243
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1288
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 1289
    const/4 v0, 0x0

    return v0

    .line 1292
    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1297
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 1298
    const/4 v0, 0x0

    return v0

    .line 1301
    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 1306
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getHeight(Z)I
    .locals 4
    .param p1, "cap"    # Z

    .prologue
    const/4 v3, -0x1

    .line 1317
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    if-ne v0, v3, :cond_0

    .line 1318
    const-string/jumbo v0, "StaticLayout"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 1317
    if-eqz v0, :cond_0

    .line 1319
    const-string/jumbo v0, "StaticLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maxLineHeight should not be -1.  maxLines:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1320
    iget v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 1319
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1321
    const-string/jumbo v2, " lineCount:"

    .line 1319
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1321
    iget v2, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 1319
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    if-eq v0, v3, :cond_1

    .line 1325
    iget v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    .line 1324
    :goto_0
    return v0

    .line 1325
    :cond_1
    invoke-super {p0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getHyphen(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1251
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .locals 5
    .param p1, "line"    # I
    .param p2, "align"    # Landroid/text/Layout$Alignment;

    .prologue
    const/4 v3, 0x0

    .line 1259
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne p2, v2, :cond_1

    .line 1260
    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v2, :cond_0

    .line 1261
    return v3

    .line 1263
    :cond_0
    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v2, v2, v3

    return v2

    .line 1265
    :cond_1
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne p2, v2, :cond_3

    .line 1266
    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v2, :cond_2

    .line 1267
    return v3

    .line 1269
    :cond_2
    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v2, v2, v3

    neg-int v2, v2

    return v2

    .line 1271
    :cond_3
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne p2, v2, :cond_6

    .line 1272
    const/4 v0, 0x0

    .line 1273
    .local v0, "left":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz v2, :cond_4

    .line 1274
    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v0, v2, v3

    .line 1276
    :cond_4
    const/4 v1, 0x0

    .line 1277
    .local v1, "right":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v2, :cond_5

    .line 1278
    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v1, v2, v3

    .line 1280
    :cond_5
    sub-int v2, v0, v1

    shr-int/lit8 v2, v2, 0x1

    return v2

    .line 1282
    .end local v0    # "left":I
    .end local v1    # "right":I
    :cond_6
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unhandled alignment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public getLineContainsTab(I)Z
    .locals 3
    .param p1, "line"    # I

    .prologue
    const/4 v0, 0x0

    .line 1228
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x0

    aget v1, v1, v2

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 1203
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1213
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 1233
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .locals 7
    .param p1, "vertical"    # I

    .prologue
    const/4 v6, 0x0

    .line 1182
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 1183
    .local v1, "high":I
    const/4 v3, -0x1

    .line 1185
    .local v3, "low":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 1186
    .local v2, "lines":[I
    :goto_0
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 1187
    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .line 1188
    .local v0, "guess":I
    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_0

    .line 1189
    move v1, v0

    goto :goto_0

    .line 1191
    :cond_0
    move v3, v0

    goto :goto_0

    .line 1194
    .end local v0    # "guess":I
    :cond_1
    if-gez v3, :cond_2

    .line 1195
    return v6

    .line 1197
    :cond_2
    return v3
.end method

.method public getLineStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1218
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1208
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1223
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 1238
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method
