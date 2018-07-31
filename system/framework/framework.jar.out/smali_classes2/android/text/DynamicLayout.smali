.class public Landroid/text/DynamicLayout;
.super Landroid/text/Layout;
.source "DynamicLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/DynamicLayout$ChangeWatcher;
    }
.end annotation


# static fields
.field private static final BLOCK_MINIMUM_CHARACTER_LENGTH:I = 0x190

.field private static final COLUMNS_ELLIPSIZE:I = 0x6

.field private static final COLUMNS_NORMAL:I = 0x4

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x5

.field private static final ELLIPSIS_START:I = 0x4

.field private static final ELLIPSIS_UNDEFINED:I = -0x80000000

.field private static final HYPHEN:I = 0x3

.field private static final HYPHEN_MASK:I = 0xff

.field public static final INVALID_BLOCK_INDEX:I = -0x1

.field private static final MAY_PROTRUDE_FROM_TOP_OR_BOTTOM:I = 0x3

.field private static final MAY_PROTRUDE_FROM_TOP_OR_BOTTOM_MASK:I = 0x100

.field private static final PRIORITY:I = 0x80

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_MASK:I = 0x20000000

.field private static final TOP:I = 0x1

.field private static sBuilder:Landroid/text/StaticLayout$Builder;

.field private static final sLock:[Ljava/lang/Object;

.field private static sStaticLayout:Landroid/text/StaticLayout;


# instance fields
.field private mBase:Ljava/lang/CharSequence;

.field private mBlockEndLines:[I

.field private mBlockIndices:[I

.field private mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomPadding:I

.field private mBreakStrategy:I

.field private mDisplay:Ljava/lang/CharSequence;

.field private mEllipsize:Z

.field private mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

.field private mEllipsizedWidth:I

.field private mHyphenationFrequency:I

.field private mIncludePad:Z

.field private mIndexFirstChangedBlock:I

.field private mInts:Landroid/text/PackedIntVector;

.field mIsLastLineSpacing:Z

.field private mJustificationMode:I

.field private mNumberOfBlocks:I

.field private mObjects:Landroid/text/PackedObjectVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/PackedObjectVector",
            "<",
            "Landroid/text/Layout$Directions;",
            ">;"
        }
    .end annotation
.end field

.field private mTempRect:Landroid/graphics/Rect;

.field private mTopPadding:I

.field private mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;


# direct methods
.method static synthetic -wrap0(Landroid/text/DynamicLayout;Ljava/lang/CharSequence;III)V
    .locals 0
    .param p0, "-this"    # Landroid/text/DynamicLayout;
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "where"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 859
    sput-object v0, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 860
    sput-object v0, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    .line 862
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 9
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "includepad"    # Z

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    .line 54
    invoke-direct/range {v0 .. v8}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 11
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "display"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I
    .param p5, "align"    # Landroid/text/Layout$Alignment;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z

    .prologue
    .line 69
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 68
    invoke-direct/range {v0 .. v10}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 15
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "display"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I
    .param p5, "align"    # Landroid/text/Layout$Alignment;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z
    .param p9, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p10, "ellipsizedWidth"    # I

    .prologue
    .line 85
    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 87
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 88
    const/4 v12, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v13, p9

    move/from16 v14, p10

    .line 85
    invoke-direct/range {v0 .. v14}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIIILandroid/text/TextUtils$TruncateAt;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIIILandroid/text/TextUtils$TruncateAt;I)V
    .locals 19
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "display"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I
    .param p5, "align"    # Landroid/text/Layout$Alignment;
    .param p6, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "breakStrategy"    # I
    .param p11, "hyphenationFrequency"    # I
    .param p12, "justificationMode"    # I
    .param p13, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p14, "ellipsizedWidth"    # I

    .prologue
    .line 122
    if-nez p13, :cond_2

    move-object/from16 v3, p2

    :goto_0
    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 104
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/text/DynamicLayout;->mIsLastLineSpacing:Z

    .line 857
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    .line 129
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    .line 130
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 132
    if-eqz p13, :cond_4

    .line 133
    new-instance v2, Landroid/text/PackedIntVector;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Landroid/text/PackedIntVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 134
    move/from16 v0, p14

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    .line 135
    move-object/from16 v0, p13

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 142
    :goto_1
    new-instance v2, Landroid/text/PackedObjectVector;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/PackedObjectVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    .line 144
    move/from16 v0, p9

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/text/DynamicLayout;->mIncludePad:Z

    .line 145
    move/from16 v0, p10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mBreakStrategy:I

    .line 146
    move/from16 v0, p12

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mJustificationMode:I

    .line 147
    move/from16 v0, p11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mHyphenationFrequency:I

    .line 157
    if-eqz p13, :cond_0

    .line 158
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Landroid/text/Layout$Ellipsizer;

    .line 160
    .local v13, "e":Landroid/text/Layout$Ellipsizer;
    move-object/from16 v0, p0

    iput-object v0, v13, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 161
    move/from16 v0, p14

    iput v0, v13, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 162
    move-object/from16 v0, p13

    iput-object v0, v13, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 163
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    .line 172
    .end local v13    # "e":Landroid/text/Layout$Ellipsizer;
    :cond_0
    if-eqz p13, :cond_5

    .line 173
    const/4 v2, 0x6

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .line 174
    .local v18, "start":[I
    const/high16 v2, -0x80000000

    const/4 v3, 0x4

    aput v2, v18, v3

    .line 179
    :goto_2
    const/4 v2, 0x1

    new-array v12, v2, [Landroid/text/Layout$Directions;

    sget-object v2, Landroid/text/DynamicLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    aput-object v2, v12, v3

    .line 181
    .local v12, "dirs":[Landroid/text/Layout$Directions;
    invoke-virtual/range {p3 .. p3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v14

    .line 182
    .local v14, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget v10, v14, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 183
    .local v10, "asc":I
    iget v11, v14, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 185
    .local v11, "desc":I
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    aput v2, v18, v3

    .line 186
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, v18, v3

    .line 187
    const/4 v2, 0x2

    aput v11, v18, v2

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 190
    sub-int v2, v11, v10

    const/4 v3, 0x1

    aput v2, v18, v3

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v12}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    .line 196
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    .line 198
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/text/Spannable;

    if-eqz v2, :cond_7

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    if-nez v2, :cond_1

    .line 200
    new-instance v2, Landroid/text/DynamicLayout$ChangeWatcher;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/text/DynamicLayout$ChangeWatcher;-><init>(Landroid/text/DynamicLayout;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    :cond_1
    move-object/from16 v16, p1

    .line 203
    check-cast v16, Landroid/text/Spannable;

    .line 204
    .local v16, "sp":Landroid/text/Spannable;
    invoke-interface/range {v16 .. v16}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Landroid/text/DynamicLayout$ChangeWatcher;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/text/DynamicLayout$ChangeWatcher;

    .line 205
    .local v17, "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    move-object/from16 v0, v17

    array-length v2, v0

    if-ge v15, v2, :cond_6

    .line 206
    aget-object v2, v17, v15

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 205
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 124
    .end local v10    # "asc":I
    .end local v11    # "desc":I
    .end local v12    # "dirs":[Landroid/text/Layout$Directions;
    .end local v14    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v15    # "i":I
    .end local v16    # "sp":Landroid/text/Spannable;
    .end local v17    # "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    .end local v18    # "start":[I
    :cond_2
    move-object/from16 v0, p2

    instance-of v2, v0, Landroid/text/Spanned;

    if-eqz v2, :cond_3

    .line 125
    new-instance v3, Landroid/text/Layout$SpannedEllipsizer;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 126
    :cond_3
    new-instance v3, Landroid/text/Layout$Ellipsizer;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 137
    :cond_4
    new-instance v2, Landroid/text/PackedIntVector;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/text/PackedIntVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 138
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    .line 139
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_1

    .line 176
    :cond_5
    const/4 v2, 0x4

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .restart local v18    # "start":[I
    goto/16 :goto_2

    .line 208
    .restart local v10    # "asc":I
    .restart local v11    # "desc":I
    .restart local v12    # "dirs":[Landroid/text/Layout$Directions;
    .restart local v14    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v15    # "i":I
    .restart local v16    # "sp":Landroid/text/Spannable;
    .restart local v17    # "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    .line 209
    const v5, 0x800012

    .line 208
    move-object/from16 v0, v16

    invoke-interface {v0, v2, v4, v3, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 212
    .end local v15    # "i":I
    .end local v16    # "sp":Landroid/text/Spannable;
    .end local v17    # "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    :cond_7
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIIILandroid/text/TextUtils$TruncateAt;IZ)V
    .locals 0
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "display"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I
    .param p5, "align"    # Landroid/text/Layout$Alignment;
    .param p6, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "breakStrategy"    # I
    .param p11, "hyphenationFrequency"    # I
    .param p12, "justificationMode"    # I
    .param p13, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p14, "ellipsizedWidth"    # I
    .param p15, "isLastLineSpacing"    # Z

    .prologue
    .line 99
    invoke-direct/range {p0 .. p14}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIIILandroid/text/TextUtils$TruncateAt;I)V

    .line 101
    iput-boolean p15, p0, Landroid/text/DynamicLayout;->mIsLastLineSpacing:Z

    .line 102
    return-void
.end method

.method private addBlockAtOffset(I)V
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 482
    invoke-virtual {p0, p1}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v0

    .line 483
    .local v0, "line":I
    iget-object v2, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    if-nez v2, :cond_0

    .line 485
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 486
    iget-object v2, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    aput v0, v2, v3

    .line 487
    iget v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    invoke-direct {p0, v2}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    .line 488
    iget v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 489
    return-void

    .line 492
    :cond_0
    iget-object v2, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/lit8 v3, v3, -0x1

    aget v1, v2, v3

    .line 493
    .local v1, "previousBlockEndLine":I
    if-le v0, v1, :cond_1

    .line 494
    iget-object v2, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v2

    iput-object v2, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 495
    iget v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    invoke-direct {p0, v2}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    .line 496
    iget v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 498
    :cond_1
    return-void
.end method

.method private contentMayProtrudeFromLineTopOrBottom(Ljava/lang/CharSequence;II)Z
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 411
    instance-of v3, p1, Landroid/text/Spanned;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 412
    check-cast v2, Landroid/text/Spanned;

    .line 413
    .local v2, "spanned":Landroid/text/Spanned;
    const-class v3, Landroid/text/style/ReplacementSpan;

    invoke-interface {v2, p2, p3, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ReplacementSpan;

    array-length v3, v3

    if-lez v3, :cond_0

    .line 414
    return v4

    .line 419
    .end local v2    # "spanned":Landroid/text/Spanned;
    :cond_0
    invoke-virtual {p0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 420
    .local v1, "paint":Landroid/graphics/Paint;
    iget-object v3, p0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/CharSequence;IILandroid/graphics/Rect;)V

    .line 421
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 422
    .local v0, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget-object v3, p0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    if-lt v3, v6, :cond_1

    iget-object v3, p0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v6, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    if-le v3, v6, :cond_2

    :cond_1
    move v3, v4

    :goto_0
    return v3

    :cond_2
    move v3, v5

    goto :goto_0
.end method

.method private createBlocks()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 430
    const/16 v1, 0x190

    .line 431
    .local v1, "offset":I
    iput v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 432
    iget-object v2, p0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 435
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_0
    const/16 v3, 0xa

    invoke-static {v2, v3, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    .line 436
    if-gez v1, :cond_0

    .line 437
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/text/DynamicLayout;->addBlockAtOffset(I)V

    .line 446
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v3, v3

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 447
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 448
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    const/4 v4, -0x1

    aput v4, v3, v0

    .line 447
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 440
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0, v1}, Landroid/text/DynamicLayout;->addBlockAtOffset(I)V

    .line 441
    add-int/lit16 v1, v1, 0x190

    goto :goto_0

    .line 450
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method private getContentMayProtrudeFromTopOrBottom(I)Z
    .locals 3
    .param p1, "line"    # I

    .prologue
    const/4 v0, 0x0

    .line 750
    iget-object v1, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v1

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private reflow(Ljava/lang/CharSequence;III)V
    .locals 37
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "where"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    move-object/from16 v34, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_0

    .line 216
    return-void

    .line 218
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    move-object/from16 v31, v0

    .line 219
    .local v31, "text":Ljava/lang/CharSequence;
    invoke-interface/range {v31 .. v31}, Ljava/lang/CharSequence;->length()I

    move-result v21

    .line 223
    .local v21, "len":I
    add-int/lit8 v34, p2, -0x1

    const/16 v35, 0xa

    move-object/from16 v0, v31

    move/from16 v1, v35

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v15

    .line 224
    .local v15, "find":I
    if-gez v15, :cond_4

    .line 225
    const/4 v15, 0x0

    .line 230
    :goto_0
    sub-int v10, p2, v15

    .line 231
    .local v10, "diff":I
    add-int p3, p3, v10

    .line 232
    add-int p4, p4, v10

    .line 233
    sub-int p2, p2, v10

    .line 238
    add-int v34, p2, p4

    const/16 v35, 0xa

    move-object/from16 v0, v31

    move/from16 v1, v35

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v22

    .line 239
    .local v22, "look":I
    if-gez v22, :cond_5

    .line 240
    move/from16 v22, v21

    .line 244
    :goto_1
    add-int v34, p2, p4

    sub-int v8, v22, v34

    .line 245
    .local v8, "change":I
    add-int p3, p3, v8

    .line 246
    add-int p4, p4, v8

    .line 250
    move-object/from16 v0, v31

    instance-of v0, v0, Landroid/text/Spanned;

    move/from16 v34, v0

    if-eqz v34, :cond_7

    move-object/from16 v26, v31

    .line 251
    check-cast v26, Landroid/text/Spanned;

    .line 255
    .local v26, "sp":Landroid/text/Spanned;
    :cond_1
    const/4 v5, 0x0

    .line 257
    .local v5, "again":Z
    add-int v34, p2, p4

    .line 258
    const-class v35, Landroid/text/style/WrapTogetherSpan;

    .line 257
    move-object/from16 v0, v26

    move/from16 v1, p2

    move/from16 v2, v34

    move-object/from16 v3, v35

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    .line 260
    .local v16, "force":[Ljava/lang/Object;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_2
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v18

    move/from16 v1, v34

    if-ge v0, v1, :cond_6

    .line 261
    aget-object v34, v16, v18

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v27

    .line 262
    .local v27, "st":I
    aget-object v34, v16, v18

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .line 264
    .local v11, "en":I
    move/from16 v0, v27

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    .line 265
    const/4 v5, 0x1

    .line 267
    sub-int v10, p2, v27

    .line 268
    add-int p3, p3, v10

    .line 269
    add-int p4, p4, v10

    .line 270
    sub-int p2, p2, v10

    .line 273
    :cond_2
    add-int v34, p2, p4

    move/from16 v0, v34

    if-le v11, v0, :cond_3

    .line 274
    const/4 v5, 0x1

    .line 276
    add-int v34, p2, p4

    sub-int v10, v11, v34

    .line 277
    add-int p3, p3, v10

    .line 278
    add-int p4, p4, v10

    .line 260
    :cond_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 227
    .end local v5    # "again":Z
    .end local v8    # "change":I
    .end local v10    # "diff":I
    .end local v11    # "en":I
    .end local v16    # "force":[Ljava/lang/Object;
    .end local v18    # "i":I
    .end local v22    # "look":I
    .end local v26    # "sp":Landroid/text/Spanned;
    .end local v27    # "st":I
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 242
    .restart local v10    # "diff":I
    .restart local v22    # "look":I
    :cond_5
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 281
    .restart local v5    # "again":Z
    .restart local v8    # "change":I
    .restart local v16    # "force":[Ljava/lang/Object;
    .restart local v18    # "i":I
    .restart local v26    # "sp":Landroid/text/Spanned;
    :cond_6
    if-nez v5, :cond_1

    .line 286
    .end local v5    # "again":Z
    .end local v16    # "force":[Ljava/lang/Object;
    .end local v18    # "i":I
    .end local v26    # "sp":Landroid/text/Spanned;
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v29

    .line 287
    .local v29, "startline":I
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineTop(I)I

    move-result v30

    .line 289
    .local v30, "startv":I
    add-int v34, p2, p3

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v13

    .line 290
    .local v13, "endline":I
    add-int v34, p2, p4

    move/from16 v0, v34

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 291
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v13

    .line 292
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/DynamicLayout;->getLineTop(I)I

    move-result v14

    .line 293
    .local v14, "endv":I
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v34

    move/from16 v0, v34

    if-ne v13, v0, :cond_10

    const/16 v20, 0x1

    .line 300
    .local v20, "islast":Z
    :goto_3
    sget-object v35, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v35

    .line 301
    :try_start_0
    sget-object v25, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 302
    .local v25, "reflowed":Landroid/text/StaticLayout;
    sget-object v6, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    .line 303
    .local v6, "b":Landroid/text/StaticLayout$Builder;
    const/16 v34, 0x0

    sput-object v34, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 304
    const/16 v34, 0x0

    sput-object v34, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v35

    .line 307
    if-nez v25, :cond_9

    .line 308
    new-instance v25, Landroid/text/StaticLayout;

    .end local v25    # "reflowed":Landroid/text/StaticLayout;
    const/16 v34, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;)V

    .line 309
    .restart local v25    # "reflowed":Landroid/text/StaticLayout;
    add-int v34, p2, p4

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v35

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v36

    move-object/from16 v0, v31

    move/from16 v1, p2

    move/from16 v2, v34

    move-object/from16 v3, v35

    move/from16 v4, v36

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v6

    .line 312
    :cond_9
    add-int v34, p2, p4

    move-object/from16 v0, v31

    move/from16 v1, p2

    move/from16 v2, v34

    invoke-virtual {v6, v0, v1, v2}, Landroid/text/StaticLayout$Builder;->setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;

    move-result-object v34

    .line 313
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v35

    .line 312
    invoke-virtual/range {v34 .. v35}, Landroid/text/StaticLayout$Builder;->setPaint(Landroid/text/TextPaint;)Landroid/text/StaticLayout$Builder;

    move-result-object v34

    .line 314
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v35

    .line 312
    invoke-virtual/range {v34 .. v35}, Landroid/text/StaticLayout$Builder;->setWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v34

    .line 315
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v35

    .line 312
    invoke-virtual/range {v34 .. v35}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v34

    .line 316
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getSpacingAdd()F

    move-result v35

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getSpacingMultiplier()F

    move-result v36

    .line 312
    invoke-virtual/range {v34 .. v36}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v34

    .line 317
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    move/from16 v35, v0

    .line 312
    invoke-virtual/range {v34 .. v35}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v34

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v35, v0

    .line 312
    invoke-virtual/range {v34 .. v35}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v34

    .line 319
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mBreakStrategy:I

    move/from16 v35, v0

    .line 312
    invoke-virtual/range {v34 .. v35}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v34

    .line 320
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mHyphenationFrequency:I

    move/from16 v35, v0

    .line 312
    invoke-virtual/range {v34 .. v35}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v34

    .line 321
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mJustificationMode:I

    move/from16 v35, v0

    .line 312
    invoke-virtual/range {v34 .. v35}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    move-result-object v34

    .line 322
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/DynamicLayout;->mIsLastLineSpacing:Z

    move/from16 v35, v0

    .line 312
    invoke-virtual/range {v34 .. v35}, Landroid/text/StaticLayout$Builder;->setLastLineSpacing(Z)Landroid/text/StaticLayout$Builder;

    .line 323
    const/16 v34, 0x0

    const/16 v35, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v6, v1, v2}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    .line 324
    invoke-virtual/range {v25 .. v25}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v23

    .line 329
    .local v23, "n":I
    add-int v34, p2, p4

    move/from16 v0, v34

    move/from16 v1, v21

    if-eq v0, v1, :cond_a

    add-int/lit8 v34, v23, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v34

    add-int v35, p2, p4

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_a

    .line 330
    add-int/lit8 v23, v23, -0x1

    .line 333
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    move-object/from16 v34, v0

    sub-int v35, v13, v29

    move-object/from16 v0, v34

    move/from16 v1, v29

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/text/PackedIntVector;->deleteAt(II)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    move-object/from16 v34, v0

    sub-int v35, v13, v29

    move-object/from16 v0, v34

    move/from16 v1, v29

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/text/PackedObjectVector;->deleteAt(II)V

    .line 338
    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v17

    .line 339
    .local v17, "ht":I
    const/16 v33, 0x0

    .local v33, "toppad":I
    const/4 v7, 0x0

    .line 341
    .local v7, "botpad":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/DynamicLayout;->mIncludePad:Z

    move/from16 v34, v0

    if-eqz v34, :cond_b

    if-nez v29, :cond_b

    .line 342
    invoke-virtual/range {v25 .. v25}, Landroid/text/StaticLayout;->getTopPadding()I

    move-result v33

    .line 343
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mTopPadding:I

    .line 344
    sub-int v17, v17, v33

    .line 346
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/DynamicLayout;->mIncludePad:Z

    move/from16 v34, v0

    if-eqz v34, :cond_c

    if-eqz v20, :cond_c

    .line 347
    invoke-virtual/range {v25 .. v25}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v7

    .line 348
    move-object/from16 v0, p0

    iput v7, v0, Landroid/text/DynamicLayout;->mBottomPadding:I

    .line 349
    add-int v17, v17, v7

    .line 352
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    move-object/from16 v34, v0

    sub-int v35, p4, p3

    const/16 v36, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v29

    move/from16 v2, v36

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    move-object/from16 v34, v0

    sub-int v35, v30, v14

    add-int v35, v35, v17

    const/16 v36, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v29

    move/from16 v2, v36

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 359
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    move/from16 v34, v0

    if-eqz v34, :cond_11

    .line 360
    const/16 v34, 0x6

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 361
    .local v19, "ints":[I
    const/high16 v34, -0x80000000

    const/16 v35, 0x4

    aput v34, v19, v35

    .line 366
    :goto_4
    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Landroid/text/Layout$Directions;

    move-object/from16 v24, v0

    .line 368
    .local v24, "objects":[Landroid/text/Layout$Directions;
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_5
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_15

    .line 369
    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v28

    .line 370
    .local v28, "start":I
    const/16 v34, 0x0

    aput v28, v19, v34

    .line 371
    const/16 v34, 0x0

    aget v35, v19, v34

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getParagraphDirection(I)I

    move-result v36

    shl-int/lit8 v36, v36, 0x1e

    or-int v35, v35, v36

    aput v35, v19, v34

    .line 372
    const/16 v35, 0x0

    aget v36, v19, v35

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineContainsTab(I)Z

    move-result v34

    if-eqz v34, :cond_12

    const/high16 v34, 0x20000000

    :goto_6
    or-int v34, v34, v36

    aput v34, v19, v35

    .line 374
    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v34

    add-int v32, v34, v30

    .line 375
    .local v32, "top":I
    if-lez v18, :cond_d

    .line 376
    sub-int v32, v32, v33

    .line 377
    :cond_d
    const/16 v34, 0x1

    aput v32, v19, v34

    .line 379
    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v9

    .line 380
    .local v9, "desc":I
    add-int/lit8 v34, v23, -0x1

    move/from16 v0, v18

    move/from16 v1, v34

    if-ne v0, v1, :cond_e

    .line 381
    add-int/2addr v9, v7

    .line 383
    :cond_e
    const/16 v34, 0x2

    aput v9, v19, v34

    .line 384
    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v34

    const/16 v35, 0x0

    aput-object v34, v24, v35

    .line 386
    add-int/lit8 v34, v23, -0x1

    move/from16 v0, v18

    move/from16 v1, v34

    if-ne v0, v1, :cond_13

    add-int v12, p2, p4

    .line 387
    .local v12, "end":I
    :goto_7
    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getHyphen(I)I

    move-result v34

    move/from16 v0, v34

    and-int/lit16 v0, v0, 0xff

    move/from16 v34, v0

    const/16 v35, 0x3

    aput v34, v19, v35

    .line 388
    const/16 v35, 0x3

    aget v36, v19, v35

    .line 389
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v28

    invoke-direct {v0, v1, v2, v12}, Landroid/text/DynamicLayout;->contentMayProtrudeFromLineTopOrBottom(Ljava/lang/CharSequence;II)Z

    move-result v34

    if-eqz v34, :cond_14

    .line 390
    const/16 v34, 0x100

    .line 388
    :goto_8
    or-int v34, v34, v36

    aput v34, v19, v35

    .line 392
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    move/from16 v34, v0

    if-eqz v34, :cond_f

    .line 393
    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getEllipsisStart(I)I

    move-result v34

    const/16 v35, 0x4

    aput v34, v19, v35

    .line 394
    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getEllipsisCount(I)I

    move-result v34

    const/16 v35, 0x5

    aput v34, v19, v35

    .line 397
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    move-object/from16 v34, v0

    add-int v35, v29, v18

    move-object/from16 v0, v34

    move/from16 v1, v35

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    move-object/from16 v34, v0

    add-int v35, v29, v18

    move-object/from16 v0, v34

    move/from16 v1, v35

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    .line 368
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_5

    .line 293
    .end local v6    # "b":Landroid/text/StaticLayout$Builder;
    .end local v7    # "botpad":I
    .end local v9    # "desc":I
    .end local v12    # "end":I
    .end local v17    # "ht":I
    .end local v18    # "i":I
    .end local v19    # "ints":[I
    .end local v20    # "islast":Z
    .end local v23    # "n":I
    .end local v24    # "objects":[Landroid/text/Layout$Directions;
    .end local v25    # "reflowed":Landroid/text/StaticLayout;
    .end local v28    # "start":I
    .end local v32    # "top":I
    .end local v33    # "toppad":I
    :cond_10
    const/16 v20, 0x0

    .restart local v20    # "islast":Z
    goto/16 :goto_3

    .line 300
    :catchall_0
    move-exception v34

    monitor-exit v35

    throw v34

    .line 363
    .restart local v6    # "b":Landroid/text/StaticLayout$Builder;
    .restart local v7    # "botpad":I
    .restart local v17    # "ht":I
    .restart local v23    # "n":I
    .restart local v25    # "reflowed":Landroid/text/StaticLayout;
    .restart local v33    # "toppad":I
    :cond_11
    const/16 v34, 0x4

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .restart local v19    # "ints":[I
    goto/16 :goto_4

    .line 372
    .restart local v18    # "i":I
    .restart local v24    # "objects":[Landroid/text/Layout$Directions;
    .restart local v28    # "start":I
    :cond_12
    const/16 v34, 0x0

    goto/16 :goto_6

    .line 386
    .restart local v9    # "desc":I
    .restart local v32    # "top":I
    :cond_13
    add-int/lit8 v34, v18, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v12

    .restart local v12    # "end":I
    goto/16 :goto_7

    .line 390
    :cond_14
    const/16 v34, 0x0

    goto :goto_8

    .line 401
    .end local v9    # "desc":I
    .end local v12    # "end":I
    .end local v28    # "start":I
    .end local v32    # "top":I
    :cond_15
    add-int/lit8 v34, v13, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v34

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/DynamicLayout;->updateBlocks(III)V

    .line 403
    invoke-virtual {v6}, Landroid/text/StaticLayout$Builder;->finish()V

    .line 404
    sget-object v35, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v35

    .line 405
    :try_start_1
    sput-object v25, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 406
    sput-object v6, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v35

    .line 408
    return-void

    .line 404
    :catchall_1
    move-exception v34

    monitor-exit v35

    throw v34
.end method

.method private updateAlwaysNeedsToBeRedrawn(I)V
    .locals 5
    .param p1, "blockIndex"    # I

    .prologue
    .line 460
    if-nez p1, :cond_1

    const/4 v2, 0x0

    .line 461
    .local v2, "startLine":I
    :goto_0
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v0, v3, p1

    .line 462
    .local v0, "endLine":I
    move v1, v2

    .local v1, "i":I
    :goto_1
    if-gt v1, v0, :cond_3

    .line 463
    invoke-direct {p0, v1}, Landroid/text/DynamicLayout;->getContentMayProtrudeFromTopOrBottom(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 464
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    if-nez v3, :cond_0

    .line 465
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    .line 467
    :cond_0
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 468
    return-void

    .line 460
    .end local v0    # "endLine":I
    .end local v1    # "i":I
    .end local v2    # "startLine":I
    :cond_1
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int/lit8 v4, p1, -0x1

    aget v3, v3, v4

    add-int/lit8 v2, v3, 0x1

    .restart local v2    # "startLine":I
    goto :goto_0

    .line 462
    .restart local v0    # "endLine":I
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 471
    :cond_3
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    if-eqz v3, :cond_4

    .line 472
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 474
    :cond_4
    return-void
.end method


# virtual methods
.method public getBlockEndLines()[I
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    return-object v0
.end method

.method public getBlockIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 664
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aget v0, v0, p1

    return v0
.end method

.method public getBlockIndices()[I
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    return-object v0
.end method

.method public getBlocksAlwaysNeedToBeRedrawn()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 456
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 738
    iget v0, p0, Landroid/text/DynamicLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 816
    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    .line 817
    const/4 v0, 0x0

    return v0

    .line 820
    :cond_0
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 807
    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    .line 808
    const/4 v0, 0x0

    return v0

    .line 811
    :cond_0
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 756
    iget v0, p0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getHyphen(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 746
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getIndexFirstChangedBlock()I
    .locals 1

    .prologue
    .line 686
    iget v0, p0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 3
    .param p1, "line"    # I

    .prologue
    const/4 v0, 0x0

    .line 718
    iget-object v1, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v1, p1, v0}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v1

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
    .line 698
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getLineDescent(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 708
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 728
    iget-object v0, p0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedObjectVector;->getValue(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Directions;

    return-object v0
.end method

.method public getLineStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 713
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 703
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getNumberOfBlocks()I
    .locals 1

    .prologue
    .line 679
    iget v0, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 723
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 733
    iget v0, p0, Landroid/text/DynamicLayout;->mTopPadding:I

    return v0
.end method

.method public setBlockIndex(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "blockIndex"    # I

    .prologue
    .line 672
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aput p2, v0, p1

    .line 673
    return-void
.end method

.method public setBlocksDataForTest([I[III)V
    .locals 3
    .param p1, "blockEndLines"    # [I
    .param p2, "blockIndices"    # [I
    .param p3, "numberOfBlocks"    # I
    .param p4, "totalLines"    # I

    .prologue
    const/4 v2, 0x0

    .line 636
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 637
    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 638
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 639
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 640
    iput p3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 641
    :goto_0
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    if-ge v0, p4, :cond_0

    .line 642
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    iget-object v1, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v1}, Landroid/text/PackedIntVector;->size()I

    move-result v1

    const/4 v2, 0x4

    new-array v2, v2, [I

    invoke-virtual {v0, v1, v2}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    goto :goto_0

    .line 644
    :cond_0
    return-void
.end method

.method public setIndexFirstChangedBlock(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 693
    iput p1, p0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    .line 694
    return-void
.end method

.method public updateBlocks(III)V
    .locals 26
    .param p1, "startLine"    # I
    .param p2, "endLine"    # I
    .param p3, "newLineCount"    # I

    .prologue
    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    .line 520
    invoke-direct/range {p0 .. p0}, Landroid/text/DynamicLayout;->createBlocks()V

    .line 521
    return-void

    .line 524
    :cond_0
    const/4 v12, -0x1

    .line 525
    .local v12, "firstBlock":I
    const/4 v14, -0x1

    .line 526
    .local v14, "lastBlock":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v13, v0, :cond_1

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v21, v0

    aget v21, v21, v13

    move/from16 v0, v21

    move/from16 v1, p1

    if-lt v0, v1, :cond_6

    .line 528
    move v12, v13

    .line 532
    :cond_1
    move v13, v12

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v13, v0, :cond_2

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v21, v0

    aget v21, v21, v13

    move/from16 v0, v21

    move/from16 v1, p2

    if-lt v0, v1, :cond_7

    .line 534
    move v14, v13

    .line 538
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v21, v0

    aget v15, v21, v14

    .line 540
    .local v15, "lastBlockEndLine":I
    if-nez v12, :cond_8

    const/16 v21, 0x0

    :goto_2
    move/from16 v0, p1

    move/from16 v1, v21

    if-le v0, v1, :cond_9

    const/4 v10, 0x1

    .line 542
    .local v10, "createBlockBefore":Z
    :goto_3
    if-lez p3, :cond_a

    const/4 v8, 0x1

    .line 543
    .local v8, "createBlock":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v21, v0

    aget v21, v21, v14

    move/from16 v0, p2

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    const/4 v9, 0x1

    .line 545
    .local v9, "createBlockAfter":Z
    :goto_5
    const/16 v18, 0x0

    .line 546
    .local v18, "numAddedBlocks":I
    if-eqz v10, :cond_3

    const/16 v18, 0x1

    .line 547
    :cond_3
    if-eqz v8, :cond_4

    add-int/lit8 v18, v18, 0x1

    .line 548
    :cond_4
    if-eqz v9, :cond_5

    add-int/lit8 v18, v18, 0x1

    .line 550
    :cond_5
    sub-int v21, v14, v12

    add-int/lit8 v19, v21, 0x1

    .line 551
    .local v19, "numRemovedBlocks":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v21, v0

    add-int v21, v21, v18

    sub-int v17, v21, v19

    .line 553
    .local v17, "newNumberOfBlocks":I
    if-nez v17, :cond_c

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    aput v22, v21, v23

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v21, v0

    const/16 v22, -0x1

    const/16 v23, 0x0

    aput v22, v21, v23

    .line 557
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 558
    return-void

    .line 526
    .end local v8    # "createBlock":Z
    .end local v9    # "createBlockAfter":Z
    .end local v10    # "createBlockBefore":Z
    .end local v15    # "lastBlockEndLine":I
    .end local v17    # "newNumberOfBlocks":I
    .end local v18    # "numAddedBlocks":I
    .end local v19    # "numRemovedBlocks":I
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 532
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 541
    .restart local v15    # "lastBlockEndLine":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v21, v0

    add-int/lit8 v22, v12, -0x1

    aget v21, v21, v22

    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 540
    :cond_9
    const/4 v10, 0x0

    .restart local v10    # "createBlockBefore":Z
    goto :goto_3

    .line 542
    :cond_a
    const/4 v8, 0x0

    .restart local v8    # "createBlock":Z
    goto :goto_4

    .line 543
    :cond_b
    const/4 v9, 0x0

    .restart local v9    # "createBlockAfter":Z
    goto :goto_5

    .line 561
    .restart local v17    # "newNumberOfBlocks":I
    .restart local v18    # "numAddedBlocks":I
    .restart local v19    # "numRemovedBlocks":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v17

    move/from16 v1, v21

    if-le v0, v1, :cond_f

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 562
    invoke-static/range {v21 .. v21}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v5

    .line 564
    .local v5, "blockEndLines":[I
    array-length v0, v5

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v7, v0, [I

    .line 565
    .local v7, "blockIndices":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v5, v2, v12}, Ljava/lang/System;->arraycopy([II[III)V

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v7, v2, v12}, Ljava/lang/System;->arraycopy([II[III)V

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v21, v0

    add-int/lit8 v22, v14, 0x1

    .line 568
    add-int v23, v12, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v24, v0

    sub-int v24, v24, v14

    add-int/lit8 v24, v24, -0x1

    .line 567
    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v5, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v21, v0

    add-int/lit8 v22, v14, 0x1

    .line 570
    add-int v23, v12, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v24, v0

    sub-int v24, v24, v14

    add-int/lit8 v24, v24, -0x1

    .line 569
    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v7, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 571
    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 572
    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 580
    .end local v5    # "blockEndLines":[I
    .end local v7    # "blockIndices":[I
    :cond_d
    :goto_6
    add-int v21, v18, v19

    if-eqz v21, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    move-object/from16 v21, v0

    if-eqz v21, :cond_11

    .line 581
    new-instance v20, Landroid/util/ArraySet;

    invoke-direct/range {v20 .. v20}, Landroid/util/ArraySet;-><init>()V

    .line 582
    .local v20, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/ArraySet;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v13, v0, :cond_10

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 584
    .local v4, "block":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v0, v21

    if-le v0, v12, :cond_e

    .line 585
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v21

    sub-int v22, v18, v19

    add-int v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 587
    :cond_e
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 582
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 573
    .end local v4    # "block":Ljava/lang/Integer;
    .end local v20    # "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_f
    add-int v21, v18, v19

    if-eqz v21, :cond_d

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v21, v0

    add-int/lit8 v22, v14, 0x1

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v23, v0

    add-int v24, v12, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v25, v0

    sub-int v25, v25, v14

    add-int/lit8 v25, v25, -0x1

    .line 574
    invoke-static/range {v21 .. v25}, Ljava/lang/System;->arraycopy([II[III)V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v21, v0

    add-int/lit8 v22, v14, 0x1

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v23, v0

    add-int v24, v12, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v25, v0

    sub-int v25, v25, v14

    add-int/lit8 v25, v25, -0x1

    .line 576
    invoke-static/range {v21 .. v25}, Ljava/lang/System;->arraycopy([II[III)V

    goto/16 :goto_6

    .line 589
    .restart local v20    # "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_10
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    .line 592
    .end local v20    # "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_11
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 594
    sub-int v21, p2, p1

    add-int/lit8 v21, v21, 0x1

    sub-int v11, p3, v21

    .line 595
    .local v11, "deltaLines":I
    if-eqz v11, :cond_12

    .line 598
    add-int v16, v12, v18

    .line 599
    .local v16, "newFirstChangedBlock":I
    move/from16 v13, v16

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v13, v0, :cond_13

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v21, v0

    aget v22, v21, v13

    add-int v22, v22, v11

    aput v22, v21, v13

    .line 599
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 603
    .end local v16    # "newFirstChangedBlock":I
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v16, v0

    .line 605
    .restart local v16    # "newFirstChangedBlock":I
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    .line 607
    move v6, v12

    .line 608
    .local v6, "blockIndex":I
    if-eqz v10, :cond_14

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v21, v0

    add-int/lit8 v22, p1, -0x1

    aput v22, v21, v6

    .line 610
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v21, v0

    const/16 v22, -0x1

    aput v22, v21, v6

    .line 612
    add-int/lit8 v6, v6, 0x1

    .line 615
    :cond_14
    if-eqz v8, :cond_15

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v21, v0

    add-int v22, p1, p3

    add-int/lit8 v22, v22, -0x1

    aput v22, v21, v6

    .line 617
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v21, v0

    const/16 v22, -0x1

    aput v22, v21, v6

    .line 619
    add-int/lit8 v6, v6, 0x1

    .line 622
    :cond_15
    if-eqz v9, :cond_16

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v21, v0

    add-int v22, v15, v11

    aput v22, v21, v6

    .line 624
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v21, v0

    const/16 v22, -0x1

    aput v22, v21, v6

    .line 627
    :cond_16
    return-void
.end method
