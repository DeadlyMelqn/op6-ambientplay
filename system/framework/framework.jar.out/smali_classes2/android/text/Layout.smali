.class public abstract Landroid/text/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Layout$Alignment;,
        Landroid/text/Layout$Directions;,
        Landroid/text/Layout$Ellipsizer;,
        Landroid/text/Layout$SpannedEllipsizer;,
        Landroid/text/Layout$TabStops;
    }
.end annotation


# static fields
.field private static final synthetic -android-text-Layout$AlignmentSwitchesValues:[I = null

.field public static final BREAK_STRATEGY_BALANCED:I = 0x2

.field public static final BREAK_STRATEGY_HIGH_QUALITY:I = 0x1

.field public static final BREAK_STRATEGY_SIMPLE:I = 0x0

.field public static final DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

.field public static final DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

.field public static final DIR_LEFT_TO_RIGHT:I = 0x1

.field static final DIR_REQUEST_DEFAULT_LTR:I = 0x2

.field static final DIR_REQUEST_DEFAULT_RTL:I = -0x2

.field static final DIR_REQUEST_LTR:I = 0x1

.field static final DIR_REQUEST_RTL:I = -0x1

.field public static final DIR_RIGHT_TO_LEFT:I = -0x1

.field public static final HYPHENATION_FREQUENCY_FULL:I = 0x2

.field public static final HYPHENATION_FREQUENCY_NONE:I = 0x0

.field public static final HYPHENATION_FREQUENCY_NORMAL:I = 0x1

.field public static final JUSTIFICATION_MODE_INTER_WORD:I = 0x1

.field public static final JUSTIFICATION_MODE_NONE:I = 0x0

.field private static final NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

.field static final RUN_LENGTH_MASK:I = 0x3ffffff

.field static final RUN_LEVEL_MASK:I = 0x3f

.field static final RUN_LEVEL_SHIFT:I = 0x1a

.field static final RUN_RTL_FLAG:I = 0x4000000

.field private static final TAB_INCREMENT:I = 0x14

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mJustificationMode:I

.field private mLineBackgroundSpans:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/LineBackgroundSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/text/TextPaint;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannedText:Z

.field private mText:Ljava/lang/CharSequence;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field private mWidth:I


# direct methods
.method private static synthetic -getandroid-text-Layout$AlignmentSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/text/Layout;->-android-text-Layout$AlignmentSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/Layout;->-android-text-Layout$AlignmentSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/text/Layout$Alignment;->values()[Landroid/text/Layout$Alignment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Landroid/text/Layout;->-android-text-Layout$AlignmentSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Landroid/text/Layout;III[CILandroid/text/TextUtils$TruncateAt;)V
    .locals 0
    .param p0, "-this"    # Landroid/text/Layout;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "line"    # I
    .param p4, "dest"    # [C
    .param p5, "destoff"    # I
    .param p6, "method"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;->ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    .line 103
    sput-object v0, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 2212
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    .line 2246
    new-instance v0, Landroid/text/Layout$Directions;

    const v1, 0x3ffffff

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    .line 2245
    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 2251
    new-instance v0, Landroid/text/Layout$Directions;

    const v1, 0x7ffffff

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    .line 2250
    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    .line 48
    return-void
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingMult"    # F
    .param p6, "spacingAdd"    # F

    .prologue
    .line 191
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 193
    return-void
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "spacingMult"    # F
    .param p7, "spacingAdd"    # F

    .prologue
    const/4 v1, 0x0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2209
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 214
    if-gez p3, :cond_0

    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    if-eqz p2, :cond_1

    .line 222
    iput v1, p2, Landroid/text/TextPaint;->bgColor:I

    .line 223
    iput v1, p2, Landroid/text/TextPaint;->baselineShift:I

    .line 226
    :cond_1
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 227
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 228
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 229
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 230
    iput p6, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 231
    iput p7, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 232
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 233
    iput-object p5, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 234
    return-void
.end method

.method private addSelection(IIIIILandroid/graphics/Path;)V
    .locals 19
    .param p1, "line"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "top"    # I
    .param p5, "bottom"    # I
    .param p6, "dest"    # Landroid/graphics/Path;

    .prologue
    .line 1661
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v16

    .line 1662
    .local v16, "linestart":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v15

    .line 1663
    .local v15, "lineend":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v9

    .line 1665
    .local v9, "dirs":Landroid/text/Layout$Directions;
    move/from16 v0, v16

    if-le v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v5, v15, -0x1

    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0xa

    if-ne v3, v5, :cond_0

    .line 1666
    add-int/lit8 v15, v15, -0x1

    .line 1668
    :cond_0
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v3, v3

    if-ge v14, v3, :cond_3

    .line 1669
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    aget v3, v3, v14

    add-int v13, v16, v3

    .line 1670
    .local v13, "here":I
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v5, v14, 0x1

    aget v3, v3, v5

    const v5, 0x3ffffff

    and-int/2addr v3, v5

    add-int v18, v13, v3

    .line 1672
    .local v18, "there":I
    move/from16 v0, v18

    if-le v0, v15, :cond_1

    .line 1673
    move/from16 v18, v15

    .line 1675
    :cond_1
    move/from16 v0, p2

    move/from16 v1, v18

    if-gt v0, v1, :cond_2

    move/from16 v0, p3

    if-lt v0, v13, :cond_2

    .line 1676
    move/from16 v0, p2

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1677
    .local v17, "st":I
    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1679
    .local v10, "en":I
    move/from16 v0, v17

    if-eq v0, v10, :cond_2

    .line 1680
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p1

    invoke-direct {v0, v1, v3, v2, v5}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v11

    .line 1681
    .local v11, "h1":F
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v10, v3, v1, v5}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v12

    .line 1683
    .local v12, "h2":F
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1684
    .local v4, "left":F
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1686
    .local v6, "right":F
    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v7, v0

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v3, p6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1668
    .end local v4    # "left":F
    .end local v6    # "right":F
    .end local v10    # "en":I
    .end local v11    # "h1":F
    .end local v12    # "h2":F
    .end local v17    # "st":I
    :cond_2
    add-int/lit8 v14, v14, 0x2

    goto :goto_0

    .line 1690
    .end local v13    # "here":I
    .end local v18    # "there":I
    :cond_3
    return-void
.end method

.method private ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "line"    # I
    .param p4, "dest"    # [C
    .param p5, "destoff"    # I
    .param p6, "method"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 2047
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    .line 2049
    .local v2, "ellipsisCount":I
    if-nez v2, :cond_0

    .line 2050
    return-void

    .line 2053
    :cond_0
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v3

    .line 2054
    .local v3, "ellipsisStart":I
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 2056
    .local v5, "linestart":I
    move v4, v3

    .local v4, "i":I
    :goto_0
    add-int v6, v3, v2

    if-ge v4, v6, :cond_3

    .line 2059
    if-ne v4, v3, :cond_2

    .line 2060
    invoke-direct {p0, p6}, Landroid/text/Layout;->getEllipsisChar(Landroid/text/TextUtils$TruncateAt;)C

    move-result v1

    .line 2065
    :goto_1
    add-int v0, v4, v5

    .line 2067
    .local v0, "a":I
    if-lt v0, p1, :cond_1

    if-ge v0, p2, :cond_1

    .line 2068
    add-int v6, p5, v0

    sub-int/2addr v6, p1

    aput-char v1, p4, v6

    .line 2056
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2062
    .end local v0    # "a":I
    :cond_2
    const v1, 0xfeff

    .local v1, "c":C
    goto :goto_1

    .line 2071
    .end local v1    # "c":C
    :cond_3
    return-void
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .locals 1
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 143
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {p0, p1, p2, p3, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F

    move-result v0

    return v0
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F
    .locals 5
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .prologue
    .line 154
    const/4 v1, 0x0

    .line 157
    .local v1, "need":F
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_2

    .line 158
    const/16 v4, 0xa

    invoke-static {p0, v4, v0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    .line 160
    .local v2, "next":I
    if-gez v2, :cond_0

    .line 161
    move v2, p2

    .line 164
    :cond_0
    invoke-static {p3, p0, v0, v2, p4}, Landroid/text/Layout;->measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F

    move-result v3

    .line 166
    .local v3, "w":F
    cmpl-float v4, v3, v1

    if-lez v4, :cond_1

    .line 167
    move v1, v3

    .line 169
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 157
    move v0, v2

    goto :goto_0

    .line 172
    .end local v2    # "next":I
    .end local v3    # "w":F
    :cond_2
    return v1
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .locals 2
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 131
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method private getEllipsisChar(Landroid/text/TextUtils$TruncateAt;)C
    .locals 2
    .param p1, "method"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    const/4 v1, 0x0

    .line 2040
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, v0, :cond_0

    .line 2041
    sget-object v0, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    aget-char v0, v0, v1

    .line 2040
    :goto_0
    return v0

    .line 2042
    :cond_0
    sget-object v0, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method private getHorizontal(IZ)F
    .locals 1
    .param p1, "offset"    # I
    .param p2, "primary"    # Z

    .prologue
    .line 1066
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v0

    goto :goto_0
.end method

.method private getHorizontal(IZIZ)F
    .locals 14
    .param p1, "offset"    # I
    .param p2, "trailing"    # Z
    .param p3, "line"    # I
    .param p4, "clamped"    # Z

    .prologue
    .line 1076
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1077
    .local v4, "start":I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1078
    .local v5, "end":I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 1079
    .local v6, "dir":I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v8

    .line 1080
    .local v8, "hasTab":Z
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 1082
    .local v7, "directions":Landroid/text/Layout$Directions;
    const/4 v9, 0x0

    .line 1083
    .local v9, "tabStops":Landroid/text/Layout$TabStops;
    if-eqz v8, :cond_0

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_0

    .line 1086
    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v4, v5, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/TabStopSpan;

    .line 1087
    .local v12, "tabs":[Landroid/text/style/TabStopSpan;
    array-length v2, v12

    if-lez v2, :cond_0

    .line 1088
    new-instance v9, Landroid/text/Layout$TabStops;

    .end local v9    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v2, 0x14

    invoke-direct {v9, v2, v12}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 1092
    .end local v12    # "tabs":[Landroid/text/style/TabStopSpan;
    :cond_0
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v1

    .line 1093
    .local v1, "tl":Landroid/text/TextLine;
    iget-object v2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1094
    sub-int v2, p1, v4

    const/4 v3, 0x0

    move/from16 v0, p2

    invoke-virtual {v1, v2, v0, v3}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v13

    .line 1095
    .local v13, "wid":F
    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1097
    if-eqz p4, :cond_1

    iget v2, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v2, v2

    cmpl-float v2, v13, v2

    if-lez v2, :cond_1

    .line 1098
    iget v2, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v13, v2

    .line 1100
    :cond_1
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v10

    .line 1101
    .local v10, "left":I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v11

    .line 1103
    .local v11, "right":I
    move/from16 v0, p3

    invoke-direct {p0, v0, v10, v11}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v13

    return v2
.end method

.method private getHorizontal(IZZ)F
    .locals 2
    .param p1, "offset"    # I
    .param p2, "trailing"    # Z
    .param p3, "clamped"    # Z

    .prologue
    .line 1070
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1072
    .local v0, "line":I
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v1

    return v1
.end method

.method private getJustifyWidth(I)F
    .locals 24
    .param p1, "lineNum"    # I

    .prologue
    .line 296
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 297
    .local v12, "paraAlign":Landroid/text/Layout$Alignment;
    const/16 v19, 0x0

    .line 298
    .local v19, "tabStops":Landroid/text/Layout$TabStops;
    const/16 v20, 0x0

    .line 300
    .local v20, "tabStopsIsInitialized":Z
    const/4 v8, 0x0

    .line 301
    .local v8, "left":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/text/Layout;->mWidth:I

    .line 303
    .local v13, "right":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 305
    .local v5, "dir":I
    sget-object v16, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 306
    .local v16, "spans":[Landroid/text/style/ParagraphStyle;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mSpannedText:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    .line 307
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v14, Landroid/text/Spanned;

    .line 308
    .local v14, "sp":Landroid/text/Spanned;
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v17

    .line 310
    .local v17, "start":I
    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    add-int/lit8 v23, v17, -0x1

    invoke-interface/range {v22 .. v23}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v22

    const/16 v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    :cond_0
    const/4 v7, 0x1

    .line 312
    .local v7, "isFirstParaLine":Z
    :goto_0
    if-eqz v7, :cond_1

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v22

    .line 314
    const-class v23, Landroid/text/style/ParagraphStyle;

    .line 313
    move/from16 v0, v17

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v14, v0, v1, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v15

    .line 315
    .local v15, "spanEnd":I
    const-class v22, Landroid/text/style/ParagraphStyle;

    move/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v14, v0, v15, v1}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "spans":[Landroid/text/style/ParagraphStyle;
    check-cast v16, [Landroid/text/style/ParagraphStyle;

    .line 317
    .restart local v16    # "spans":[Landroid/text/style/ParagraphStyle;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v11, v22, -0x1

    .local v11, "n":I
    :goto_1
    if-ltz v11, :cond_1

    .line 318
    aget-object v22, v16, v11

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/text/style/AlignmentSpan;

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 319
    aget-object v22, v16, v11

    check-cast v22, Landroid/text/style/AlignmentSpan;

    invoke-interface/range {v22 .. v22}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v12

    .line 325
    .end local v11    # "n":I
    .end local v15    # "spanEnd":I
    :cond_1
    move-object/from16 v0, v16

    array-length v9, v0

    .line 326
    .local v9, "length":I
    move/from16 v21, v7

    .line 327
    .local v21, "useFirstLineMargin":Z
    const/4 v11, 0x0

    .restart local v11    # "n":I
    :goto_2
    if-ge v11, v9, :cond_2

    .line 328
    aget-object v22, v16, v11

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 329
    aget-object v22, v16, v11

    check-cast v22, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface/range {v22 .. v22}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v4

    .line 330
    .local v4, "count":I
    aget-object v22, v16, v11

    move-object/from16 v0, v22

    invoke-interface {v14, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v18

    .line 331
    .local v18, "startLine":I
    add-int v22, v18, v4

    move/from16 v0, p1

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    .line 332
    const/16 v21, 0x1

    .line 337
    .end local v4    # "count":I
    .end local v18    # "startLine":I
    .end local v21    # "useFirstLineMargin":Z
    :cond_2
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v9, :cond_8

    .line 338
    aget-object v22, v16, v11

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/text/style/LeadingMarginSpan;

    move/from16 v22, v0

    if-eqz v22, :cond_3

    .line 339
    aget-object v10, v16, v11

    check-cast v10, Landroid/text/style/LeadingMarginSpan;

    .line 340
    .local v10, "margin":Landroid/text/style/LeadingMarginSpan;
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v5, v0, :cond_7

    .line 341
    move/from16 v0, v21

    invoke-interface {v10, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v22

    sub-int v13, v13, v22

    .line 337
    .end local v10    # "margin":Landroid/text/style/LeadingMarginSpan;
    :cond_3
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 310
    .end local v7    # "isFirstParaLine":Z
    .end local v9    # "length":I
    .end local v11    # "n":I
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "isFirstParaLine":Z
    goto/16 :goto_0

    .line 317
    .restart local v11    # "n":I
    .restart local v15    # "spanEnd":I
    :cond_5
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 327
    .end local v15    # "spanEnd":I
    .restart local v9    # "length":I
    .restart local v21    # "useFirstLineMargin":Z
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 343
    .end local v21    # "useFirstLineMargin":Z
    .restart local v10    # "margin":Landroid/text/style/LeadingMarginSpan;
    :cond_7
    move/from16 v0, v21

    invoke-interface {v10, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v22

    add-int v8, v8, v22

    goto :goto_4

    .line 349
    .end local v7    # "isFirstParaLine":Z
    .end local v9    # "length":I
    .end local v10    # "margin":Landroid/text/style/LeadingMarginSpan;
    .end local v11    # "n":I
    .end local v14    # "sp":Landroid/text/Spanned;
    .end local v17    # "start":I
    :cond_8
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 350
    new-instance v19, Landroid/text/Layout$TabStops;

    .end local v19    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v22, 0x14

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 354
    :cond_9
    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v22

    if-ne v12, v0, :cond_b

    .line 355
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v5, v0, :cond_a

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 363
    .local v3, "align":Landroid/text/Layout$Alignment;
    :goto_5
    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v22

    if-ne v3, v0, :cond_f

    .line 364
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v5, v0, :cond_e

    .line 365
    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v6

    .line 379
    .local v6, "indentWidth":I
    :goto_6
    sub-int v22, v13, v8

    sub-int v22, v22, v6

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    return v22

    .line 355
    .end local v3    # "align":Landroid/text/Layout$Alignment;
    .end local v6    # "indentWidth":I
    :cond_a
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .restart local v3    # "align":Landroid/text/Layout$Alignment;
    goto :goto_5

    .line 356
    .end local v3    # "align":Landroid/text/Layout$Alignment;
    :cond_b
    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v22

    if-ne v12, v0, :cond_d

    .line 357
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v5, v0, :cond_c

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .restart local v3    # "align":Landroid/text/Layout$Alignment;
    goto :goto_5

    .end local v3    # "align":Landroid/text/Layout$Alignment;
    :cond_c
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .restart local v3    # "align":Landroid/text/Layout$Alignment;
    goto :goto_5

    .line 359
    .end local v3    # "align":Landroid/text/Layout$Alignment;
    :cond_d
    move-object v3, v12

    .restart local v3    # "align":Landroid/text/Layout$Alignment;
    goto :goto_5

    .line 367
    :cond_e
    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v22

    move/from16 v0, v22

    neg-int v6, v0

    .restart local v6    # "indentWidth":I
    goto :goto_6

    .line 369
    .end local v6    # "indentWidth":I
    :cond_f
    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v22

    if-ne v3, v0, :cond_11

    .line 370
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v5, v0, :cond_10

    .line 371
    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v22

    move/from16 v0, v22

    neg-int v6, v0

    .restart local v6    # "indentWidth":I
    goto :goto_6

    .line 373
    .end local v6    # "indentWidth":I
    :cond_10
    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v6

    .restart local v6    # "indentWidth":I
    goto :goto_6

    .line 376
    .end local v6    # "indentWidth":I
    :cond_11
    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v6

    .restart local v6    # "indentWidth":I
    goto :goto_6
.end method

.method private getLineExtent(ILandroid/text/Layout$TabStops;Z)F
    .locals 10
    .param p1, "line"    # I
    .param p2, "tabStops"    # Landroid/text/Layout$TabStops;
    .param p3, "full"    # Z

    .prologue
    .line 1237
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 1238
    .local v3, "start":I
    if-eqz p3, :cond_1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 1239
    .local v4, "end":I
    :goto_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    .line 1240
    .local v7, "hasTabs":Z
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 1241
    .local v6, "directions":Landroid/text/Layout$Directions;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 1243
    .local v5, "dir":I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 1244
    .local v0, "tl":Landroid/text/TextLine;
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getHyphen(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    .line 1245
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1246
    invoke-direct {p0, p1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1247
    invoke-direct {p0, p1}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->justify(F)V

    .line 1249
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v9

    .line 1250
    .local v9, "width":F
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    .line 1251
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1252
    return v9

    .line 1238
    .end local v0    # "tl":Landroid/text/TextLine;
    .end local v4    # "end":I
    .end local v5    # "dir":I
    .end local v6    # "directions":Landroid/text/Layout$Directions;
    .end local v7    # "hasTabs":Z
    .end local v9    # "width":F
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v4

    .restart local v4    # "end":I
    goto :goto_0
.end method

.method private getLineExtent(IZ)F
    .locals 13
    .param p1, "line"    # I
    .param p2, "full"    # Z

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 1196
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 1197
    .local v3, "start":I
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 1199
    .local v4, "end":I
    :goto_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    .line 1200
    .local v7, "hasTabs":Z
    const/4 v8, 0x0

    .line 1201
    .local v8, "tabStops":Landroid/text/Layout$TabStops;
    if-eqz v7, :cond_0

    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 1204
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    const-class v2, Landroid/text/style/TabStopSpan;

    invoke-static {v1, v3, v4, v2}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/TabStopSpan;

    .line 1205
    .local v9, "tabs":[Landroid/text/style/TabStopSpan;
    array-length v1, v9

    if-lez v1, :cond_0

    .line 1206
    new-instance v8, Landroid/text/Layout$TabStops;

    .end local v8    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v1, 0x14

    invoke-direct {v8, v1, v9}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 1209
    .end local v9    # "tabs":[Landroid/text/style/TabStopSpan;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 1211
    .local v6, "directions":Landroid/text/Layout$Directions;
    if-nez v6, :cond_2

    .line 1212
    const/4 v1, 0x0

    return v1

    .line 1197
    .end local v4    # "end":I
    .end local v6    # "directions":Landroid/text/Layout$Directions;
    .end local v7    # "hasTabs":Z
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v4

    .restart local v4    # "end":I
    goto :goto_0

    .line 1214
    .restart local v6    # "directions":Landroid/text/Layout$Directions;
    .restart local v7    # "hasTabs":Z
    :cond_2
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 1216
    .local v5, "dir":I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 1217
    .local v0, "tl":Landroid/text/TextLine;
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getHyphen(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    .line 1218
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1219
    invoke-direct {p0, p1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1220
    invoke-direct {p0, p1}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->justify(F)V

    .line 1222
    :cond_3
    invoke-virtual {v0, v12}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v10

    .line 1223
    .local v10, "width":F
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v11}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    .line 1224
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1225
    return v10
.end method

.method private getLineStartPos(III)I
    .locals 11
    .param p1, "line"    # I
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    .line 662
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 663
    .local v0, "align":Landroid/text/Layout$Alignment;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 665
    .local v1, "dir":I
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_2

    .line 666
    const/4 v9, 0x1

    if-ne v1, v9, :cond_1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 672
    :cond_0
    :goto_0
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_5

    .line 673
    const/4 v9, 0x1

    if-ne v1, v9, :cond_4

    .line 674
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v9}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v9

    add-int v8, p2, v9

    .line 704
    .local v8, "x":I
    :goto_1
    return v8

    .line 666
    .end local v8    # "x":I
    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 667
    :cond_2
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_0

    .line 668
    const/4 v9, 0x1

    if-ne v1, v9, :cond_3

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 676
    :cond_4
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v9}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v9

    add-int v8, p3, v9

    .restart local v8    # "x":I
    goto :goto_1

    .line 679
    .end local v8    # "x":I
    :cond_5
    const/4 v7, 0x0

    .line 680
    .local v7, "tabStops":Landroid/text/Layout$TabStops;
    iget-boolean v9, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v9, :cond_6

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 681
    iget-object v4, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spanned;

    .line 682
    .local v4, "spanned":Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 683
    .local v5, "start":I
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v9

    .line 684
    const-class v10, Landroid/text/style/TabStopSpan;

    .line 683
    invoke-interface {v4, v5, v9, v10}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    .line 686
    .local v3, "spanEnd":I
    const-class v9, Landroid/text/style/TabStopSpan;

    .line 685
    invoke-static {v4, v5, v3, v9}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/TabStopSpan;

    .line 687
    .local v6, "tabSpans":[Landroid/text/style/TabStopSpan;
    array-length v9, v6

    if-lez v9, :cond_6

    .line 688
    new-instance v7, Landroid/text/Layout$TabStops;

    .end local v7    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v9, 0x14

    invoke-direct {v7, v9, v6}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 691
    .end local v3    # "spanEnd":I
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "start":I
    .end local v6    # "tabSpans":[Landroid/text/style/TabStopSpan;
    :cond_6
    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v9}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v9

    float-to-int v2, v9

    .line 692
    .local v2, "max":I
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_8

    .line 693
    const/4 v9, 0x1

    if-ne v1, v9, :cond_7

    .line 694
    sub-int v9, p3, v2

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v10}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v10

    add-int v8, v9, v10

    .restart local v8    # "x":I
    goto :goto_1

    .line 697
    .end local v8    # "x":I
    :cond_7
    sub-int v9, p2, v2

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v10}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v10

    add-int v8, v9, v10

    .restart local v8    # "x":I
    goto :goto_1

    .line 700
    .end local v8    # "x":I
    :cond_8
    and-int/lit8 v2, v2, -0x2

    .line 701
    add-int v9, p2, p3

    sub-int/2addr v9, v2

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v10}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    shr-int v8, v9, v10

    .restart local v8    # "x":I
    goto :goto_1
.end method

.method private getLineVisibleEnd(III)I
    .locals 3
    .param p1, "line"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1423
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1425
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_1

    .line 1426
    return p3

    .line 1429
    .local v0, "ch":C
    :cond_0
    add-int/lit8 p3, p3, -0x1

    .end local v0    # "ch":C
    :cond_1
    if-le p3, p2, :cond_3

    .line 1430
    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1432
    .restart local v0    # "ch":C
    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 1433
    add-int/lit8 v2, p3, -0x1

    return v2

    .line 1436
    :cond_2
    invoke-static {v0}, Landroid/text/TextLine;->isLineEndSpace(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1442
    .end local v0    # "ch":C
    :cond_3
    return p3
.end method

.method private getOffsetAtStartOf(I)I
    .locals 9
    .param p1, "offset"    # I

    .prologue
    const/4 v7, 0x0

    .line 1532
    if-nez p1, :cond_0

    .line 1533
    return v7

    .line 1535
    :cond_0
    iget-object v6, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1536
    .local v6, "text":Ljava/lang/CharSequence;
    invoke-interface {v6, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1538
    .local v0, "c":C
    const v7, 0xdc00

    if-lt v0, v7, :cond_1

    const v7, 0xdfff

    if-gt v0, v7, :cond_1

    .line 1539
    add-int/lit8 v7, p1, -0x1

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1541
    .local v1, "c1":C
    const v7, 0xd800

    if-lt v1, v7, :cond_1

    const v7, 0xdbff

    if-gt v1, v7, :cond_1

    .line 1542
    add-int/lit8 p1, p1, -0x1

    .line 1545
    .end local v1    # "c1":C
    :cond_1
    iget-boolean v7, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v7, :cond_3

    move-object v7, v6

    .line 1546
    check-cast v7, Landroid/text/Spanned;

    .line 1547
    const-class v8, Landroid/text/style/ReplacementSpan;

    .line 1546
    invoke-interface {v7, p1, p1, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ReplacementSpan;

    .line 1549
    .local v4, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v4

    if-ge v3, v7, :cond_3

    move-object v7, v6

    .line 1550
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v4, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .local v5, "start":I
    move-object v7, v6

    .line 1551
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v4, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1553
    .local v2, "end":I
    if-ge v5, p1, :cond_2

    if-le v2, p1, :cond_2

    .line 1554
    move p1, v5

    .line 1549
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1558
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v4    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v5    # "start":I
    :cond_3
    return p1
.end method

.method private getOffsetToLeftRightOf(IZ)I
    .locals 13
    .param p1, "caret"    # I
    .param p2, "toLeft"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1478
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    .line 1479
    .local v10, "line":I
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 1480
    .local v3, "lineStart":I
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 1481
    .local v4, "lineEnd":I
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 1483
    .local v5, "lineDir":I
    const/4 v11, 0x0

    .line 1484
    .local v11, "lineChanged":Z
    const/4 v1, -0x1

    if-ne v5, v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-ne p2, v1, :cond_3

    const/4 v9, 0x1

    .line 1486
    .local v9, "advance":Z
    :goto_1
    if-eqz v9, :cond_5

    .line 1487
    if-ne p1, v4, :cond_0

    .line 1488
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v10, v1, :cond_4

    .line 1489
    const/4 v11, 0x1

    .line 1490
    add-int/lit8 v10, v10, 0x1

    .line 1506
    :cond_0
    :goto_2
    if-eqz v11, :cond_1

    .line 1507
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 1508
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 1509
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v12

    .line 1510
    .local v12, "newDir":I
    if-eq v12, v5, :cond_1

    .line 1514
    xor-int/lit8 p2, p2, 0x1

    .line 1515
    move v5, v12

    .line 1519
    .end local v12    # "newDir":I
    :cond_1
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 1521
    .local v6, "directions":Landroid/text/Layout$Directions;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 1523
    .local v0, "tl":Landroid/text/TextLine;
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1524
    sub-int v1, p1, v3

    invoke-virtual {v0, v1, p2}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v1

    add-int p1, v3, v1

    .line 1525
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    move-result-object v0

    .line 1526
    return p1

    .end local v0    # "tl":Landroid/text/TextLine;
    .end local v6    # "directions":Landroid/text/Layout$Directions;
    .end local v9    # "advance":Z
    :cond_2
    move v1, v7

    .line 1484
    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    .restart local v9    # "advance":Z
    goto :goto_1

    .line 1492
    :cond_4
    return p1

    .line 1496
    :cond_5
    if-ne p1, v3, :cond_0

    .line 1497
    if-lez v10, :cond_6

    .line 1498
    const/4 v11, 0x1

    .line 1499
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 1501
    :cond_6
    return p1
.end method

.method private getParagraphLeadingMargin(I)I
    .locals 16
    .param p1, "line"    # I

    .prologue
    .line 1803
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v14, :cond_0

    .line 1804
    const/4 v14, 0x0

    return v14

    .line 1806
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v11, Landroid/text/Spanned;

    .line 1808
    .local v11, "spanned":Landroid/text/Spanned;
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 1809
    .local v5, "lineStart":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 1811
    .local v4, "lineEnd":I
    const-class v14, Landroid/text/style/LeadingMarginSpan;

    .line 1810
    invoke-interface {v11, v5, v4, v14}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v9

    .line 1813
    .local v9, "spanEnd":I
    const-class v14, Landroid/text/style/LeadingMarginSpan;

    .line 1812
    invoke-static {v11, v5, v9, v14}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/LeadingMarginSpan;

    .line 1814
    .local v12, "spans":[Landroid/text/style/LeadingMarginSpan;
    array-length v14, v12

    if-nez v14, :cond_1

    .line 1815
    const/4 v14, 0x0

    return v14

    .line 1818
    :cond_1
    const/4 v6, 0x0

    .line 1820
    .local v6, "margin":I
    if-eqz v5, :cond_3

    .line 1821
    add-int/lit8 v14, v5, -0x1

    invoke-interface {v11, v14}, Landroid/text/Spanned;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    if-ne v14, v15, :cond_4

    const/4 v3, 0x1

    .line 1823
    .local v3, "isFirstParaLine":Z
    :goto_0
    move v13, v3

    .line 1824
    .local v13, "useFirstLineMargin":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v14, v12

    if-ge v2, v14, :cond_6

    .line 1825
    aget-object v14, v12, v2

    instance-of v14, v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v14, :cond_2

    .line 1826
    aget-object v14, v12, v2

    invoke-interface {v11, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 1827
    .local v7, "spStart":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    .line 1828
    .local v10, "spanLine":I
    aget-object v14, v12, v2

    check-cast v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v14}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v1

    .line 1830
    .local v1, "count":I
    add-int v14, v10, v1

    move/from16 v0, p1

    if-ge v0, v14, :cond_5

    const/4 v14, 0x1

    :goto_2
    or-int/2addr v13, v14

    .line 1824
    .end local v1    # "count":I
    .end local v7    # "spStart":I
    .end local v10    # "spanLine":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1820
    .end local v2    # "i":I
    .end local v3    # "isFirstParaLine":Z
    .end local v13    # "useFirstLineMargin":Z
    :cond_3
    const/4 v3, 0x1

    .restart local v3    # "isFirstParaLine":Z
    goto :goto_0

    .line 1821
    .end local v3    # "isFirstParaLine":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "isFirstParaLine":Z
    goto :goto_0

    .line 1830
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v7    # "spStart":I
    .restart local v10    # "spanLine":I
    .restart local v13    # "useFirstLineMargin":Z
    :cond_5
    const/4 v14, 0x0

    goto :goto_2

    .line 1833
    .end local v1    # "count":I
    .end local v7    # "spStart":I
    .end local v10    # "spanLine":I
    :cond_6
    const/4 v2, 0x0

    :goto_3
    array-length v14, v12

    if-ge v2, v14, :cond_7

    .line 1834
    aget-object v8, v12, v2

    .line 1835
    .local v8, "span":Landroid/text/style/LeadingMarginSpan;
    invoke-interface {v8, v13}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v14

    add-int/2addr v6, v14

    .line 1833
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1838
    .end local v8    # "span":Landroid/text/style/LeadingMarginSpan;
    :cond_7
    return v6
.end method

.method static getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 2
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 2028
    if-ne p1, p2, :cond_0

    if-lez p1, :cond_0

    .line 2029
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2032
    :cond_0
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_1

    .line 2033
    check-cast p0, Landroid/text/SpannableStringBuilder;

    .end local p0    # "text":Landroid/text/Spanned;
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2035
    .restart local p0    # "text":Landroid/text/Spanned;
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private isJustificationRequired(I)Z
    .locals 4
    .param p1, "lineNum"    # I

    .prologue
    const/4 v1, 0x0

    .line 290
    iget v2, p0, Landroid/text/Layout;->mJustificationMode:I

    if-nez v2, :cond_0

    return v1

    .line 291
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 292
    .local v0, "lineEnd":I
    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F
    .locals 23
    .param p0, "paint"    # Landroid/text/TextPaint;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .prologue
    .line 1844
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v3

    .line 1845
    .local v3, "mt":Landroid/text/MeasuredText;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v22

    .line 1847
    .local v22, "tl":Landroid/text/TextLine;
    const/4 v8, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    :try_start_0
    invoke-virtual/range {v3 .. v8}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    .line 1850
    iget-boolean v4, v3, Landroid/text/MeasuredText;->mEasy:Z

    if-eqz v4, :cond_0

    .line 1851
    sget-object v10, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 1852
    .local v10, "directions":Landroid/text/Layout$Directions;
    const/4 v9, 0x1

    .line 1858
    .local v9, "dir":I
    :goto_0
    iget-object v13, v3, Landroid/text/MeasuredText;->mChars:[C

    .line 1859
    .local v13, "chars":[C
    iget v15, v3, Landroid/text/MeasuredText;->mLen:I

    .line 1860
    .local v15, "len":I
    const/4 v11, 0x0

    .line 1861
    .local v11, "hasTabs":Z
    const/4 v12, 0x0

    .line 1863
    .local v12, "tabStops":Landroid/text/Layout$TabStops;
    const/16 v17, 0x0

    .line 1864
    .local v17, "margin":I
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_1

    .line 1865
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v19, v0

    .line 1867
    .local v19, "spanned":Landroid/text/Spanned;
    const-class v4, Landroid/text/style/LeadingMarginSpan;

    .line 1866
    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v2, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/text/style/LeadingMarginSpan;

    .line 1868
    .local v20, "spans":[Landroid/text/style/LeadingMarginSpan;
    const/4 v4, 0x0

    move-object/from16 v0, v20

    array-length v5, v0

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v16, v20, v4

    .line 1869
    .local v16, "lms":Landroid/text/style/LeadingMarginSpan;
    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v6

    add-int v17, v17, v6

    .line 1868
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1854
    .end local v9    # "dir":I
    .end local v10    # "directions":Landroid/text/Layout$Directions;
    .end local v11    # "hasTabs":Z
    .end local v12    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v13    # "chars":[C
    .end local v15    # "len":I
    .end local v16    # "lms":Landroid/text/style/LeadingMarginSpan;
    .end local v17    # "margin":I
    .end local v19    # "spanned":Landroid/text/Spanned;
    .end local v20    # "spans":[Landroid/text/style/LeadingMarginSpan;
    :cond_0
    iget v4, v3, Landroid/text/MeasuredText;->mDir:I

    iget-object v5, v3, Landroid/text/MeasuredText;->mLevels:[B

    .line 1855
    iget-object v7, v3, Landroid/text/MeasuredText;->mChars:[C

    iget v9, v3, Landroid/text/MeasuredText;->mLen:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 1854
    invoke-static/range {v4 .. v9}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v10

    .line 1856
    .restart local v10    # "directions":Landroid/text/Layout$Directions;
    iget v9, v3, Landroid/text/MeasuredText;->mDir:I

    .restart local v9    # "dir":I
    goto :goto_0

    .line 1872
    .restart local v11    # "hasTabs":Z
    .restart local v12    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v13    # "chars":[C
    .restart local v15    # "len":I
    .restart local v17    # "margin":I
    :cond_1
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    if-ge v14, v15, :cond_2

    .line 1873
    aget-char v4, v13, v14

    const/16 v5, 0x9

    if-ne v4, v5, :cond_3

    .line 1874
    const/4 v11, 0x1

    .line 1875
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_2

    .line 1876
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v19, v0

    .line 1878
    .restart local v19    # "spanned":Landroid/text/Spanned;
    const-class v4, Landroid/text/style/TabStopSpan;

    .line 1877
    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v0, v1, v2, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v18

    .line 1880
    .local v18, "spanEnd":I
    const-class v4, Landroid/text/style/TabStopSpan;

    .line 1879
    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-static {v0, v1, v2, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/text/style/TabStopSpan;

    .line 1881
    .local v21, "spans":[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v21

    array-length v4, v0

    if-lez v4, :cond_2

    .line 1882
    new-instance v12, Landroid/text/Layout$TabStops;

    .end local v12    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v4, 0x14

    move-object/from16 v0, v21

    invoke-direct {v12, v4, v0}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .end local v18    # "spanEnd":I
    .end local v19    # "spanned":Landroid/text/Spanned;
    .end local v21    # "spans":[Landroid/text/style/TabStopSpan;
    :cond_2
    move-object/from16 v4, v22

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    .line 1888
    invoke-virtual/range {v4 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1889
    move/from16 v0, v17

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    add-float/2addr v4, v5

    .line 1891
    invoke-static/range {v22 .. v22}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1892
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 1889
    return v4

    .line 1872
    .restart local v12    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1890
    .end local v9    # "dir":I
    .end local v10    # "directions":Landroid/text/Layout$Directions;
    .end local v11    # "hasTabs":Z
    .end local v12    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v13    # "chars":[C
    .end local v14    # "i":I
    .end local v15    # "len":I
    .end local v17    # "margin":I
    :catchall_0
    move-exception v4

    .line 1891
    invoke-static/range {v22 .. v22}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1892
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 1890
    throw v4
.end method

.method static nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F
    .locals 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "h"    # F
    .param p4, "tabs"    # [Ljava/lang/Object;

    .prologue
    const/high16 v5, 0x41a00000    # 20.0f

    .line 1971
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 1972
    .local v2, "nh":F
    const/4 v0, 0x0

    .line 1974
    .local v0, "alltabs":Z
    instance-of v4, p0, Landroid/text/Spanned;

    if-eqz v4, :cond_4

    .line 1975
    if-nez p4, :cond_0

    .line 1976
    check-cast p0, Landroid/text/Spanned;

    .end local p0    # "text":Ljava/lang/CharSequence;
    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-static {p0, p1, p2, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    .line 1977
    const/4 v0, 0x1

    .line 1980
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p4

    if-ge v1, v4, :cond_3

    .line 1981
    if-nez v0, :cond_2

    .line 1982
    aget-object v4, p4, v1

    instance-of v4, v4, Landroid/text/style/TabStopSpan;

    if-nez v4, :cond_2

    .line 1980
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1986
    :cond_2
    aget-object v4, p4, v1

    check-cast v4, Landroid/text/style/TabStopSpan;

    invoke-interface {v4}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v3

    .line 1988
    .local v3, "where":I
    int-to-float v4, v3

    cmpg-float v4, v4, v2

    if-gez v4, :cond_1

    int-to-float v4, v3

    cmpl-float v4, v4, p3

    if-lez v4, :cond_1

    .line 1989
    int-to-float v2, v3

    goto :goto_1

    .line 1992
    .end local v3    # "where":I
    :cond_3
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_4

    .line 1993
    return v2

    .line 1996
    .end local v1    # "i":I
    :cond_4
    add-float v4, p3, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    return v4
.end method

.method private primaryIsTrailingPrevious(I)Z
    .locals 13
    .param p1, "offset"    # I

    .prologue
    const v12, 0x3ffffff

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 979
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 980
    .local v4, "line":I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    .line 981
    .local v6, "lineStart":I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 982
    .local v5, "lineEnd":I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v11

    iget-object v7, v11, Landroid/text/Layout$Directions;->mDirections:[I

    .line 984
    .local v7, "runs":[I
    const/4 v1, -0x1

    .line 985
    .local v1, "levelAt":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v11, v7

    if-ge v0, v11, :cond_2

    .line 986
    aget v11, v7, v0

    add-int v8, v6, v11

    .line 987
    .local v8, "start":I
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    and-int/2addr v11, v12

    add-int v3, v8, v11

    .line 988
    .local v3, "limit":I
    if-le v3, v5, :cond_0

    .line 989
    move v3, v5

    .line 991
    :cond_0
    if-lt p1, v8, :cond_5

    if-ge p1, v3, :cond_5

    .line 992
    if-le p1, v8, :cond_1

    .line 994
    return v10

    .line 996
    :cond_1
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    ushr-int/lit8 v11, v11, 0x1a

    and-int/lit8 v1, v11, 0x3f

    .line 1000
    .end local v3    # "limit":I
    .end local v8    # "start":I
    :cond_2
    const/4 v11, -0x1

    if-ne v1, v11, :cond_3

    .line 1002
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    if-ne v11, v9, :cond_6

    const/4 v1, 0x0

    .line 1006
    :cond_3
    :goto_1
    const/4 v2, -0x1

    .line 1007
    .local v2, "levelBefore":I
    if-ne p1, v6, :cond_8

    .line 1008
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    if-ne v11, v9, :cond_7

    const/4 v2, 0x0

    .line 1024
    :cond_4
    :goto_2
    if-ge v2, v1, :cond_b

    :goto_3
    return v9

    .line 985
    .end local v2    # "levelBefore":I
    .restart local v3    # "limit":I
    .restart local v8    # "start":I
    :cond_5
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1002
    .end local v3    # "limit":I
    .end local v8    # "start":I
    :cond_6
    const/4 v1, 0x1

    goto :goto_1

    .line 1008
    .restart local v2    # "levelBefore":I
    :cond_7
    const/4 v2, 0x1

    goto :goto_2

    .line 1010
    :cond_8
    add-int/lit8 p1, p1, -0x1

    .line 1011
    const/4 v0, 0x0

    :goto_4
    array-length v11, v7

    if-ge v0, v11, :cond_4

    .line 1012
    aget v11, v7, v0

    add-int v8, v6, v11

    .line 1013
    .restart local v8    # "start":I
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    and-int/2addr v11, v12

    add-int v3, v8, v11

    .line 1014
    .restart local v3    # "limit":I
    if-le v3, v5, :cond_9

    .line 1015
    move v3, v5

    .line 1017
    :cond_9
    if-lt p1, v8, :cond_a

    if-ge p1, v3, :cond_a

    .line 1018
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    ushr-int/lit8 v11, v11, 0x1a

    and-int/lit8 v2, v11, 0x3f

    .line 1019
    goto :goto_2

    .line 1011
    :cond_a
    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    .end local v3    # "limit":I
    .end local v8    # "start":I
    :cond_b
    move v9, v10

    .line 1024
    goto :goto_3
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 265
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "highlight"    # Landroid/graphics/Path;
    .param p3, "highlightPaint"    # Landroid/graphics/Paint;
    .param p4, "cursorOffsetVertical"    # I

    .prologue
    .line 279
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v8

    .line 280
    .local v8, "lineRange":J
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v5

    .line 281
    .local v5, "firstLine":I
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v6

    .line 282
    .local v6, "lastLine":I
    if-gez v6, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 284
    invoke-virtual/range {v0 .. v6}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 286
    invoke-virtual {p0, p1, v5, v6}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    .line 287
    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "highlight"    # Landroid/graphics/Path;
    .param p3, "highlightPaint"    # Landroid/graphics/Paint;
    .param p4, "cursorOffsetVertical"    # I
    .param p5, "firstLine"    # I
    .param p6, "lastLine"    # I

    .prologue
    .line 556
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v3, :cond_7

    .line 557
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    if-nez v3, :cond_0

    .line 558
    new-instance v3, Landroid/text/SpanSet;

    const-class v5, Landroid/text/style/LineBackgroundSpan;

    invoke-direct {v3, v5}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    .line 561
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Spanned;

    .line 562
    .local v10, "buffer":Landroid/text/Spanned;
    invoke-interface {v10}, Landroid/text/Spanned;->length()I

    move-result v21

    .line 563
    .local v21, "textLength":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    const/4 v5, 0x0

    move/from16 v0, v21

    invoke-virtual {v3, v10, v5, v0}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 565
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v3, v3, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v3, :cond_6

    .line 566
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v16

    .line 567
    .local v16, "previousLineBottom":I
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v17

    .line 568
    .local v17, "previousLineEnd":I
    sget-object v19, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 569
    .local v19, "spans":[Landroid/text/style/ParagraphStyle;
    const/16 v20, 0x0

    .line 570
    .local v20, "spansLength":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 571
    .local v4, "paint":Landroid/text/TextPaint;
    const/16 v18, 0x0

    .line 572
    .local v18, "spanEnd":I
    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/Layout;->mWidth:I

    .line 573
    .local v6, "width":I
    move/from16 v13, p5

    .local v13, "i":I
    :goto_0
    move/from16 v0, p6

    if-gt v13, v0, :cond_6

    .line 574
    move/from16 v11, v17

    .line 575
    .local v11, "start":I
    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v12

    .line 576
    .local v12, "end":I
    move/from16 v17, v12

    .line 578
    move/from16 v7, v16

    .line 579
    .local v7, "ltop":I
    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    .line 580
    .local v9, "lbottom":I
    move/from16 v16, v9

    .line 581
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v3

    sub-int v8, v9, v3

    .line 583
    .local v8, "lbaseline":I
    move/from16 v0, v18

    if-lt v11, v0, :cond_4

    .line 586
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    move/from16 v0, v21

    invoke-virtual {v3, v11, v0}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v18

    .line 588
    const/16 v20, 0x0

    .line 590
    if-ne v11, v12, :cond_1

    if-nez v11, :cond_4

    .line 593
    :cond_1
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v3, v3, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v14, v3, :cond_4

    .line 596
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spanStarts:[I

    aget v3, v3, v14

    if-ge v3, v12, :cond_2

    .line 597
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spanEnds:[I

    aget v3, v3, v14

    if-gt v3, v11, :cond_3

    .line 593
    :cond_2
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 599
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v3, [Landroid/text/style/LineBackgroundSpan;

    aget-object v3, v3, v14

    .line 598
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v1, v3}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "spans":[Landroid/text/style/ParagraphStyle;
    check-cast v19, [Landroid/text/style/ParagraphStyle;

    .line 600
    .restart local v19    # "spans":[Landroid/text/style/ParagraphStyle;
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 605
    .end local v14    # "j":I
    :cond_4
    const/4 v15, 0x0

    .local v15, "n":I
    :goto_3
    move/from16 v0, v20

    if-ge v15, v0, :cond_5

    .line 606
    aget-object v2, v19, v15

    check-cast v2, Landroid/text/style/LineBackgroundSpan;

    .line 607
    .local v2, "lineBackgroundSpan":Landroid/text/style/LineBackgroundSpan;
    const/4 v5, 0x0

    move-object/from16 v3, p1

    invoke-interface/range {v2 .. v13}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    .line 605
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 573
    .end local v2    # "lineBackgroundSpan":Landroid/text/style/LineBackgroundSpan;
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 613
    .end local v4    # "paint":Landroid/text/TextPaint;
    .end local v6    # "width":I
    .end local v7    # "ltop":I
    .end local v8    # "lbaseline":I
    .end local v9    # "lbottom":I
    .end local v11    # "start":I
    .end local v12    # "end":I
    .end local v13    # "i":I
    .end local v15    # "n":I
    .end local v16    # "previousLineBottom":I
    .end local v17    # "previousLineEnd":I
    .end local v18    # "spanEnd":I
    .end local v19    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v20    # "spansLength":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    invoke-virtual {v3}, Landroid/text/SpanSet;->recycle()V

    .line 618
    .end local v10    # "buffer":Landroid/text/Spanned;
    .end local v21    # "textLength":I
    :cond_7
    if-eqz p2, :cond_9

    .line 619
    if-eqz p4, :cond_8

    const/4 v3, 0x0

    move/from16 v0, p4

    int-to-float v5, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 620
    :cond_8
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 621
    if-eqz p4, :cond_9

    const/4 v3, 0x0

    move/from16 v0, p4

    neg-int v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 623
    :cond_9
    return-void
.end method

.method public drawText(Landroid/graphics/Canvas;II)V
    .locals 49
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "firstLine"    # I
    .param p3, "lastLine"    # I

    .prologue
    .line 386
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v37

    .line 387
    .local v37, "previousLineBottom":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v38

    .line 388
    .local v38, "previousLineEnd":I
    sget-object v41, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 389
    .local v41, "spans":[Landroid/text/style/ParagraphStyle;
    const/16 v40, 0x0

    .line 390
    .local v40, "spanEnd":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 391
    .local v5, "paint":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 393
    .local v11, "buf":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v36, v0

    .line 394
    .local v36, "paraAlign":Landroid/text/Layout$Alignment;
    const/16 v27, 0x0

    .line 395
    .local v27, "tabStops":Landroid/text/Layout$TabStops;
    const/16 v44, 0x0

    .line 397
    .local v44, "tabStopsIsInitialized":Z
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v46

    .line 401
    .local v46, "tl":Landroid/text/TextLine;
    move/from16 v33, p2

    .local v33, "lineNum":I
    move-object/from16 v43, v27

    .end local v27    # "tabStops":Landroid/text/Layout$TabStops;
    .local v43, "tabStops":Landroid/text/Layout$TabStops;
    :goto_0
    move/from16 v0, v33

    move/from16 v1, p3

    if-gt v0, v1, :cond_17

    .line 402
    move/from16 v12, v38

    .line 403
    .local v12, "start":I
    add-int/lit8 v4, v33, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v38

    .line 404
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v31

    .line 405
    .local v31, "justify":Z
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v38

    invoke-direct {v0, v1, v12, v2}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v13

    .line 407
    .local v13, "end":I
    move/from16 v8, v37

    .line 408
    .local v8, "ltop":I
    add-int/lit8 v4, v33, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    .line 409
    .local v10, "lbottom":I
    move/from16 v37, v10

    .line 410
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v4

    sub-int v9, v10, v4

    .line 412
    .local v9, "lbaseline":I
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    .line 413
    .local v7, "dir":I
    const/16 v18, 0x0

    .line 414
    .local v18, "left":I
    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/Layout;->mWidth:I

    .line 416
    .local v6, "right":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_a

    move-object/from16 v39, v11

    .line 417
    check-cast v39, Landroid/text/Spanned;

    .line 418
    .local v39, "sp":Landroid/text/Spanned;
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v45

    .line 419
    .local v45, "textLength":I
    if-eqz v12, :cond_0

    add-int/lit8 v4, v12, -0x1

    invoke-interface {v11, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v15, 0xa

    if-ne v4, v15, :cond_6

    :cond_0
    const/4 v14, 0x1

    .line 431
    .local v14, "isFirstParaLine":Z
    :goto_1
    move/from16 v0, v40

    if-lt v12, v0, :cond_3

    move/from16 v0, v33

    move/from16 v1, p2

    if-eq v0, v1, :cond_1

    if-eqz v14, :cond_3

    .line 433
    :cond_1
    const-class v4, Landroid/text/style/ParagraphStyle;

    .line 432
    move-object/from16 v0, v39

    move/from16 v1, v45

    invoke-interface {v0, v12, v1, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v40

    .line 434
    const-class v4, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v39

    move/from16 v1, v40

    invoke-static {v0, v12, v1, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v41

    .end local v41    # "spans":[Landroid/text/style/ParagraphStyle;
    check-cast v41, [Landroid/text/style/ParagraphStyle;

    .line 436
    .restart local v41    # "spans":[Landroid/text/style/ParagraphStyle;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v36, v0

    .line 437
    move-object/from16 v0, v41

    array-length v4, v0

    add-int/lit8 v35, v4, -0x1

    .local v35, "n":I
    :goto_2
    if-ltz v35, :cond_2

    .line 438
    aget-object v4, v41, v35

    instance-of v4, v4, Landroid/text/style/AlignmentSpan;

    if-eqz v4, :cond_7

    .line 439
    aget-object v4, v41, v35

    check-cast v4, Landroid/text/style/AlignmentSpan;

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v36

    .line 444
    :cond_2
    const/16 v44, 0x0

    .line 449
    .end local v35    # "n":I
    :cond_3
    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v32, v0

    .line 450
    .local v32, "length":I
    move/from16 v47, v14

    .line 451
    .local v47, "useFirstLineMargin":Z
    const/16 v35, 0x0

    .restart local v35    # "n":I
    :goto_3
    move/from16 v0, v35

    move/from16 v1, v32

    if-ge v0, v1, :cond_4

    .line 452
    aget-object v4, v41, v35

    instance-of v4, v4, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v4, :cond_8

    .line 453
    aget-object v4, v41, v35

    check-cast v4, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v4}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v29

    .line 454
    .local v29, "count":I
    aget-object v4, v41, v35

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v42

    .line 457
    .local v42, "startLine":I
    add-int v4, v42, v29

    move/from16 v0, v33

    if-ge v0, v4, :cond_8

    .line 458
    const/16 v47, 0x1

    .line 463
    .end local v29    # "count":I
    .end local v42    # "startLine":I
    .end local v47    # "useFirstLineMargin":Z
    :cond_4
    const/16 v35, 0x0

    :goto_4
    move/from16 v0, v35

    move/from16 v1, v32

    if-ge v0, v1, :cond_a

    .line 464
    aget-object v4, v41, v35

    instance-of v4, v4, Landroid/text/style/LeadingMarginSpan;

    if-eqz v4, :cond_5

    .line 465
    aget-object v3, v41, v35

    check-cast v3, Landroid/text/style/LeadingMarginSpan;

    .line 466
    .local v3, "margin":Landroid/text/style/LeadingMarginSpan;
    const/4 v4, -0x1

    if-ne v7, v4, :cond_9

    move-object/from16 v4, p1

    move-object/from16 v15, p0

    .line 467
    invoke-interface/range {v3 .. v15}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 470
    move/from16 v0, v47

    invoke-interface {v3, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v4

    sub-int/2addr v6, v4

    .line 463
    .end local v3    # "margin":Landroid/text/style/LeadingMarginSpan;
    :cond_5
    :goto_5
    add-int/lit8 v35, v35, 0x1

    goto :goto_4

    .line 419
    .end local v14    # "isFirstParaLine":Z
    .end local v32    # "length":I
    .end local v35    # "n":I
    :cond_6
    const/4 v14, 0x0

    .restart local v14    # "isFirstParaLine":Z
    goto/16 :goto_1

    .line 437
    .restart local v35    # "n":I
    :cond_7
    add-int/lit8 v35, v35, -0x1

    goto :goto_2

    .line 451
    .restart local v32    # "length":I
    .restart local v47    # "useFirstLineMargin":Z
    :cond_8
    add-int/lit8 v35, v35, 0x1

    goto :goto_3

    .end local v47    # "useFirstLineMargin":Z
    .restart local v3    # "margin":Landroid/text/style/LeadingMarginSpan;
    :cond_9
    move-object v15, v3

    move-object/from16 v16, p1

    move-object/from16 v17, v5

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v23, v11

    move/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v27, p0

    .line 472
    invoke-interface/range {v15 .. v27}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 475
    move/from16 v0, v47

    invoke-interface {v3, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v4

    add-int v18, v18, v4

    goto :goto_5

    .line 481
    .end local v3    # "margin":Landroid/text/style/LeadingMarginSpan;
    .end local v14    # "isFirstParaLine":Z
    .end local v32    # "length":I
    .end local v35    # "n":I
    .end local v39    # "sp":Landroid/text/Spanned;
    .end local v45    # "textLength":I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v26

    .line 483
    .local v26, "hasTab":Z
    if-eqz v26, :cond_c

    xor-int/lit8 v4, v44, 0x1

    if-eqz v4, :cond_18

    .line 484
    if-nez v43, :cond_d

    .line 485
    new-instance v27, Landroid/text/Layout$TabStops;

    const/16 v4, 0x14

    move-object/from16 v0, v27

    move-object/from16 v1, v41

    invoke-direct {v0, v4, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 489
    .end local v43    # "tabStops":Landroid/text/Layout$TabStops;
    .local v27, "tabStops":Landroid/text/Layout$TabStops;
    :goto_6
    const/16 v44, 0x1

    .line 493
    :goto_7
    move-object/from16 v28, v36

    .line 494
    .local v28, "align":Landroid/text/Layout$Alignment;
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_f

    .line 495
    const/4 v4, 0x1

    if-ne v7, v4, :cond_e

    .line 496
    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 504
    :cond_b
    :goto_8
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_12

    .line 505
    const/4 v4, 0x1

    if-ne v7, v4, :cond_11

    .line 506
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1, v4}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v30

    .line 507
    .local v30, "indentWidth":I
    add-int v48, v18, v30

    .line 529
    .local v48, "x":I
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getHyphen(I)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    .line 530
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v25

    .line 531
    .local v25, "directions":Landroid/text/Layout$Directions;
    sget-object v4, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move-object/from16 v0, v25

    if-ne v0, v4, :cond_15

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/text/Layout;->mSpannedText:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_15

    xor-int/lit8 v4, v26, 0x1

    if-eqz v4, :cond_15

    xor-int/lit8 v4, v31, 0x1

    if-eqz v4, :cond_15

    .line 533
    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v9

    move/from16 v24, v0

    move-object/from16 v19, p1

    move-object/from16 v20, v11

    move/from16 v21, v12

    move/from16 v22, v13

    move-object/from16 v25, v5

    invoke-virtual/range {v19 .. v25}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 541
    .end local v25    # "directions":Landroid/text/Layout$Directions;
    :goto_a
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    .line 401
    add-int/lit8 v33, v33, 0x1

    move-object/from16 v43, v27

    .end local v27    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v43    # "tabStops":Landroid/text/Layout$TabStops;
    goto/16 :goto_0

    .end local v28    # "align":Landroid/text/Layout$Alignment;
    .end local v30    # "indentWidth":I
    .end local v48    # "x":I
    :cond_c
    move-object/from16 v27, v43

    .line 483
    .end local v43    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v27    # "tabStops":Landroid/text/Layout$TabStops;
    goto :goto_7

    .line 487
    .end local v27    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v43    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_d
    const/16 v4, 0x14

    move-object/from16 v0, v43

    move-object/from16 v1, v41

    invoke-virtual {v0, v4, v1}, Landroid/text/Layout$TabStops;->reset(I[Ljava/lang/Object;)V

    move-object/from16 v27, v43

    .end local v43    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v27    # "tabStops":Landroid/text/Layout$TabStops;
    goto :goto_6

    .line 496
    .restart local v28    # "align":Landroid/text/Layout$Alignment;
    :cond_e
    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_8

    .line 497
    :cond_f
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_b

    .line 498
    const/4 v4, 0x1

    if-ne v7, v4, :cond_10

    .line 499
    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_8

    :cond_10
    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_8

    .line 509
    :cond_11
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1, v4}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v4

    neg-int v0, v4

    move/from16 v30, v0

    .line 510
    .restart local v30    # "indentWidth":I
    sub-int v48, v6, v30

    .restart local v48    # "x":I
    goto :goto_9

    .line 513
    .end local v30    # "indentWidth":I
    .end local v48    # "x":I
    :cond_12
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2, v4}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v4

    float-to-int v0, v4

    move/from16 v34, v0

    .line 514
    .local v34, "max":I
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_14

    .line 515
    const/4 v4, 0x1

    if-ne v7, v4, :cond_13

    .line 516
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1, v4}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v4

    neg-int v0, v4

    move/from16 v30, v0

    .line 517
    .restart local v30    # "indentWidth":I
    sub-int v4, v6, v34

    sub-int v48, v4, v30

    .restart local v48    # "x":I
    goto/16 :goto_9

    .line 519
    .end local v30    # "indentWidth":I
    .end local v48    # "x":I
    :cond_13
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1, v4}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v30

    .line 520
    .restart local v30    # "indentWidth":I
    sub-int v4, v18, v34

    add-int v48, v4, v30

    .restart local v48    # "x":I
    goto/16 :goto_9

    .line 523
    .end local v30    # "indentWidth":I
    .end local v48    # "x":I
    :cond_14
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1, v4}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v30

    .line 524
    .restart local v30    # "indentWidth":I
    and-int/lit8 v34, v34, -0x2

    .line 525
    add-int v4, v6, v18

    sub-int v4, v4, v34

    shr-int/lit8 v4, v4, 0x1

    add-int v48, v4, v30

    .restart local v48    # "x":I
    goto/16 :goto_9

    .end local v34    # "max":I
    .restart local v25    # "directions":Landroid/text/Layout$Directions;
    :cond_15
    move-object/from16 v19, v46

    move-object/from16 v20, v5

    move-object/from16 v21, v11

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v7

    .line 535
    invoke-virtual/range {v19 .. v27}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 536
    if-eqz v31, :cond_16

    .line 537
    sub-int v4, v6, v18

    sub-int v4, v4, v30

    int-to-float v4, v4

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Landroid/text/TextLine;->justify(F)V

    .line 539
    :cond_16
    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v19, v46

    move-object/from16 v20, p1

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    invoke-virtual/range {v19 .. v24}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    goto/16 :goto_a

    .line 544
    .end local v6    # "right":I
    .end local v7    # "dir":I
    .end local v8    # "ltop":I
    .end local v9    # "lbaseline":I
    .end local v10    # "lbottom":I
    .end local v12    # "start":I
    .end local v13    # "end":I
    .end local v18    # "left":I
    .end local v25    # "directions":Landroid/text/Layout$Directions;
    .end local v26    # "hasTab":Z
    .end local v27    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v28    # "align":Landroid/text/Layout$Alignment;
    .end local v30    # "indentWidth":I
    .end local v31    # "justify":Z
    .end local v48    # "x":I
    .restart local v43    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_17
    invoke-static/range {v46 .. v46}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 545
    return-void

    .restart local v6    # "right":I
    .restart local v7    # "dir":I
    .restart local v8    # "ltop":I
    .restart local v9    # "lbaseline":I
    .restart local v10    # "lbottom":I
    .restart local v12    # "start":I
    .restart local v13    # "end":I
    .restart local v18    # "left":I
    .restart local v26    # "hasTab":Z
    .restart local v31    # "justify":Z
    :cond_18
    move-object/from16 v27, v43

    .end local v43    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v27    # "tabStops":Landroid/text/Layout$TabStops;
    goto/16 :goto_7
.end method

.method public final getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public abstract getBottomPadding()I
.end method

.method public getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .locals 12
    .param p1, "point"    # I
    .param p2, "dest"    # Landroid/graphics/Path;
    .param p3, "editingBuffer"    # Ljava/lang/CharSequence;

    .prologue
    .line 1586
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 1588
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .line 1589
    .local v7, "line":I
    invoke-virtual {p0, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    .line 1590
    .local v8, "top":I
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {p0, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 1592
    .local v0, "bottom":I
    invoke-virtual {p0, v7}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v2

    .line 1593
    .local v2, "clamped":Z
    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float v5, v9, v10

    .line 1594
    .local v5, "h1":F
    invoke-virtual {p0, p1}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float v6, v9, v10

    .line 1596
    .local v6, "h2":F
    :goto_0
    const/4 v9, 0x1

    invoke-static {p3, v9}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v9

    .line 1597
    const/16 v10, 0x800

    invoke-static {p3, v10}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v10

    .line 1596
    or-int v1, v9, v10

    .line 1598
    .local v1, "caps":I
    const/4 v9, 0x2

    invoke-static {p3, v9}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 1599
    .local v4, "fn":I
    const/4 v3, 0x0

    .line 1601
    .local v3, "dist":I
    if-nez v1, :cond_0

    if-eqz v4, :cond_2

    .line 1602
    :cond_0
    sub-int v9, v0, v8

    shr-int/lit8 v3, v9, 0x2

    .line 1604
    if-eqz v4, :cond_1

    .line 1605
    add-int/2addr v8, v3

    .line 1606
    :cond_1
    if-eqz v1, :cond_2

    .line 1607
    sub-int/2addr v0, v3

    .line 1610
    :cond_2
    const/high16 v9, 0x3f000000    # 0.5f

    cmpg-float v9, v5, v9

    if-gez v9, :cond_3

    .line 1611
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1612
    :cond_3
    const/high16 v9, 0x3f000000    # 0.5f

    cmpg-float v9, v6, v9

    if-gez v9, :cond_4

    .line 1613
    const/high16 v6, 0x3f000000    # 0.5f

    .line 1615
    :cond_4
    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-nez v9, :cond_8

    .line 1616
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1617
    int-to-float v9, v0

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1626
    :goto_1
    const/4 v9, 0x2

    if-ne v1, v9, :cond_9

    .line 1627
    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1628
    int-to-float v9, v3

    sub-float v9, v6, v9

    add-int v10, v0, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1629
    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1630
    int-to-float v9, v3

    add-float/2addr v9, v6

    add-int v10, v0, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1642
    :cond_5
    :goto_2
    const/4 v9, 0x2

    if-ne v4, v9, :cond_a

    .line 1643
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1644
    int-to-float v9, v3

    sub-float v9, v5, v9

    sub-int v10, v8, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1645
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1646
    int-to-float v9, v3

    add-float/2addr v9, v5

    sub-int v10, v8, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1657
    :cond_6
    :goto_3
    return-void

    .line 1594
    .end local v1    # "caps":I
    .end local v3    # "dist":I
    .end local v4    # "fn":I
    .end local v6    # "h2":F
    :cond_7
    move v6, v5

    .restart local v6    # "h2":F
    goto :goto_0

    .line 1619
    .restart local v1    # "caps":I
    .restart local v3    # "dist":I
    .restart local v4    # "fn":I
    :cond_8
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1620
    add-int v9, v8, v0

    shr-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1622
    add-int v9, v8, v0

    shr-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1623
    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 1631
    :cond_9
    const/4 v9, 0x1

    if-ne v1, v9, :cond_5

    .line 1632
    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1633
    int-to-float v9, v3

    sub-float v9, v6, v9

    add-int v10, v0, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1635
    int-to-float v9, v3

    sub-float v9, v6, v9

    add-int v10, v0, v3

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1636
    int-to-float v9, v3

    add-float/2addr v9, v6

    add-int v10, v0, v3

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1638
    int-to-float v9, v3

    add-float/2addr v9, v6

    add-int v10, v0, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1639
    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 1647
    :cond_a
    const/4 v9, 0x1

    if-ne v4, v9, :cond_6

    .line 1648
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1649
    int-to-float v9, v3

    sub-float v9, v5, v9

    sub-int v10, v8, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1651
    int-to-float v9, v3

    sub-float v9, v5, v9

    sub-int v10, v8, v3

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1652
    int-to-float v9, v3

    add-float/2addr v9, v5

    sub-int v10, v8, v3

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1654
    int-to-float v9, v3

    add-float/2addr v9, v5

    sub-int v10, v8, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1655
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_3
.end method

.method public abstract getEllipsisCount(I)I
.end method

.method public abstract getEllipsisStart(I)I
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 735
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 755
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getHeight(Z)I
    .locals 1
    .param p1, "cap"    # Z

    .prologue
    .line 766
    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHyphen(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 881
    const/4 v0, 0x0

    return v0
.end method

.method public getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .locals 1
    .param p1, "line"    # I
    .param p2, "alignment"    # Landroid/text/Layout$Alignment;

    .prologue
    .line 890
    const/4 v0, 0x0

    return v0
.end method

.method public final getLineAscent(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1466
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBaseline(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1457
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBottom(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 1449
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 1
    .param p1, "line"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 812
    if-eqz p2, :cond_0

    .line 813
    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 814
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 815
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 816
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 818
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    return v0
.end method

.method public abstract getLineContainsTab(I)Z
.end method

.method public abstract getLineCount()I
.end method

.method public abstract getLineDescent(I)I
.end method

.method public abstract getLineDirections(I)Landroid/text/Layout$Directions;
.end method

.method public final getLineEnd(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 1411
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public getLineForOffset(I)I
    .locals 6
    .param p1, "offset"    # I

    .prologue
    const/4 v5, 0x0

    .line 1285
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, "high":I
    const/4 v2, -0x1

    .line 1287
    .local v2, "low":I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1288
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 1290
    .local v0, "guess":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 1291
    move v1, v0

    goto :goto_0

    .line 1293
    :cond_0
    move v2, v0

    goto :goto_0

    .line 1296
    .end local v0    # "guess":I
    :cond_1
    if-gez v2, :cond_2

    .line 1297
    return v5

    .line 1299
    :cond_2
    return v2
.end method

.method public getLineForVertical(I)I
    .locals 6
    .param p1, "vertical"    # I

    .prologue
    const/4 v5, 0x0

    .line 1262
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, "high":I
    const/4 v2, -0x1

    .line 1264
    .local v2, "low":I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1265
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 1267
    .local v0, "guess":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 1268
    move v1, v0

    goto :goto_0

    .line 1270
    :cond_0
    move v2, v0

    goto :goto_0

    .line 1273
    .end local v0    # "guess":I
    :cond_1
    if-gez v2, :cond_2

    .line 1274
    return v5

    .line 1276
    :cond_2
    return v2
.end method

.method public getLineLeft(I)F
    .locals 8
    .param p1, "line"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 1111
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 1112
    .local v1, "dir":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 1114
    .local v0, "align":Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_0

    .line 1115
    return v6

    .line 1116
    :cond_0
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_2

    .line 1117
    if-ne v1, v7, :cond_1

    .line 1118
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    return v5

    .line 1120
    :cond_1
    return v6

    .line 1121
    :cond_2
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_3

    .line 1122
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    return v5

    .line 1123
    :cond_3
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_5

    .line 1124
    if-ne v1, v7, :cond_4

    .line 1125
    return v6

    .line 1127
    :cond_4
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    return v5

    .line 1129
    :cond_5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 1130
    .local v2, "left":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 1131
    .local v4, "right":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 1133
    .local v3, "max":I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    return v5
.end method

.method public getLineMax(I)F
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1173
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    int-to-float v0, v2

    .line 1174
    .local v0, "margin":F
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    .line 1175
    .local v1, "signedExtent":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    .end local v1    # "signedExtent":F
    :goto_0
    add-float v2, v0, v1

    return v2

    .restart local v1    # "signedExtent":F
    :cond_0
    neg-float v1, v1

    goto :goto_0
.end method

.method public getLineRangeForDraw(Landroid/graphics/Canvas;)J
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 633
    sget-object v5, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v5

    .line 634
    :try_start_0
    sget-object v4, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 636
    const/4 v4, 0x0

    const/4 v6, -0x1

    invoke-static {v4, v6}, Landroid/text/TextUtils;->packRangeInLong(II)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    monitor-exit v5

    return-wide v6

    .line 639
    :cond_0
    :try_start_1
    sget-object v4, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 640
    .local v2, "dtop":I
    sget-object v4, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->bottom:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v1, "dbottom":I
    monitor-exit v5

    .line 643
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 644
    .local v3, "top":I
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 646
    .local v0, "bottom":I
    if-lt v3, v0, :cond_1

    invoke-static {v6, v7}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4

    .line 633
    .end local v0    # "bottom":I
    .end local v1    # "dbottom":I
    .end local v2    # "dtop":I
    .end local v3    # "top":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 647
    .restart local v0    # "bottom":I
    .restart local v1    # "dbottom":I
    .restart local v2    # "dtop":I
    .restart local v3    # "top":I
    :cond_1
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v4

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4
.end method

.method public getLineRight(I)F
    .locals 7
    .param p1, "line"    # I

    .prologue
    const/4 v6, -0x1

    .line 1142
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 1143
    .local v1, "dir":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 1145
    .local v0, "align":Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_0

    .line 1146
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    return v5

    .line 1147
    :cond_0
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_2

    .line 1148
    if-ne v1, v6, :cond_1

    .line 1149
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    return v5

    .line 1151
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    return v5

    .line 1152
    :cond_2
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_3

    .line 1153
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    return v5

    .line 1154
    :cond_3
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_5

    .line 1155
    if-ne v1, v6, :cond_4

    .line 1156
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    return v5

    .line 1158
    :cond_4
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    return v5

    .line 1160
    :cond_5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 1161
    .local v2, "left":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 1162
    .local v4, "right":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 1164
    .local v3, "max":I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    int-to-float v5, v5

    return v5
.end method

.method public abstract getLineStart(I)I
.end method

.method public abstract getLineTop(I)I
.end method

.method public getLineVisibleEnd(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1419
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v0

    return v0
.end method

.method public getLineWidth(I)F
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1183
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    int-to-float v0, v2

    .line 1184
    .local v0, "margin":F
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    .line 1185
    .local v1, "signedExtent":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    .end local v1    # "signedExtent":F
    :goto_0
    add-float v2, v0, v1

    return v2

    .restart local v1    # "signedExtent":F
    :cond_0
    neg-float v1, v1

    goto :goto_0
.end method

.method public getOffsetForHorizontal(IF)I
    .locals 1
    .param p1, "line"    # I
    .param p2, "horiz"    # F

    .prologue
    .line 1308
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v0

    return v0
.end method

.method public getOffsetForHorizontal(IFZ)I
    .locals 27
    .param p1, "line"    # I
    .param p2, "horiz"    # F
    .param p3, "primary"    # Z

    .prologue
    .line 1323
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    .line 1324
    .local v7, "lineEndOffset":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    .line 1326
    .local v6, "lineStartOffset":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v9

    .line 1328
    .local v9, "dirs":Landroid/text/Layout$Directions;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v3

    .line 1330
    .local v3, "tl":Landroid/text/TextLine;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v8

    .line 1331
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1330
    invoke-virtual/range {v3 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1334
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_1

    .line 1335
    move/from16 v23, v7

    .line 1340
    .local v23, "max":I
    :goto_0
    move v14, v6

    .line 1341
    .local v14, "best":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v6, v1}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result v4

    sub-float v4, v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 1343
    .local v15, "bestdist":F
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_1
    iget-object v4, v9, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v4, v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_a

    .line 1344
    iget-object v4, v9, Landroid/text/Layout$Directions;->mDirections:[I

    aget v4, v4, v20

    add-int v18, v6, v4

    .line 1345
    .local v18, "here":I
    iget-object v4, v9, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v5, v20, 0x1

    aget v4, v4, v5

    const v5, 0x3ffffff

    and-int/2addr v4, v5

    add-int v26, v18, v4

    .line 1346
    .local v26, "there":I
    iget-object v4, v9, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v5, v20, 0x1

    aget v4, v4, v5

    const/high16 v5, 0x4000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    const/16 v21, 0x1

    .line 1347
    .local v21, "isRtl":Z
    :goto_2
    if-eqz v21, :cond_3

    const/16 v25, -0x1

    .line 1349
    .local v25, "swap":I
    :goto_3
    move/from16 v0, v26

    move/from16 v1, v23

    if-le v0, v1, :cond_0

    .line 1350
    move/from16 v26, v23

    .line 1351
    :cond_0
    add-int/lit8 v4, v26, -0x1

    add-int/lit8 v19, v4, 0x1

    .local v19, "high":I
    add-int/lit8 v4, v18, 0x1

    add-int/lit8 v22, v4, -0x1

    .line 1353
    .local v22, "low":I
    :goto_4
    sub-int v4, v19, v22

    const/4 v5, 0x1

    if-le v4, v5, :cond_5

    .line 1354
    add-int v4, v19, v22

    div-int/lit8 v17, v4, 0x2

    .line 1355
    .local v17, "guess":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v12

    .line 1357
    .local v12, "adguess":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v12, v1}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result v4

    move/from16 v0, v25

    int-to-float v5, v0

    mul-float/2addr v4, v5

    move/from16 v0, v25

    int-to-float v5, v0

    mul-float v5, v5, p2

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_4

    .line 1358
    move/from16 v19, v17

    goto :goto_4

    .line 1337
    .end local v12    # "adguess":I
    .end local v14    # "best":I
    .end local v15    # "bestdist":F
    .end local v17    # "guess":I
    .end local v18    # "here":I
    .end local v19    # "high":I
    .end local v20    # "i":I
    .end local v21    # "isRtl":Z
    .end local v22    # "low":I
    .end local v23    # "max":I
    .end local v25    # "swap":I
    .end local v26    # "there":I
    :cond_1
    sub-int v4, v7, v6

    .line 1338
    add-int/lit8 v5, v7, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 1337
    invoke-virtual {v3, v4, v5}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v4

    add-int v23, v4, v6

    .restart local v23    # "max":I
    goto/16 :goto_0

    .line 1346
    .restart local v14    # "best":I
    .restart local v15    # "bestdist":F
    .restart local v18    # "here":I
    .restart local v20    # "i":I
    .restart local v26    # "there":I
    :cond_2
    const/16 v21, 0x0

    .restart local v21    # "isRtl":Z
    goto :goto_2

    .line 1347
    :cond_3
    const/16 v25, 0x1

    .restart local v25    # "swap":I
    goto :goto_3

    .line 1360
    .restart local v12    # "adguess":I
    .restart local v17    # "guess":I
    .restart local v19    # "high":I
    .restart local v22    # "low":I
    :cond_4
    move/from16 v22, v17

    goto :goto_4

    .line 1364
    .end local v12    # "adguess":I
    .end local v17    # "guess":I
    :cond_5
    add-int/lit8 v4, v18, 0x1

    move/from16 v0, v22

    if-ge v0, v4, :cond_6

    .line 1365
    add-int/lit8 v22, v18, 0x1

    .line 1367
    :cond_6
    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_8

    .line 1368
    sub-int v4, v22, v6

    move/from16 v0, v21

    invoke-virtual {v3, v4, v0}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v4

    add-int v13, v4, v6

    .line 1369
    .local v13, "aft":I
    sub-int v4, v13, v6

    xor-int/lit8 v5, v21, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v4

    add-int v22, v4, v6

    .line 1370
    move/from16 v0, v22

    move/from16 v1, v18

    if-lt v0, v1, :cond_8

    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_8

    .line 1371
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result v4

    sub-float v4, v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 1372
    .local v16, "dist":F
    move/from16 v0, v26

    if-ge v13, v0, :cond_7

    .line 1373
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v13, v1}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result v4

    sub-float v4, v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v24

    .line 1375
    .local v24, "other":F
    cmpg-float v4, v24, v16

    if-gez v4, :cond_7

    .line 1376
    move/from16 v16, v24

    .line 1377
    move/from16 v22, v13

    .line 1381
    .end local v24    # "other":F
    :cond_7
    cmpg-float v4, v16, v15

    if-gez v4, :cond_8

    .line 1382
    move/from16 v15, v16

    .line 1383
    move/from16 v14, v22

    .line 1388
    .end local v13    # "aft":I
    .end local v16    # "dist":F
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result v4

    sub-float v4, v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 1390
    .restart local v16    # "dist":F
    cmpg-float v4, v16, v15

    if-gez v4, :cond_9

    .line 1391
    move/from16 v15, v16

    .line 1392
    move/from16 v14, v18

    .line 1343
    :cond_9
    add-int/lit8 v20, v20, 0x2

    goto/16 :goto_1

    .line 1396
    .end local v16    # "dist":F
    .end local v18    # "here":I
    .end local v19    # "high":I
    .end local v21    # "isRtl":Z
    .end local v22    # "low":I
    .end local v25    # "swap":I
    .end local v26    # "there":I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result v4

    sub-float v4, v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 1398
    .restart local v16    # "dist":F
    cmpg-float v4, v16, v15

    if-gtz v4, :cond_b

    .line 1399
    move/from16 v15, v16

    .line 1400
    move/from16 v14, v23

    .line 1403
    :cond_b
    invoke-static {v3}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1404
    return v14
.end method

.method public getOffsetToLeftOf(I)I
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 1470
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public getOffsetToRightOf(I)I
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 1474
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .locals 7
    .param p1, "line"    # I

    .prologue
    .line 1755
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 1757
    .local v0, "align":Landroid/text/Layout$Alignment;
    iget-boolean v4, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_0

    .line 1758
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    .line 1759
    .local v1, "sp":Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1760
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1761
    const-class v6, Landroid/text/style/AlignmentSpan;

    .line 1759
    invoke-static {v1, v4, v5, v6}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/AlignmentSpan;

    .line 1763
    .local v3, "spans":[Landroid/text/style/AlignmentSpan;
    array-length v2, v3

    .line 1764
    .local v2, "spanLength":I
    if-lez v2, :cond_0

    .line 1765
    add-int/lit8 v4, v2, -0x1

    aget-object v4, v3, v4

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 1769
    .end local v1    # "sp":Landroid/text/Spanned;
    .end local v2    # "spanLength":I
    .end local v3    # "spans":[Landroid/text/style/AlignmentSpan;
    :cond_0
    return-object v0
.end method

.method public abstract getParagraphDirection(I)I
.end method

.method public final getParagraphLeft(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1776
    const/4 v1, 0x0

    .line 1777
    .local v1, "left":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1778
    .local v0, "dir":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 1779
    :cond_0
    return v1

    .line 1781
    :cond_1
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    return v2
.end method

.method public final getParagraphRight(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1788
    iget v1, p0, Landroid/text/Layout;->mWidth:I

    .line 1789
    .local v1, "right":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1790
    .local v0, "dir":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 1791
    :cond_0
    return v1

    .line 1793
    :cond_1
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    sub-int v2, v1, v2

    return v2
.end method

.method public getPrimaryHorizontal(I)F
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 1033
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public getPrimaryHorizontal(IZ)F
    .locals 2
    .param p1, "offset"    # I
    .param p2, "clamped"    # Z

    .prologue
    .line 1042
    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 1043
    .local v0, "trailing":Z
    invoke-direct {p0, p1, v0, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v1

    return v1
.end method

.method public getRunRange(I)J
    .locals 10
    .param p1, "offset"    # I

    .prologue
    const/4 v9, 0x0

    .line 960
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 961
    .local v3, "line":I
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    .line 962
    .local v0, "dirs":Landroid/text/Layout$Directions;
    sget-object v7, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eq v0, v7, :cond_0

    sget-object v7, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v7, :cond_1

    .line 963
    :cond_0
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    invoke-static {v9, v7}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v8

    return-wide v8

    .line 965
    :cond_1
    iget-object v5, v0, Landroid/text/Layout$Directions;->mDirections:[I

    .line 966
    .local v5, "runs":[I
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 967
    .local v4, "lineStart":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v5

    if-ge v1, v7, :cond_3

    .line 968
    aget v7, v5, v1

    add-int v6, v4, v7

    .line 969
    .local v6, "start":I
    add-int/lit8 v7, v1, 0x1

    aget v7, v5, v7

    const v8, 0x3ffffff

    and-int/2addr v7, v8

    add-int v2, v6, v7

    .line 970
    .local v2, "limit":I
    if-lt p1, v6, :cond_2

    if-ge p1, v2, :cond_2

    .line 971
    invoke-static {v6, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v8

    return-wide v8

    .line 967
    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 975
    .end local v2    # "limit":I
    .end local v6    # "start":I
    :cond_3
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    invoke-static {v9, v7}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v8

    return-wide v8
.end method

.method public getSecondaryHorizontal(I)F
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 1052
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public getSecondaryHorizontal(IZ)F
    .locals 2
    .param p1, "offset"    # I
    .param p2, "clamped"    # Z

    .prologue
    .line 1061
    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 1062
    .local v0, "trailing":Z
    xor-int/lit8 v1, v0, 0x1

    invoke-direct {p0, p1, v1, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v1

    return v1
.end method

.method public getSelectionPath(IILandroid/graphics/Path;)V
    .locals 19
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # Landroid/graphics/Path;

    .prologue
    .line 1699
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    .line 1701
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    .line 1702
    return-void

    .line 1704
    :cond_0
    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 1705
    move/from16 v17, p2

    .line 1706
    .local v17, "temp":I
    move/from16 p2, p1

    .line 1707
    move/from16 p1, v17

    .line 1710
    .end local v17    # "temp":I
    :cond_1
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 1711
    .local v3, "startline":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v15

    .line 1713
    .local v15, "endline":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1714
    .local v6, "top":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1716
    .local v7, "bottom":I
    if-ne v3, v15, :cond_2

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v8, p3

    .line 1717
    invoke-direct/range {v2 .. v8}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 1748
    :goto_0
    return-void

    .line 1719
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v0, v2

    move/from16 v18, v0

    .line 1721
    .local v18, "width":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v11

    .line 1722
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v13

    move-object/from16 v8, p0

    move v9, v3

    move/from16 v10, p1

    move v12, v6

    move-object/from16 v14, p3

    .line 1721
    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 1724
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    .line 1725
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    int-to-float v10, v6

    .line 1726
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    .line 1725
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1731
    :goto_1
    add-int/lit8 v16, v3, 0x1

    .local v16, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v15, :cond_4

    .line 1732
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1733
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1734
    const/4 v9, 0x0

    int-to-float v10, v6

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1731
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 1728
    .end local v16    # "i":I
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v9

    int-to-float v10, v6

    .line 1729
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    .line 1728
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    .line 1737
    .restart local v16    # "i":I
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1738
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1740
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    move-object/from16 v8, p0

    move v9, v15

    move/from16 v11, p2

    move v12, v6

    move v13, v7

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 1743
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_5

    .line 1744
    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v9, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_0

    .line 1746
    :cond_5
    const/4 v9, 0x0

    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_0
.end method

.method public final getSpacingAdd()F
    .locals 1

    .prologue
    .line 787
    iget v0, p0, Landroid/text/Layout;->mSpacingAdd:F

    return v0
.end method

.method public final getSpacingMultiplier()F
    .locals 1

    .prologue
    .line 780
    iget v0, p0, Landroid/text/Layout;->mSpacingMult:F

    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public abstract getTopPadding()I
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 727
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public final increaseWidthTo(I)V
    .locals 2
    .param p1, "wid"    # I

    .prologue
    .line 744
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    if-ge p1, v0, :cond_0

    .line 745
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "attempted to reduce Layout width"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 748
    :cond_0
    iput p1, p0, Landroid/text/Layout;->mWidth:I

    .line 749
    return-void
.end method

.method public isLevelBoundary(I)Z
    .locals 11
    .param p1, "offset"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 901
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 902
    .local v2, "line":I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    .line 903
    .local v0, "dirs":Landroid/text/Layout$Directions;
    sget-object v10, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eq v0, v10, :cond_0

    sget-object v10, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v10, :cond_1

    .line 904
    :cond_0
    return v9

    .line 907
    :cond_1
    iget-object v7, v0, Landroid/text/Layout$Directions;->mDirections:[I

    .line 908
    .local v7, "runs":[I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 909
    .local v4, "lineStart":I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    .line 910
    .local v3, "lineEnd":I
    if-eq p1, v4, :cond_2

    if-ne p1, v3, :cond_6

    .line 911
    :cond_2
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v10

    if-ne v10, v8, :cond_3

    const/4 v5, 0x0

    .line 912
    .local v5, "paraLevel":I
    :goto_0
    if-ne p1, v4, :cond_4

    const/4 v6, 0x0

    .line 913
    .local v6, "runIndex":I
    :goto_1
    add-int/lit8 v10, v6, 0x1

    aget v10, v7, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v10, v10, 0x3f

    if-eq v10, v5, :cond_5

    :goto_2
    return v8

    .line 911
    .end local v5    # "paraLevel":I
    .end local v6    # "runIndex":I
    :cond_3
    const/4 v5, 0x1

    .restart local v5    # "paraLevel":I
    goto :goto_0

    .line 912
    :cond_4
    array-length v10, v7

    add-int/lit8 v6, v10, -0x2

    .restart local v6    # "runIndex":I
    goto :goto_1

    :cond_5
    move v8, v9

    .line 913
    goto :goto_2

    .line 916
    .end local v5    # "paraLevel":I
    .end local v6    # "runIndex":I
    :cond_6
    sub-int/2addr p1, v4

    .line 917
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    array-length v10, v7

    if-ge v1, v10, :cond_8

    .line 918
    aget v10, v7, v1

    if-ne p1, v10, :cond_7

    .line 919
    return v8

    .line 917
    :cond_7
    add-int/lit8 v1, v1, 0x2

    goto :goto_3

    .line 922
    :cond_8
    return v9
.end method

.method public isRtlCharAt(I)Z
    .locals 12
    .param p1, "offset"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 931
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 932
    .local v4, "line":I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    .line 933
    .local v0, "dirs":Landroid/text/Layout$Directions;
    sget-object v10, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v0, v10, :cond_0

    .line 934
    return v9

    .line 936
    :cond_0
    sget-object v10, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v10, :cond_1

    .line 937
    return v8

    .line 939
    :cond_1
    iget-object v6, v0, Landroid/text/Layout$Directions;->mDirections:[I

    .line 940
    .local v6, "runs":[I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 941
    .local v5, "lineStart":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v10, v6

    if-ge v1, v10, :cond_4

    .line 942
    aget v10, v6, v1

    add-int v7, v5, v10

    .line 943
    .local v7, "start":I
    add-int/lit8 v10, v1, 0x1

    aget v10, v6, v10

    const v11, 0x3ffffff

    and-int/2addr v10, v11

    add-int v3, v7, v10

    .line 944
    .local v3, "limit":I
    if-lt p1, v7, :cond_3

    if-ge p1, v3, :cond_3

    .line 945
    add-int/lit8 v10, v1, 0x1

    aget v10, v6, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v2, v10, 0x3f

    .line 946
    .local v2, "level":I
    and-int/lit8 v10, v2, 0x1

    if-eqz v10, :cond_2

    :goto_1
    return v8

    :cond_2
    move v8, v9

    goto :goto_1

    .line 941
    .end local v2    # "level":I
    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 950
    .end local v3    # "limit":I
    .end local v7    # "start":I
    :cond_4
    return v9
.end method

.method protected final isSpanned()Z
    .locals 1

    .prologue
    .line 2000
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return v0
.end method

.method replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F

    .prologue
    .line 247
    if-gez p3, :cond_0

    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 252
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 253
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 254
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 255
    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 256
    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 257
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 258
    return-void
.end method

.method protected setJustificationMode(I)V
    .locals 0
    .param p1, "justificationMode"    # I

    .prologue
    .line 238
    iput p1, p0, Landroid/text/Layout;->mJustificationMode:I

    .line 239
    return-void
.end method

.method public shouldClampCursor(I)Z
    .locals 4
    .param p1, "line"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1568
    invoke-static {}, Landroid/text/Layout;->-getandroid-text-Layout$AlignmentSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1574
    return v1

    .line 1570
    :pswitch_0
    return v0

    .line 1572
    :pswitch_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 1568
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
