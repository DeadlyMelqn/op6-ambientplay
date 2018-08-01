.class public Landroid/support/v17/leanback/widget/WindowAlignment$Axis;
.super Ljava/lang/Object;
.source "WindowAlignment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/WindowAlignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Axis"
.end annotation


# instance fields
.field private mMaxEdge:I

.field private mMaxScroll:I

.field private mMinEdge:I

.field private mMinScroll:I

.field private mName:Ljava/lang/String;

.field private mPaddingMax:I

.field private mPaddingMin:I

.field private mPreferredKeyLine:I

.field private mReversedFlow:Z

.field private mSize:I

.field private mWindowAlignment:I

.field private mWindowAlignmentOffset:I

.field private mWindowAlignmentOffsetPercent:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    .line 57
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    .line 61
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    .line 80
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->reset()V

    .line 81
    iput-object p1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mName:Ljava/lang/String;

    .line 82
    return-void
.end method


# virtual methods
.method final calculateKeyline()I
    .locals 5

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 196
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v1, :cond_2

    .line 197
    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    if-ltz v1, :cond_1

    .line 198
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    .line 202
    .local v0, "keyLine":I
    :goto_0
    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    .line 203
    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mSize:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 215
    :cond_0
    :goto_1
    return v0

    .line 200
    .end local v0    # "keyLine":I
    :cond_1
    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mSize:I

    iget v2, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    add-int v0, v1, v2

    .restart local v0    # "keyLine":I
    goto :goto_0

    .line 206
    .end local v0    # "keyLine":I
    :cond_2
    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    if-ltz v1, :cond_3

    .line 207
    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mSize:I

    iget v2, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    sub-int v0, v1, v2

    .line 211
    .restart local v0    # "keyLine":I
    :goto_2
    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    .line 212
    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mSize:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    float-to-int v1, v1

    sub-int/2addr v0, v1

    goto :goto_1

    .line 209
    .end local v0    # "keyLine":I
    :cond_3
    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    neg-int v0, v1

    .restart local v0    # "keyLine":I
    goto :goto_2
.end method

.method final calculateScrollToKeyLine(II)I
    .locals 1
    .param p1, "viewCenterPosition"    # I
    .param p2, "keyLine"    # I

    .prologue
    .line 222
    sub-int v0, p1, p2

    return v0
.end method

.method public final getClientSize()I
    .locals 2

    .prologue
    .line 191
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mSize:I

    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getMaxScroll()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    return v0
.end method

.method public final getMinScroll()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    return v0
.end method

.method public final getPaddingMax()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    return v0
.end method

.method public final getPaddingMin()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    return v0
.end method

.method public final getScroll(I)I
    .locals 10
    .param p1, "viewCenter"    # I

    .prologue
    .line 307
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v7

    .line 308
    .local v7, "size":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->calculateKeyline()I

    move-result v4

    .line 309
    .local v4, "keyLine":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMinUnknown()Z

    move-result v3

    .line 310
    .local v3, "isMinUnknown":Z
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMaxUnknown()Z

    move-result v2

    .line 311
    .local v2, "isMaxUnknown":Z
    if-nez v3, :cond_3

    .line 312
    iget v8, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    sub-int v6, v4, v8

    .line 313
    .local v6, "keyLineToMinEdge":I
    iget-boolean v8, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v8, :cond_2

    iget v8, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_3

    .line 315
    :cond_0
    iget v8, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    sub-int v8, p1, v8

    if-gt v8, v6, :cond_3

    .line 317
    iget v8, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    iget v9, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    sub-int v1, v8, v9

    .line 319
    .local v1, "alignToMin":I
    if-nez v2, :cond_1

    iget v8, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    if-le v1, v8, :cond_1

    .line 320
    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    .line 322
    :cond_1
    return v1

    .line 314
    .end local v1    # "alignToMin":I
    :cond_2
    iget v8, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_0

    .line 325
    .end local v6    # "keyLineToMinEdge":I
    :cond_3
    if-nez v2, :cond_7

    .line 326
    sub-int v8, v7, v4

    iget v9, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    sub-int v5, v8, v9

    .line 327
    .local v5, "keyLineToMaxEdge":I
    iget-boolean v8, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v8, :cond_6

    iget v8, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_7

    .line 329
    :cond_4
    iget v8, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    sub-int/2addr v8, p1

    if-gt v8, v5, :cond_7

    .line 331
    iget v8, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    iget v9, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    sub-int v9, v7, v9

    sub-int v0, v8, v9

    .line 333
    .local v0, "alignToMax":I
    if-nez v3, :cond_5

    iget v8, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    if-ge v0, v8, :cond_5

    .line 334
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    .line 336
    :cond_5
    return v0

    .line 328
    .end local v0    # "alignToMax":I
    :cond_6
    iget v8, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_4

    .line 340
    .end local v5    # "keyLineToMaxEdge":I
    :cond_7
    invoke-virtual {p0, p1, v4}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->calculateScrollToKeyLine(II)I

    move-result v8

    return v8
.end method

.method public final getSize()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mSize:I

    return v0
.end method

.method public final invalidateScrollMax()V
    .locals 1

    .prologue
    const v0, 0x7fffffff

    .line 152
    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    .line 153
    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    .line 154
    return-void
.end method

.method public final invalidateScrollMin()V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 140
    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    .line 141
    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    .line 142
    return-void
.end method

.method public final isMaxUnknown()Z
    .locals 2

    .prologue
    .line 166
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isMinUnknown()Z
    .locals 2

    .prologue
    .line 162
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isPreferKeylineOverHighEdge()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 105
    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method final isPreferKeylineOverLowEdge()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 109
    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method reset()V
    .locals 1

    .prologue
    .line 157
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    .line 158
    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    .line 159
    return-void
.end method

.method public final setPadding(II)V
    .locals 0
    .param p1, "paddingMin"    # I
    .param p2, "paddingMax"    # I

    .prologue
    .line 178
    iput p1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    .line 179
    iput p2, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    .line 180
    return-void
.end method

.method public final setReversedFlow(Z)V
    .locals 0
    .param p1, "reversedFlow"    # Z

    .prologue
    .line 344
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    .line 345
    return-void
.end method

.method public final setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 170
    iput p1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mSize:I

    .line 171
    return-void
.end method

.method public final setWindowAlignment(I)V
    .locals 0
    .param p1, "windowAlignment"    # I

    .prologue
    .line 89
    iput p1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    .line 90
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " min:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateMinMax(IIII)V
    .locals 6
    .param p1, "minEdge"    # I
    .param p2, "maxEdge"    # I
    .param p3, "minChildViewCenter"    # I
    .param p4, "maxChildViewCenter"    # I

    .prologue
    .line 230
    iput p1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    .line 231
    iput p2, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    .line 232
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getClientSize()I

    move-result v0

    .line 233
    .local v0, "clientSize":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->calculateKeyline()I

    move-result v3

    .line 234
    .local v3, "keyLine":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMinUnknown()Z

    move-result v2

    .line 235
    .local v2, "isMinUnknown":Z
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMaxUnknown()Z

    move-result v1

    .line 236
    .local v1, "isMaxUnknown":Z
    if-nez v2, :cond_1

    .line 237
    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v4, :cond_6

    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_7

    .line 240
    :cond_0
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    .line 246
    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 247
    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v4, :cond_8

    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_9

    .line 250
    :cond_2
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    iput v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    .line 256
    :cond_3
    :goto_1
    if-nez v1, :cond_5

    xor-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_5

    .line 257
    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v4, :cond_c

    .line 258
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_a

    .line 259
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isPreferKeylineOverLowEdge()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 262
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    .line 263
    invoke-virtual {p0, p4, v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->calculateScrollToKeyLine(II)I

    move-result v5

    .line 262
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    .line 266
    :cond_4
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    .line 299
    :cond_5
    :goto_2
    return-void

    .line 238
    :cond_6
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_0

    .line 243
    :cond_7
    invoke-virtual {p0, p3, v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->calculateScrollToKeyLine(II)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    goto :goto_0

    .line 248
    :cond_8
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2

    .line 253
    :cond_9
    invoke-virtual {p0, p4, v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->calculateScrollToKeyLine(II)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    goto :goto_1

    .line 267
    :cond_a
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    .line 268
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isPreferKeylineOverHighEdge()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 271
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    .line 272
    invoke-virtual {p0, p3, v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->calculateScrollToKeyLine(II)I

    move-result v5

    .line 271
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    .line 275
    :cond_b
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    goto :goto_2

    .line 278
    :cond_c
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_e

    .line 279
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isPreferKeylineOverLowEdge()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 282
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    .line 283
    invoke-virtual {p0, p3, v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->calculateScrollToKeyLine(II)I

    move-result v5

    .line 282
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    .line 286
    :cond_d
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    goto :goto_2

    .line 287
    :cond_e
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    .line 288
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isPreferKeylineOverHighEdge()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 291
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    .line 292
    invoke-virtual {p0, p4, v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->calculateScrollToKeyLine(II)I

    move-result v5

    .line 291
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    .line 295
    :cond_f
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    goto/16 :goto_2
.end method
