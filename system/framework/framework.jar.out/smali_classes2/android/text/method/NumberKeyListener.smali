.class public abstract Landroid/text/method/NumberKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "NumberKeyListener.java"

# interfaces
.implements Landroid/text/InputFilter;


# static fields
.field private static final DATE_TIME_FORMAT_SYMBOLS:Ljava/lang/String; = "GyYuUrQqMLlwWdDFgEecabBhHKkjJCmsSAzZOvVXx"

.field private static final SINGLE_QUOTE:C = '\''


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    return-void
.end method

.method static addAmPmChars(Ljava/util/Collection;Ljava/util/Locale;)Z
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/Locale;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    const/4 v5, 0x0

    .line 228
    if-nez p1, :cond_0

    .line 229
    return v5

    .line 231
    :cond_0
    invoke-static {p1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v4

    iget-object v0, v4, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    .line 232
    .local v0, "amPm":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_3

    .line 233
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 234
    aget-object v4, v0, v2

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 235
    .local v1, "ch":C
    invoke-static {v1}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 236
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 233
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 238
    :cond_1
    return v5

    .line 232
    .end local v1    # "ch":C
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    .end local v3    # "j":I
    :cond_3
    const/4 v4, 0x1

    return v4
.end method

.method static addDigits(Ljava/util/Collection;Ljava/util/Locale;)Z
    .locals 5
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/Locale;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 154
    if-nez p1, :cond_0

    .line 155
    return v3

    .line 157
    :cond_0
    invoke-static {p1}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "digits":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    .line 159
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 160
    return v3

    .line 162
    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :cond_2
    return v4
.end method

.method static addFormatCharsFromSkeleton(Ljava/util/Collection;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "skeleton"    # Ljava/lang/String;
    .param p3, "symbolsToIgnore"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    const/16 v7, 0x27

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 176
    if-nez p1, :cond_0

    .line 177
    return v5

    .line 179
    :cond_0
    invoke-static {p1, p2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "pattern":Ljava/lang/String;
    const/4 v2, 0x1

    .line 181
    .local v2, "outsideQuotes":Z
    const/4 v1, 0x0

    .end local v2    # "outsideQuotes":Z
    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 182
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 183
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 184
    return v5

    .line 185
    :cond_1
    if-ne v0, v7, :cond_3

    .line 186
    xor-int/lit8 v2, v2, 0x1

    .line 189
    .local v2, "outsideQuotes":Z
    if-eqz v1, :cond_2

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v7, :cond_3

    .line 181
    .end local v2    # "outsideQuotes":Z
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    :cond_3
    if-eqz v2, :cond_4

    .line 195
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 198
    const-string/jumbo v4, "GyYuUrQqMLlwWdDFgEecabBhHKkjJCmsSAzZOvVXx"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v6, :cond_4

    .line 200
    return v5

    .line 205
    :cond_4
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 207
    .end local v0    # "ch":C
    :cond_5
    const/4 v4, 0x1

    return v4
.end method

.method static addFormatCharsFromSkeletons(Ljava/util/Collection;Ljava/util/Locale;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "skeletons"    # [Ljava/lang/String;
    .param p3, "symbolsToIgnore"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/Locale;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 216
    aget-object v2, p2, v0

    .line 215
    invoke-static {p0, p1, v2, p3}, Landroid/text/method/NumberKeyListener;->addFormatCharsFromSkeleton(Ljava/util/Collection;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 217
    .local v1, "success":Z
    if-nez v1, :cond_0

    .line 218
    const/4 v2, 0x0

    return v2

    .line 214
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    .end local v1    # "success":Z
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method static collectionToArray(Ljava/util/Collection;)[C
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Character;",
            ">;)[C"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "chars":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v4, v5, [C

    .line 249
    .local v4, "result":[C
    const/4 v2, 0x0

    .line 250
    .local v2, "i":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ch$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    .line 251
    .local v0, "ch":Ljava/lang/Character;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v5

    aput-char v5, v4, v2

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 253
    .end local v0    # "ch":Ljava/lang/Character;
    :cond_0
    return-object v4
.end method

.method protected static ok([CC)Z
    .locals 3
    .param p0, "accept"    # [C
    .param p1, "c"    # C

    .prologue
    const/4 v2, 0x0

    .line 96
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 97
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 98
    const/4 v1, 0x1

    return v1

    .line 96
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 102
    :cond_1
    return v2
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/text/method/NumberKeyListener;->getAcceptedChars()[C

    move-result-object v0

    .line 60
    .local v0, "accept":[C
    const/4 v1, 0x0

    .line 63
    .local v1, "filter":Z
    move v3, p2

    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_0

    .line 64
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v0, v6}, Landroid/text/method/NumberKeyListener;->ok([CC)Z

    move-result v6

    if-nez v6, :cond_1

    .line 69
    :cond_0
    if-ne v3, p3, :cond_2

    .line 71
    const/4 v6, 0x0

    return-object v6

    .line 63
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    :cond_2
    sub-int v6, p3, p2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 76
    const-string/jumbo v6, ""

    return-object v6

    .line 80
    :cond_3
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 81
    .local v2, "filtered":Landroid/text/SpannableStringBuilder;
    sub-int/2addr v3, p2

    .line 82
    sub-int/2addr p3, p2

    .line 84
    sub-int v5, p3, p2

    .line 86
    .local v5, "len":I
    add-int/lit8 v4, p3, -0x1

    .local v4, "j":I
    :goto_1
    if-lt v4, v3, :cond_5

    .line 87
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v0, v6}, Landroid/text/method/NumberKeyListener;->ok([CC)Z

    move-result v6

    if-nez v6, :cond_4

    .line 88
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v2, v4, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 86
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 92
    :cond_5
    return-object v2
.end method

.method protected abstract getAcceptedChars()[C
.end method

.method protected lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "content"    # Landroid/text/Spannable;

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/text/method/NumberKeyListener;->getAcceptedChars()[C

    move-result-object v0

    invoke-static {p2, p1}, Landroid/text/method/NumberKeyListener;->getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v7, 0x30

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 111
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 112
    .local v0, "a":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 114
    .local v1, "b":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 115
    .local v5, "selStart":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 118
    .local v4, "selEnd":I
    if-ltz v5, :cond_0

    if-gez v4, :cond_1

    .line 119
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 120
    invoke-static {p2, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 123
    :cond_1
    if-eqz p4, :cond_3

    invoke-virtual {p0, p4, p2}, Landroid/text/method/NumberKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v2

    .line 124
    .local v2, "i":I
    :goto_0
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    .line 125
    .local v3, "repeatCount":I
    :goto_1
    if-nez v3, :cond_5

    .line 126
    if-eqz v2, :cond_6

    .line 127
    if-eq v5, v4, :cond_2

    .line 128
    invoke-static {p2, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 131
    :cond_2
    int-to-char v6, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v5, v4, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 133
    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 134
    return v8

    .line 123
    .end local v2    # "i":I
    .end local v3    # "repeatCount":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "i":I
    goto :goto_0

    .line 124
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "repeatCount":I
    goto :goto_1

    .line 136
    :cond_5
    if-ne v2, v7, :cond_6

    if-ne v3, v8, :cond_6

    .line 139
    if-ne v5, v4, :cond_6

    if-lez v4, :cond_6

    .line 140
    add-int/lit8 v6, v5, -0x1

    invoke-interface {p2, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_6

    .line 141
    add-int/lit8 v6, v5, -0x1

    const/16 v7, 0x2b

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v6, v4, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 142
    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 143
    return v8

    .line 147
    :cond_6
    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 148
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v6

    return v6
.end method
