.class abstract Landroid/text/SpannableStringInternal;
.super Ljava/lang/Object;
.source "SpannableStringInternal.java"


# static fields
.field private static final COLUMNS:I = 0x3

.field static final EMPTY:[Ljava/lang/Object;

.field private static final END:I = 0x1

.field private static final FLAGS:I = 0x2

.field private static final START:I


# instance fields
.field private mSpanCount:I

.field private mSpanData:[I

.field private mSpans:[Ljava/lang/Object;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/SpannableStringInternal;->EMPTY:[Ljava/lang/Object;

    .line 26
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 1
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p2, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_1

    .line 31
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    .line 35
    :goto_0
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 37
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 39
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 40
    instance-of v0, p1, Landroid/text/SpannableStringInternal;

    if-eqz v0, :cond_2

    .line 41
    check-cast p1, Landroid/text/SpannableStringInternal;

    .end local p1    # "source":Ljava/lang/CharSequence;
    invoke-direct {p0, p1, p2, p3}, Landroid/text/SpannableStringInternal;->copySpans(Landroid/text/SpannableStringInternal;II)V

    .line 46
    :cond_0
    :goto_1
    return-void

    .line 33
    .restart local p1    # "source":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    goto :goto_0

    .line 43
    :cond_2
    check-cast p1, Landroid/text/Spanned;

    .end local p1    # "source":Ljava/lang/CharSequence;
    invoke-direct {p0, p1, p2, p3}, Landroid/text/SpannableStringInternal;->copySpans(Landroid/text/Spanned;II)V

    goto :goto_1
.end method

.method private checkRange(Ljava/lang/String;II)V
    .locals 4
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 427
    if-ge p3, p2, :cond_0

    .line 428
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 429
    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object v3

    .line 428
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 430
    const-string/jumbo v3, " has end before start"

    .line 428
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 433
    :cond_0
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v0

    .line 435
    .local v0, "len":I
    if-gt p2, v0, :cond_1

    if-le p3, v0, :cond_2

    .line 436
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 437
    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object v3

    .line 436
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 438
    const-string/jumbo v3, " ends beyond length "

    .line 436
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 441
    :cond_2
    if-ltz p2, :cond_3

    if-gez p3, :cond_4

    .line 442
    :cond_3
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 443
    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object v3

    .line 442
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 444
    const-string/jumbo v3, " starts before 0"

    .line 442
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 446
    :cond_4
    return-void
.end method

.method private final copySpans(Landroid/text/SpannableStringInternal;II)V
    .locals 12
    .param p1, "src"    # Landroid/text/SpannableStringInternal;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v11, 0x0

    .line 81
    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/text/SpannableStringInternal;->length()I

    move-result v8

    if-ne p3, v8, :cond_1

    .line 82
    iget-object v8, p1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length v8, v8

    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 83
    iget-object v8, p1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    array-length v8, v8

    new-array v8, v8, [I

    iput-object v8, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 84
    iget v8, p1, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iput v8, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 85
    iget-object v8, p1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v9, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v10, p1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length v10, v10

    invoke-static {v8, v11, v9, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    iget-object v8, p1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget-object v9, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget-object v10, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    array-length v10, v10

    invoke-static {v8, v11, v9, v11, v10}, Ljava/lang/System;->arraycopy([II[III)V

    .line 118
    :cond_0
    return-void

    .line 88
    :cond_1
    const/4 v0, 0x0

    .line 89
    .local v0, "count":I
    iget-object v6, p1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 90
    .local v6, "srcData":[I
    iget v3, p1, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 91
    .local v3, "limit":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 92
    mul-int/lit8 v8, v1, 0x3

    add-int/lit8 v8, v8, 0x0

    aget v5, v6, v8

    .line 93
    .local v5, "spanStart":I
    mul-int/lit8 v8, v1, 0x3

    add-int/lit8 v8, v8, 0x1

    aget v4, v6, v8

    .line 94
    .local v4, "spanEnd":I
    invoke-direct {p0, p2, p3, v5, v4}, Landroid/text/SpannableStringInternal;->isOutOfCopyRange(IIII)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 91
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 98
    .end local v4    # "spanEnd":I
    .end local v5    # "spanStart":I
    :cond_3
    if-nez v0, :cond_4

    return-void

    .line 100
    :cond_4
    iget-object v7, p1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 101
    .local v7, "srcSpans":[Ljava/lang/Object;
    iput v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 102
    iget v8, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 103
    iget-object v8, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length v8, v8

    mul-int/lit8 v8, v8, 0x3

    new-array v8, v8, [I

    iput-object v8, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 104
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v1, v3, :cond_0

    .line 105
    mul-int/lit8 v8, v1, 0x3

    add-int/lit8 v8, v8, 0x0

    aget v5, v6, v8

    .line 106
    .restart local v5    # "spanStart":I
    mul-int/lit8 v8, v1, 0x3

    add-int/lit8 v8, v8, 0x1

    aget v4, v6, v8

    .line 107
    .restart local v4    # "spanEnd":I
    invoke-direct {p0, p2, p3, v5, v4}, Landroid/text/SpannableStringInternal;->isOutOfCopyRange(IIII)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 104
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 108
    :cond_5
    if-ge v5, p2, :cond_6

    move v5, p2

    .line 109
    :cond_6
    if-le v4, p3, :cond_7

    move v4, p3

    .line 111
    :cond_7
    iget-object v8, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    aget-object v9, v7, v1

    aput-object v9, v8, v2

    .line 112
    iget-object v8, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    mul-int/lit8 v9, v2, 0x3

    add-int/lit8 v9, v9, 0x0

    sub-int v10, v5, p2

    aput v10, v8, v9

    .line 113
    iget-object v8, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    mul-int/lit8 v9, v2, 0x3

    add-int/lit8 v9, v9, 0x1

    sub-int v10, v4, p2

    aput v10, v8, v9

    .line 114
    iget-object v8, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    mul-int/lit8 v9, v2, 0x3

    add-int/lit8 v9, v9, 0x2

    mul-int/lit8 v10, v1, 0x3

    add-int/lit8 v10, v10, 0x2

    aget v10, v6, v10

    aput v10, v8, v9

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private final copySpans(Landroid/text/Spanned;II)V
    .locals 10
    .param p1, "src"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 56
    const-class v0, Ljava/lang/Object;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    .line 58
    .local v8, "spans":[Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v8

    if-ge v7, v0, :cond_2

    .line 59
    aget-object v0, v8, v7

    invoke-interface {p1, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 60
    .local v9, "st":I
    aget-object v0, v8, v7

    invoke-interface {p1, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 61
    .local v6, "en":I
    aget-object v0, v8, v7

    invoke-interface {p1, v0}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    .line 63
    .local v4, "fl":I
    if-ge v9, p2, :cond_0

    .line 64
    move v9, p2

    .line 65
    :cond_0
    if-le v6, p3, :cond_1

    .line 66
    move v6, p3

    .line 68
    :cond_1
    aget-object v1, v8, v7

    sub-int v2, v9, p2

    sub-int v3, v6, p2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringInternal;->setSpan(Ljava/lang/Object;IIIZ)V

    .line 58
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 70
    .end local v4    # "fl":I
    .end local v6    # "en":I
    .end local v9    # "st":I
    :cond_2
    return-void
.end method

.method private isIndexFollowsNextLine(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 156
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v1

    if-eq p1, v1, :cond_0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private final isOutOfCopyRange(IIII)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "spanStart"    # I
    .param p4, "spanEnd"    # I

    .prologue
    const/4 v0, 0x1

    .line 126
    if-gt p3, p2, :cond_0

    if-ge p4, p1, :cond_1

    :cond_0
    return v0

    .line 127
    :cond_1
    if-eq p3, p4, :cond_3

    if-eq p1, p2, :cond_3

    .line 128
    if-eq p3, p2, :cond_2

    if-ne p4, p1, :cond_3

    :cond_2
    return v0

    .line 130
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private static region(II)Ljava/lang/String;
    .locals 2
    .param p0, "start"    # I
    .param p1, "end"    # I

    .prologue
    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sendSpanAdded(Ljava/lang/Object;II)V
    .locals 5
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 395
    const-class v3, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v3}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/SpanWatcher;

    .line 396
    .local v2, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v2

    .line 398
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 399
    aget-object v4, v2, v0

    move-object v3, p0

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v4, v3, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    :cond_0
    return-void
.end method

.method private sendSpanChanged(Ljava/lang/Object;IIII)V
    .locals 10
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "s"    # I
    .param p3, "e"    # I
    .param p4, "st"    # I
    .param p5, "en"    # I

    .prologue
    .line 413
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 414
    const-class v2, Landroid/text/SpanWatcher;

    .line 413
    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/SpanWatcher;

    .line 415
    .local v9, "recip":[Landroid/text/SpanWatcher;
    array-length v8, v9

    .line 417
    .local v8, "n":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 418
    aget-object v0, v9, v7

    move-object v1, p0

    check-cast v1, Landroid/text/Spannable;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    .line 417
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 420
    :cond_0
    return-void
.end method

.method private sendSpanRemoved(Ljava/lang/Object;II)V
    .locals 5
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 404
    const-class v3, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v3}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/SpanWatcher;

    .line 405
    .local v2, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v2

    .line 407
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 408
    aget-object v4, v2, v0

    move-object v3, p0

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v4, v3, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 410
    :cond_0
    return-void
.end method

.method private setSpan(Ljava/lang/Object;IIIZ)V
    .locals 17
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I
    .param p5, "enforceParagraph"    # Z

    .prologue
    .line 160
    move/from16 v15, p2

    .line 161
    .local v15, "nstart":I
    move/from16 v12, p3

    .line 163
    .local v12, "nend":I
    const-string/jumbo v3, "setSpan"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v3, v1, v2}, Landroid/text/SpannableStringInternal;->checkRange(Ljava/lang/String;II)V

    .line 165
    and-int/lit8 v3, p4, 0x33

    const/16 v4, 0x33

    if-ne v3, v4, :cond_3

    .line 166
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/text/SpannableStringInternal;->isIndexFollowsNextLine(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    if-nez p5, :cond_0

    .line 169
    return-void

    .line 171
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PARAGRAPH span must start at paragraph boundary ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 172
    const-string/jumbo v7, " follows "

    .line 171
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 172
    add-int/lit8 v7, p2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result v7

    .line 171
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 172
    const-string/jumbo v7, ")"

    .line 171
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 175
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/text/SpannableStringInternal;->isIndexFollowsNextLine(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 176
    if-nez p5, :cond_2

    .line 178
    return-void

    .line 180
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PARAGRAPH span must end at paragraph boundary ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 181
    const-string/jumbo v7, " follows "

    .line 180
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 181
    add-int/lit8 v7, p3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result v7

    .line 180
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 181
    const-string/jumbo v7, ")"

    .line 180
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 185
    :cond_3
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 186
    .local v9, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 187
    .local v16, "spans":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 189
    .local v10, "data":[I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v9, :cond_5

    .line 190
    aget-object v3, v16, v11

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_4

    .line 191
    mul-int/lit8 v3, v11, 0x3

    add-int/lit8 v3, v3, 0x0

    aget v5, v10, v3

    .line 192
    .local v5, "ostart":I
    mul-int/lit8 v3, v11, 0x3

    add-int/lit8 v3, v3, 0x1

    aget v6, v10, v3

    .line 194
    .local v6, "oend":I
    mul-int/lit8 v3, v11, 0x3

    add-int/lit8 v3, v3, 0x0

    aput p2, v10, v3

    .line 195
    mul-int/lit8 v3, v11, 0x3

    add-int/lit8 v3, v3, 0x1

    aput p3, v10, v3

    .line 196
    mul-int/lit8 v3, v11, 0x3

    add-int/lit8 v3, v3, 0x2

    aput p4, v10, v3

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v7, p2

    move/from16 v8, p3

    .line 198
    invoke-direct/range {v3 .. v8}, Landroid/text/SpannableStringInternal;->sendSpanChanged(Ljava/lang/Object;IIII)V

    .line 199
    return-void

    .line 189
    .end local v5    # "ostart":I
    .end local v6    # "oend":I
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 203
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length v4, v4

    if-lt v3, v4, :cond_6

    .line 205
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    invoke-static {v3}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v3

    .line 204
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v14

    .line 206
    .local v14, "newtags":[Ljava/lang/Object;
    array-length v3, v14

    mul-int/lit8 v3, v3, 0x3

    new-array v13, v3, [I

    .line 208
    .local v13, "newdata":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v7, v14, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 v4, v4, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v7, v13, v8, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 211
    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 212
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 215
    .end local v13    # "newdata":[I
    .end local v14    # "newtags":[Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    aput-object p1, v3, v4

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x0

    aput p2, v3, v4

    .line 217
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x1

    aput p3, v3, v4

    .line 218
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x2

    aput p4, v3, v4

    .line 219
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 221
    move-object/from16 v0, p0

    instance-of v3, v0, Landroid/text/Spannable;

    if-eqz v3, :cond_7

    .line 222
    invoke-direct/range {p0 .. p3}, Landroid/text/SpannableStringInternal;->sendSpanAdded(Ljava/lang/Object;II)V

    .line 223
    :cond_7
    return-void
.end method


# virtual methods
.method public final charAt(I)C
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 138
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 451
    instance-of v5, p1, Landroid/text/Spanned;

    if-eqz v5, :cond_7

    .line 452
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 451
    if-eqz v5, :cond_7

    move-object v1, p1

    .line 453
    check-cast v1, Landroid/text/Spanned;

    .line 455
    .local v1, "other":Landroid/text/Spanned;
    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v5

    const-class v6, Ljava/lang/Object;

    invoke-interface {v1, v7, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 456
    .local v3, "otherSpans":[Ljava/lang/Object;
    iget v5, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    array-length v6, v3

    if-ne v5, v6, :cond_7

    .line 457
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v5, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    if-ge v0, v5, :cond_6

    .line 458
    iget-object v5, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    aget-object v4, v5, v0

    .line 459
    .local v4, "thisSpan":Ljava/lang/Object;
    aget-object v2, v3, v0

    .line 460
    .local v2, "otherSpan":Ljava/lang/Object;
    if-ne v4, p0, :cond_3

    .line 461
    if-ne v1, v2, :cond_0

    .line 462
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 465
    :cond_0
    return v7

    .line 463
    :cond_1
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 464
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 457
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 467
    :cond_3
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 468
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    if-eq v5, v6, :cond_5

    .line 471
    :cond_4
    :goto_1
    return v7

    .line 469
    :cond_5
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 470
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    if-eq v5, v6, :cond_2

    goto :goto_1

    .line 474
    .end local v2    # "otherSpan":Ljava/lang/Object;
    .end local v4    # "thisSpan":Ljava/lang/Object;
    :cond_6
    const/4 v5, 0x1

    return v5

    .line 477
    .end local v0    # "i":I
    .end local v1    # "other":Landroid/text/Spanned;
    .end local v3    # "otherSpans":[Ljava/lang/Object;
    :cond_7
    return v7
.end method

.method public final getChars(II[CI)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "off"    # I

    .prologue
    .line 148
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    .line 149
    return-void
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 5
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    .line 264
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 265
    .local v0, "count":I
    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 266
    .local v3, "spans":[Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 268
    .local v1, "data":[I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 269
    aget-object v4, v3, v2

    if-ne v4, p1, :cond_0

    .line 270
    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v4, v4, 0x1

    aget v4, v1, v4

    return v4

    .line 268
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 274
    :cond_1
    const/4 v4, -0x1

    return v4
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 6
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 278
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 279
    .local v0, "count":I
    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 280
    .local v3, "spans":[Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 282
    .local v1, "data":[I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 283
    aget-object v4, v3, v2

    if-ne v4, p1, :cond_0

    .line 284
    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v4, v4, 0x2

    aget v4, v1, v4

    return v4

    .line 282
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 288
    :cond_1
    return v5
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 5
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    .line 250
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 251
    .local v0, "count":I
    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 252
    .local v3, "spans":[Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 254
    .local v1, "data":[I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 255
    aget-object v4, v3, v2

    if-ne v4, p1, :cond_0

    .line 256
    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v4, v4, 0x0

    aget v4, v1, v4

    return v4

    .line 254
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 260
    :cond_1
    const/4 v4, -0x1

    return v4
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 18
    .param p1, "queryStart"    # I
    .param p2, "queryEnd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 292
    .local p3, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 294
    .local v2, "count":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 295
    .local v12, "spanCount":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 296
    .local v15, "spans":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 297
    .local v4, "data":[I
    const/4 v10, 0x0

    .line 298
    .local v10, "ret":[Ljava/lang/Object;
    const/4 v11, 0x0

    .line 300
    .local v11, "ret1":Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "i":I
    move v3, v2

    .end local v2    # "count":I
    .end local v10    # "ret":[Ljava/lang/Object;
    .end local v11    # "ret1":Ljava/lang/Object;
    .local v3, "count":I
    :goto_0
    if-ge v5, v12, :cond_a

    .line 301
    mul-int/lit8 v16, v5, 0x3

    add-int/lit8 v16, v16, 0x0

    aget v14, v4, v16

    .line 302
    .local v14, "spanStart":I
    mul-int/lit8 v16, v5, 0x3

    add-int/lit8 v16, v16, 0x1

    aget v13, v4, v16

    .line 304
    .local v13, "spanEnd":I
    move/from16 v0, p2

    if-le v14, v0, :cond_0

    move v2, v3

    .line 300
    .end local v3    # "count":I
    .restart local v2    # "count":I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v3, v2

    .end local v2    # "count":I
    .restart local v3    # "count":I
    goto :goto_0

    .line 307
    :cond_0
    move/from16 v0, p1

    if-ge v13, v0, :cond_1

    move v2, v3

    .line 308
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    .line 311
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_1
    if-eq v14, v13, :cond_3

    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_3

    .line 312
    move/from16 v0, p2

    if-ne v14, v0, :cond_2

    move v2, v3

    .line 313
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    .line 315
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_2
    move/from16 v0, p1

    if-ne v13, v0, :cond_3

    move v2, v3

    .line 316
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    .line 321
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_3
    if-eqz p3, :cond_4

    const-class v16, Ljava/lang/Object;

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_4

    aget-object v16, v15, v5

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v16

    xor-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_4

    move v2, v3

    .line 322
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    .line 325
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_4
    if-nez v3, :cond_5

    .line 326
    aget-object v11, v15, v5

    .line 327
    .restart local v11    # "ret1":Ljava/lang/Object;
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    .line 329
    .end local v2    # "count":I
    .end local v11    # "ret1":Ljava/lang/Object;
    .restart local v3    # "count":I
    :cond_5
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v3, v0, :cond_6

    .line 330
    sub-int v16, v12, v5

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    .line 331
    .local v10, "ret":[Ljava/lang/Object;
    const/16 v16, 0x0

    aput-object v11, v10, v16

    .line 334
    .end local v10    # "ret":[Ljava/lang/Object;
    :cond_6
    mul-int/lit8 v16, v5, 0x3

    add-int/lit8 v16, v16, 0x2

    aget v16, v4, v16

    const/high16 v17, 0xff0000

    and-int v9, v16, v17

    .line 335
    .local v9, "prio":I
    if-eqz v9, :cond_9

    .line 338
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-ge v6, v3, :cond_7

    .line 339
    aget-object v16, v10, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v16

    const/high16 v17, 0xff0000

    and-int v8, v16, v17

    .line 341
    .local v8, "p":I
    if-le v9, v8, :cond_8

    .line 346
    .end local v8    # "p":I
    :cond_7
    add-int/lit8 v16, v6, 0x1

    sub-int v17, v3, v6

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v10, v6, v10, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    aget-object v16, v15, v5

    aput-object v16, v10, v6

    .line 348
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto/16 :goto_1

    .line 338
    .end local v2    # "count":I
    .restart local v3    # "count":I
    .restart local v8    # "p":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 350
    .end local v6    # "j":I
    .end local v8    # "p":I
    :cond_9
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    aget-object v16, v15, v5

    aput-object v16, v10, v3

    goto/16 :goto_1

    .line 355
    .end local v2    # "count":I
    .end local v9    # "prio":I
    .end local v13    # "spanEnd":I
    .end local v14    # "spanStart":I
    .restart local v3    # "count":I
    :cond_a
    if-nez v3, :cond_b

    .line 356
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    return-object v16

    .line 358
    :cond_b
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v3, v0, :cond_c

    .line 359
    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    .line 360
    .restart local v10    # "ret":[Ljava/lang/Object;
    const/16 v16, 0x0

    aput-object v11, v10, v16

    .line 361
    return-object v10

    .line 363
    .end local v10    # "ret":[Ljava/lang/Object;
    :cond_c
    array-length v0, v10

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v3, v0, :cond_d

    .line 364
    return-object v10

    .line 367
    :cond_d
    move-object/from16 v0, p3

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    .line 368
    .local v7, "nret":[Ljava/lang/Object;
    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v10, v0, v7, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 369
    return-object v7
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 483
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 484
    .local v0, "hash":I
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int v0, v3, v4

    .line 485
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    if-ge v1, v3, :cond_1

    .line 486
    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    aget-object v2, v3, v1

    .line 487
    .local v2, "span":Ljava/lang/Object;
    if-eq v2, p0, :cond_0

    .line 488
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int v0, v3, v4

    .line 490
    :cond_0
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    add-int v0, v3, v4

    .line 491
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    add-int v0, v3, v4

    .line 492
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    add-int v0, v3, v4

    .line 485
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 494
    .end local v2    # "span":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public final length()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 7
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "kind"    # Ljava/lang/Class;

    .prologue
    .line 373
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 374
    .local v0, "count":I
    iget-object v4, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 375
    .local v4, "spans":[Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 377
    .local v1, "data":[I
    if-nez p3, :cond_0

    .line 378
    const-class p3, Ljava/lang/Object;

    .line 381
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 382
    mul-int/lit8 v6, v3, 0x3

    add-int/lit8 v6, v6, 0x0

    aget v5, v1, v6

    .line 383
    .local v5, "st":I
    mul-int/lit8 v6, v3, 0x3

    add-int/lit8 v6, v6, 0x1

    aget v2, v1, v6

    .line 385
    .local v2, "en":I
    if-le v5, p1, :cond_1

    if-ge v5, p2, :cond_1

    aget-object v6, v4, v3

    invoke-virtual {p3, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 386
    move p2, v5

    .line 387
    :cond_1
    if-le v2, p1, :cond_2

    if-ge v2, p2, :cond_2

    aget-object v6, v4, v3

    invoke-virtual {p3, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 388
    move p2, v2

    .line 381
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 391
    .end local v2    # "en":I
    .end local v5    # "st":I
    :cond_3
    return p2
.end method

.method removeSpan(Ljava/lang/Object;)V
    .locals 10
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    .line 226
    iget v1, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 227
    .local v1, "count":I
    iget-object v6, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 228
    .local v6, "spans":[Ljava/lang/Object;
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 230
    .local v2, "data":[I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 231
    aget-object v7, v6, v3

    if-ne v7, p1, :cond_0

    .line 232
    mul-int/lit8 v7, v3, 0x3

    add-int/lit8 v7, v7, 0x0

    aget v5, v2, v7

    .line 233
    .local v5, "ostart":I
    mul-int/lit8 v7, v3, 0x3

    add-int/lit8 v7, v7, 0x1

    aget v4, v2, v7

    .line 235
    .local v4, "oend":I
    add-int/lit8 v7, v3, 0x1

    sub-int v0, v1, v7

    .line 237
    .local v0, "c":I
    add-int/lit8 v7, v3, 0x1

    invoke-static {v6, v7, v6, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    add-int/lit8 v7, v3, 0x1

    mul-int/lit8 v7, v7, 0x3

    .line 239
    mul-int/lit8 v8, v3, 0x3

    mul-int/lit8 v9, v0, 0x3

    .line 238
    invoke-static {v2, v7, v2, v8, v9}, Ljava/lang/System;->arraycopy([II[III)V

    .line 241
    iget v7, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 243
    invoke-direct {p0, p1, v5, v4}, Landroid/text/SpannableStringInternal;->sendSpanRemoved(Ljava/lang/Object;II)V

    .line 244
    return-void

    .line 230
    .end local v0    # "c":I
    .end local v4    # "oend":I
    .end local v5    # "ostart":I
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 247
    :cond_1
    return-void
.end method

.method setSpan(Ljava/lang/Object;III)V
    .locals 6
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .prologue
    .line 152
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringInternal;->setSpan(Ljava/lang/Object;IIIZ)V

    .line 153
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    return-object v0
.end method
