.class public final Landroid/text/StaticLayout$Builder;
.super Ljava/lang/Object;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/StaticLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/text/StaticLayout$Builder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAlignment:Landroid/text/Layout$Alignment;

.field mBreakStrategy:I

.field mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field mEllipsizedWidth:I

.field mEnd:I

.field mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field mHyphenationFrequency:I

.field mIncludePad:Z

.field mIsLastLineSpacing:Z

.field mJustificationMode:I

.field mLeftIndents:[I

.field mLocales:Landroid/os/LocaleList;

.field mMaxLines:I

.field mMeasuredText:Landroid/text/MeasuredText;

.field mNativePtr:J

.field mPaint:Landroid/text/TextPaint;

.field mRightIndents:[I

.field mSpacingAdd:F

.field mSpacingMult:F

.field mStart:I

.field mText:Ljava/lang/CharSequence;

.field mTextDir:Landroid/text/TextDirectionHeuristic;

.field mWidth:I


# direct methods
.method static synthetic -wrap0(Landroid/text/StaticLayout$Builder;)V
    .locals 0
    .param p0, "b"    # Landroid/text/StaticLayout$Builder;

    .prologue
    invoke-static {p0}, Landroid/text/StaticLayout$Builder;->recycle(Landroid/text/StaticLayout$Builder;)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/text/StaticLayout$Builder;Landroid/os/LocaleList;)V
    .locals 0
    .param p0, "-this"    # Landroid/text/StaticLayout$Builder;
    .param p1, "locales"    # Landroid/os/LocaleList;

    .prologue
    invoke-direct {p0, p1}, Landroid/text/StaticLayout$Builder;->setLocales(Landroid/os/LocaleList;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 451
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/text/StaticLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 60
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 62
    invoke-static {}, Landroid/text/StaticLayout;->-wrap1()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    .line 63
    return-void
.end method

.method private getHyphenators(Landroid/os/LocaleList;)[J
    .locals 6
    .param p1, "locales"    # Landroid/os/LocaleList;

    .prologue
    .line 347
    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    move-result v1

    .line 348
    .local v1, "length":I
    new-array v3, v1, [J

    .line 349
    .local v3, "result":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 350
    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    .line 351
    .local v2, "locale":Ljava/util/Locale;
    invoke-static {v2}, Landroid/text/Hyphenator;->get(Ljava/util/Locale;)Landroid/text/Hyphenator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/Hyphenator;->getNativePtr()J

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    .end local v2    # "locale":Ljava/util/Locale;
    :cond_0
    return-object v3
.end method

.method public static obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;
    .locals 4
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 77
    sget-object v1, Landroid/text/StaticLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/StaticLayout$Builder;

    .line 78
    .local v0, "b":Landroid/text/StaticLayout$Builder;
    if-nez v0, :cond_0

    .line 79
    new-instance v0, Landroid/text/StaticLayout$Builder;

    .end local v0    # "b":Landroid/text/StaticLayout$Builder;
    invoke-direct {v0}, Landroid/text/StaticLayout$Builder;-><init>()V

    .line 83
    .restart local v0    # "b":Landroid/text/StaticLayout$Builder;
    :cond_0
    iput-object p0, v0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 84
    iput p1, v0, Landroid/text/StaticLayout$Builder;->mStart:I

    .line 85
    iput p2, v0, Landroid/text/StaticLayout$Builder;->mEnd:I

    .line 86
    iput-object p3, v0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    .line 87
    iput p4, v0, Landroid/text/StaticLayout$Builder;->mWidth:I

    .line 88
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v1, v0, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    .line 89
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object v1, v0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 90
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    .line 91
    const/4 v1, 0x0

    iput v1, v0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    .line 92
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    .line 93
    iput p4, v0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    .line 94
    iput-object v3, v0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 95
    const v1, 0x7fffffff

    iput v1, v0, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    .line 96
    iput v2, v0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    .line 97
    iput v2, v0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    .line 98
    iput v2, v0, Landroid/text/StaticLayout$Builder;->mJustificationMode:I

    .line 99
    iput-boolean v2, v0, Landroid/text/StaticLayout$Builder;->mIsLastLineSpacing:Z

    .line 101
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, v0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    .line 102
    return-object v0
.end method

.method private static recycle(Landroid/text/StaticLayout$Builder;)V
    .locals 2
    .param p0, "b"    # Landroid/text/StaticLayout$Builder;

    .prologue
    const/4 v1, 0x0

    .line 106
    iput-object v1, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    .line 107
    iput-object v1, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 108
    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    invoke-static {v0}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 109
    iput-object v1, p0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    .line 110
    iput-object v1, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    .line 111
    iput-object v1, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    .line 112
    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/text/StaticLayout;->-wrap4(J)V

    .line 113
    sget-object v0, Landroid/text/StaticLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method private setLocales(Landroid/os/LocaleList;)V
    .locals 4
    .param p1, "locales"    # Landroid/os/LocaleList;

    .prologue
    .line 378
    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Landroid/text/StaticLayout$Builder;->getHyphenators(Landroid/os/LocaleList;)[J

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Landroid/text/StaticLayout;->-wrap7(JLjava/lang/String;[J)V

    .line 380
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mLocales:Landroid/os/LocaleList;

    .line 382
    :cond_0
    return-void
.end method


# virtual methods
.method addMeasuredRun(II[F)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "widths"    # [F

    .prologue
    .line 391
    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/text/StaticLayout;->-wrap2(JII[F)V

    .line 392
    return-void
.end method

.method addReplacementRun(IIF)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "width"    # F

    .prologue
    .line 395
    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/text/StaticLayout;->-wrap3(JIIF)V

    .line 396
    return-void
.end method

.method addStyleRun(Landroid/text/TextPaint;IIZ)F
    .locals 9
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "isRtl"    # Z

    .prologue
    .line 385
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/StaticLayout$Builder;->setLocales(Landroid/os/LocaleList;)V

    .line 386
    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    invoke-virtual {p1}, Landroid/text/TextPaint;->getNativeInstance()J

    move-result-wide v2

    iget-wide v4, p1, Landroid/text/TextPaint;->mNativeTypeface:J

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v0 .. v8}, Landroid/text/StaticLayout;->-wrap0(JJJIIZ)F

    move-result v0

    return v0
.end method

.method public build()Landroid/text/StaticLayout;
    .locals 2

    .prologue
    .line 408
    new-instance v0, Landroid/text/StaticLayout;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;Landroid/text/StaticLayout;)V

    .line 409
    .local v0, "result":Landroid/text/StaticLayout;
    invoke-static {p0}, Landroid/text/StaticLayout$Builder;->recycle(Landroid/text/StaticLayout$Builder;)V

    .line 410
    return-object v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 416
    :try_start_0
    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/text/StaticLayout;->-wrap5(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 420
    return-void

    .line 417
    :catchall_0
    move-exception v0

    .line 418
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 417
    throw v0
.end method

.method finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/text/StaticLayout;->-wrap4(J)V

    .line 119
    iput-object v2, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 120
    iput-object v2, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    .line 121
    iput-object v2, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    .line 122
    iput-object v2, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    .line 123
    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    invoke-virtual {v0}, Landroid/text/MeasuredText;->finish()V

    .line 124
    return-void
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "alignment"    # Landroid/text/Layout$Alignment;

    .prologue
    .line 185
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    .line 186
    return-object p0
.end method

.method public setBreakStrategy(I)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "breakStrategy"    # I

    .prologue
    .line 285
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    .line 286
    return-object p0
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 258
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 259
    return-object p0
.end method

.method public setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "ellipsizedWidth"    # I

    .prologue
    .line 241
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    .line 242
    return-object p0
.end method

.method public setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "hyphenationFrequency"    # I

    .prologue
    .line 298
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    .line 299
    return-object p0
.end method

.method public setIncludePad(Z)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "includePad"    # Z

    .prologue
    .line 227
    iput-boolean p1, p0, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    .line 228
    return-object p0
.end method

.method public setIndents([I[I)Landroid/text/StaticLayout$Builder;
    .locals 8
    .param p1, "leftIndents"    # [I
    .param p2, "rightIndents"    # [I

    .prologue
    .line 319
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    .line 320
    iput-object p2, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    .line 321
    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 322
    .local v2, "leftLen":I
    :goto_0
    if-nez p2, :cond_1

    const/4 v4, 0x0

    .line 323
    .local v4, "rightLen":I
    :goto_1
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    new-array v1, v6, [I

    .line 324
    .local v1, "indents":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v6, v1

    if-ge v0, v6, :cond_4

    .line 325
    if-ge v0, v2, :cond_2

    aget v3, p1, v0

    .line 326
    .local v3, "leftMargin":I
    :goto_3
    if-ge v0, v4, :cond_3

    aget v5, p2, v0

    .line 327
    .local v5, "rightMargin":I
    :goto_4
    add-int v6, v3, v5

    aput v6, v1, v0

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 321
    .end local v0    # "i":I
    .end local v1    # "indents":[I
    .end local v2    # "leftLen":I
    .end local v3    # "leftMargin":I
    .end local v4    # "rightLen":I
    .end local v5    # "rightMargin":I
    :cond_0
    array-length v2, p1

    .restart local v2    # "leftLen":I
    goto :goto_0

    .line 322
    :cond_1
    array-length v4, p2

    .restart local v4    # "rightLen":I
    goto :goto_1

    .line 325
    .restart local v0    # "i":I
    .restart local v1    # "indents":[I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "leftMargin":I
    goto :goto_3

    .line 326
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "rightMargin":I
    goto :goto_4

    .line 329
    .end local v3    # "leftMargin":I
    .end local v5    # "rightMargin":I
    :cond_4
    iget-wide v6, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    invoke-static {v6, v7, v1}, Landroid/text/StaticLayout;->-wrap6(J[I)V

    .line 330
    return-object p0
.end method

.method public setJustificationMode(I)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "justificationMode"    # I

    .prologue
    .line 342
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mJustificationMode:I

    .line 343
    return-object p0
.end method

.method public setLastLineSpacing(Z)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "isLastLineSpacing"    # Z

    .prologue
    .line 306
    iput-boolean p1, p0, Landroid/text/StaticLayout$Builder;->mIsLastLineSpacing:Z

    .line 307
    return-object p0
.end method

.method public setLineSpacing(FF)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "spacingAdd"    # F
    .param p2, "spacingMult"    # F

    .prologue
    .line 212
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    .line 213
    iput p2, p0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    .line 214
    return-object p0
.end method

.method public setMaxLines(I)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "maxLines"    # I

    .prologue
    .line 272
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    .line 273
    return-object p0
.end method

.method public setPaint(Landroid/text/TextPaint;)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 158
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    .line 159
    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/text/StaticLayout$Builder;
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;

    .prologue
    .line 127
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/text/StaticLayout$Builder;->setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 143
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 144
    iput p2, p0, Landroid/text/StaticLayout$Builder;->mStart:I

    .line 145
    iput p3, p0, Landroid/text/StaticLayout$Builder;->mEnd:I

    .line 146
    return-object p0
.end method

.method public setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .prologue
    .line 198
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 199
    return-object p0
.end method

.method public setWidth(I)Landroid/text/StaticLayout$Builder;
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 171
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mWidth:I

    .line 172
    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    .line 173
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    .line 175
    :cond_0
    return-object p0
.end method
