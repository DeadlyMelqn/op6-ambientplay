.class public abstract Landroid/text/method/BaseKeyListener;
.super Landroid/text/method/MetaKeyKeyListener;
.source "BaseKeyListener.java"

# interfaces
.implements Landroid/text/method/KeyListener;


# static fields
.field private static final synthetic -android-text-method-TextKeyListener$CapitalizeSwitchesValues:[I = null

.field private static final CARRIAGE_RETURN:I = 0xd

.field private static final LINE_FEED:I = 0xa

.field static final OLD_SEL_START:Ljava/lang/Object;

.field static sCachedPaint:Landroid/graphics/Paint;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# instance fields
.field private final mLock:Ljava/lang/Object;


# direct methods
.method private static synthetic -getandroid-text-method-TextKeyListener$CapitalizeSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/text/method/BaseKeyListener;->-android-text-method-TextKeyListener$CapitalizeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/method/BaseKeyListener;->-android-text-method-TextKeyListener$CapitalizeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-virtual {v1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-virtual {v1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-virtual {v1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-virtual {v1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Landroid/text/method/BaseKeyListener;->-android-text-method-TextKeyListener$CapitalizeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/BaseKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    .line 60
    const/4 v0, 0x0

    sput-object v0, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/text/method/MetaKeyKeyListener;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/text/method/BaseKeyListener;->mLock:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method private static adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I
    .locals 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I
    .param p2, "moveToStart"    # Z

    .prologue
    .line 94
    instance-of v4, p0, Landroid/text/Spanned;

    if-nez v4, :cond_0

    .line 95
    return p1

    :cond_0
    move-object v4, p0

    .line 98
    check-cast v4, Landroid/text/Spanned;

    const-class v5, Landroid/text/style/ReplacementSpan;

    invoke-interface {v4, p1, p1, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ReplacementSpan;

    .line 99
    .local v2, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_3

    move-object v4, p0

    .line 100
    check-cast v4, Landroid/text/Spanned;

    aget-object v5, v2, v1

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .local v3, "start":I
    move-object v4, p0

    .line 101
    check-cast v4, Landroid/text/Spanned;

    aget-object v5, v2, v1

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 103
    .local v0, "end":I
    if-ge v3, p1, :cond_1

    if-le v0, p1, :cond_1

    .line 104
    if-eqz p2, :cond_2

    move p1, v3

    .line 99
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_2
    move p1, v0

    goto :goto_1

    .line 107
    .end local v0    # "end":I
    .end local v3    # "start":I
    :cond_3
    return p1
.end method

.method private backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;
    .param p5, "isForwardDelete"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 322
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    and-int/lit16 v6, v6, -0x70f4

    invoke-static {v6}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 324
    return v9

    .line 328
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 329
    return v8

    .line 333
    :cond_1
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    and-int/lit16 v6, v6, 0x1000

    if-eqz v6, :cond_3

    const/4 v2, 0x1

    .line 334
    .local v2, "isCtrlActive":Z
    :goto_0
    invoke-static {p2, v8, p4}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    move-result v6

    if-ne v6, v8, :cond_4

    const/4 v3, 0x1

    .line 335
    .local v3, "isShiftActive":Z
    :goto_1
    const/4 v6, 0x2

    invoke-static {p2, v6, p4}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    move-result v6

    if-ne v6, v8, :cond_5

    const/4 v1, 0x1

    .line 337
    .local v1, "isAltActive":Z
    :goto_2
    if-eqz v2, :cond_7

    .line 338
    if-nez v1, :cond_2

    if-eqz v3, :cond_6

    .line 340
    :cond_2
    return v9

    .line 333
    .end local v1    # "isAltActive":Z
    .end local v2    # "isCtrlActive":Z
    .end local v3    # "isShiftActive":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "isCtrlActive":Z
    goto :goto_0

    .line 334
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "isShiftActive":Z
    goto :goto_1

    .line 335
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "isAltActive":Z
    goto :goto_2

    .line 342
    :cond_6
    invoke-direct {p0, p1, p2, p5}, Landroid/text/method/BaseKeyListener;->deleteUntilWordBoundary(Landroid/view/View;Landroid/text/Editable;Z)Z

    move-result v6

    return v6

    .line 346
    :cond_7
    if-eqz v1, :cond_8

    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteLine(Landroid/view/View;Landroid/text/Editable;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 347
    return v8

    .line 351
    :cond_8
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    .line 353
    .local v5, "start":I
    if-eqz p5, :cond_b

    .line 355
    instance-of v6, p1, Landroid/widget/TextView;

    if-eqz v6, :cond_9

    .line 356
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 365
    .local v4, "paint":Landroid/graphics/Paint;
    :goto_3
    invoke-static {p2, v5, v4}, Landroid/text/method/BaseKeyListener;->getOffsetForForwardDeleteKey(Ljava/lang/CharSequence;ILandroid/graphics/Paint;)I

    move-result v0

    .line 369
    .end local v4    # "paint":Landroid/graphics/Paint;
    .local v0, "end":I
    :goto_4
    if-eq v5, v0, :cond_c

    .line 370
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-interface {p2, v6, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 371
    return v8

    .line 358
    .end local v0    # "end":I
    .restart local p1    # "view":Landroid/view/View;
    :cond_9
    iget-object v7, p0, Landroid/text/method/BaseKeyListener;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 359
    :try_start_0
    sget-object v6, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    if-nez v6, :cond_a

    .line 360
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    sput-object v6, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    .line 362
    :cond_a
    sget-object v4, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .restart local v4    # "paint":Landroid/graphics/Paint;
    monitor-exit v7

    goto :goto_3

    .line 358
    .end local v4    # "paint":Landroid/graphics/Paint;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 367
    :cond_b
    invoke-static {p2, v5}, Landroid/text/method/BaseKeyListener;->getOffsetForBackspaceKey(Ljava/lang/CharSequence;I)I

    move-result v0

    .restart local v0    # "end":I
    goto :goto_4

    .line 373
    .end local p1    # "view":Landroid/view/View;
    :cond_c
    return v9
.end method

.method private deleteLine(Landroid/view/View;Landroid/text/Editable;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;

    .prologue
    .line 440
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 441
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 442
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_0

    .line 443
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 444
    .local v2, "line":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 445
    .local v3, "start":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 446
    .local v0, "end":I
    if-eq v0, v3, :cond_0

    .line 447
    invoke-interface {p2, v3, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 448
    const/4 v4, 0x1

    return v4

    .line 452
    .end local v0    # "end":I
    .end local v1    # "layout":Landroid/text/Layout;
    .end local v2    # "line":I
    .end local v3    # "start":I
    :cond_0
    const/4 v4, 0x0

    return v4
.end method

.method private deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;

    .prologue
    .line 425
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 426
    .local v1, "selectionStart":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 427
    .local v0, "selectionEnd":I
    if-ge v0, v1, :cond_0

    .line 428
    move v2, v0

    .line 429
    .local v2, "temp":I
    move v0, v1

    .line 430
    move v1, v2

    .line 432
    .end local v2    # "temp":I
    :cond_0
    if-eq v1, v0, :cond_1

    .line 433
    invoke-interface {p2, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 434
    const/4 v3, 0x1

    return v3

    .line 436
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private deleteUntilWordBoundary(Landroid/view/View;Landroid/text/Editable;Z)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "isForwardDelete"    # Z

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 377
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 380
    .local v0, "currentCursorOffset":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    if-eq v0, v4, :cond_0

    .line 381
    return v5

    .line 385
    :cond_0
    if-nez p3, :cond_2

    if-nez v0, :cond_2

    .line 387
    :cond_1
    return v5

    .line 386
    :cond_2
    if-eqz p3, :cond_3

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v4

    if-eq v0, v4, :cond_1

    .line 390
    :cond_3
    const/4 v3, 0x0

    .line 391
    .local v3, "wordIterator":Landroid/text/method/WordIterator;
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_4

    .line 392
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v3

    .line 395
    .end local v3    # "wordIterator":Landroid/text/method/WordIterator;
    :cond_4
    if-nez v3, :cond_5

    .line 399
    new-instance v3, Landroid/text/method/WordIterator;

    invoke-direct {v3}, Landroid/text/method/WordIterator;-><init>()V

    .line 405
    :cond_5
    if-eqz p3, :cond_7

    .line 406
    move v1, v0

    .line 407
    .local v1, "deleteFrom":I
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, p2, v0, v4}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 408
    invoke-virtual {v3, v0}, Landroid/text/method/WordIterator;->following(I)I

    move-result v2

    .line 409
    .local v2, "deleteTo":I
    if-ne v2, v6, :cond_6

    .line 410
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v2

    .line 420
    :cond_6
    :goto_0
    invoke-interface {p2, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 421
    const/4 v4, 0x1

    return v4

    .line 413
    .end local v1    # "deleteFrom":I
    .end local v2    # "deleteTo":I
    :cond_7
    move v2, v0

    .line 414
    .restart local v2    # "deleteTo":I
    invoke-virtual {v3, p2, v5, v0}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 415
    invoke-virtual {v3, v0}, Landroid/text/method/WordIterator;->preceding(I)I

    move-result v1

    .line 416
    .restart local v1    # "deleteFrom":I
    if-ne v1, v6, :cond_6

    .line 417
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getOffsetForBackspaceKey(Ljava/lang/CharSequence;I)I
    .locals 25
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .prologue
    .line 112
    const/16 v22, 0x1

    move/from16 v0, p1

    move/from16 v1, v22

    if-gt v0, v1, :cond_0

    .line 113
    const/16 v22, 0x0

    return v22

    .line 117
    :cond_0
    const/16 v16, 0x0

    .line 120
    .local v16, "STATE_START":I
    const/4 v14, 0x1

    .line 123
    .local v14, "STATE_LF":I
    const/4 v5, 0x2

    .line 125
    .local v5, "STATE_BEFORE_KEYCAP":I
    const/4 v8, 0x3

    .line 128
    .local v8, "STATE_BEFORE_VS_AND_KEYCAP":I
    const/4 v4, 0x4

    .line 130
    .local v4, "STATE_BEFORE_EMOJI_MODIFIER":I
    const/4 v7, 0x5

    .line 133
    .local v7, "STATE_BEFORE_VS_AND_EMOJI_MODIFIER":I
    const/4 v6, 0x6

    .line 136
    .local v6, "STATE_BEFORE_VS":I
    const/4 v3, 0x7

    .line 138
    .local v3, "STATE_BEFORE_EMOJI":I
    const/16 v10, 0x8

    .line 141
    .local v10, "STATE_BEFORE_ZWJ":I
    const/16 v9, 0x9

    .line 144
    .local v9, "STATE_BEFORE_VS_AND_ZWJ":I
    const/16 v15, 0xa

    .line 146
    .local v15, "STATE_ODD_NUMBERED_RIS":I
    const/16 v11, 0xb

    .line 149
    .local v11, "STATE_EVEN_NUMBERED_RIS":I
    const/16 v13, 0xc

    .line 152
    .local v13, "STATE_IN_TAG_SEQUENCE":I
    const/16 v12, 0xd

    .line 154
    .local v12, "STATE_FINISHED":I
    const/16 v18, 0x0

    .line 155
    .local v18, "deleteCharCount":I
    const/16 v19, 0x0

    .line 157
    .local v19, "lastSeenVSCharCount":I
    const/16 v20, 0x0

    .line 159
    .local v20, "state":I
    move/from16 v21, p1

    .line 161
    .local v21, "tmpOffset":I
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v17

    .line 162
    .local v17, "codePoint":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v22

    sub-int v21, v21, v22

    .line 164
    packed-switch v20, :pswitch_data_0

    .line 298
    new-instance v22, Ljava/lang/IllegalArgumentException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "state "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " is unknown"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 166
    :pswitch_0
    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v18

    .line 167
    const/16 v22, 0xa

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 168
    const/16 v20, 0x1

    .line 300
    :goto_0
    if-lez v21, :cond_2

    const/16 v22, 0xd

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 302
    :cond_2
    sub-int v22, p1, v18

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/text/method/BaseKeyListener;->adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I

    move-result v22

    return v22

    .line 169
    :cond_3
    invoke-static/range {v17 .. v17}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 170
    const/16 v20, 0x6

    goto :goto_0

    .line 171
    :cond_4
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 172
    const/16 v20, 0xa

    goto :goto_0

    .line 173
    :cond_5
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isEmojiModifier(I)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 174
    const/16 v20, 0x4

    goto :goto_0

    .line 175
    :cond_6
    sget v22, Landroid/text/Emoji;->COMBINING_ENCLOSING_KEYCAP:I

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 176
    const/16 v20, 0x2

    goto :goto_0

    .line 177
    :cond_7
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 178
    const/16 v20, 0x7

    goto :goto_0

    .line 179
    :cond_8
    sget v22, Landroid/text/Emoji;->CANCEL_TAG:I

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 180
    const/16 v20, 0xc

    goto :goto_0

    .line 182
    :cond_9
    const/16 v20, 0xd

    goto :goto_0

    .line 186
    :pswitch_1
    const/16 v22, 0xd

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 187
    add-int/lit8 v18, v18, 0x1

    .line 189
    :cond_a
    const/16 v20, 0xd

    .line 190
    goto :goto_0

    .line 192
    :pswitch_2
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 193
    add-int/lit8 v18, v18, 0x2

    .line 194
    const/16 v20, 0xb

    goto :goto_0

    .line 196
    :cond_b
    const/16 v20, 0xd

    goto :goto_0

    .line 200
    :pswitch_3
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 201
    add-int/lit8 v18, v18, -0x2

    .line 202
    const/16 v20, 0xa

    goto :goto_0

    .line 204
    :cond_c
    const/16 v20, 0xd

    goto :goto_0

    .line 208
    :pswitch_4
    invoke-static/range {v17 .. v17}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 209
    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v19

    .line 210
    const/16 v20, 0x3

    .line 211
    goto/16 :goto_0

    .line 214
    :cond_d
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isKeycapBase(I)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 215
    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v22

    add-int v18, v18, v22

    .line 217
    :cond_e
    const/16 v20, 0xd

    .line 218
    goto/16 :goto_0

    .line 220
    :pswitch_5
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isKeycapBase(I)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 221
    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v22

    add-int v22, v22, v19

    add-int v18, v18, v22

    .line 223
    :cond_f
    const/16 v20, 0xd

    .line 224
    goto/16 :goto_0

    .line 226
    :pswitch_6
    invoke-static/range {v17 .. v17}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 227
    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v19

    .line 228
    const/16 v20, 0x5

    .line 229
    goto/16 :goto_0

    .line 230
    :cond_10
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isEmojiModifierBase(I)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 231
    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v22

    add-int v18, v18, v22

    .line 233
    :cond_11
    const/16 v20, 0xd

    .line 234
    goto/16 :goto_0

    .line 236
    :pswitch_7
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isEmojiModifierBase(I)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 237
    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v22

    add-int v22, v22, v19

    add-int v18, v18, v22

    .line 239
    :cond_12
    const/16 v20, 0xd

    .line 240
    goto/16 :goto_0

    .line 242
    :pswitch_8
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 243
    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v22

    add-int v18, v18, v22

    .line 244
    const/16 v20, 0x7

    .line 245
    goto/16 :goto_0

    .line 248
    :cond_13
    invoke-static/range {v17 .. v17}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v22

    if-nez v22, :cond_14

    .line 249
    invoke-static/range {v17 .. v17}, Landroid/icu/lang/UCharacter;->getCombiningClass(I)I

    move-result v22

    if-nez v22, :cond_14

    .line 250
    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v22

    add-int v18, v18, v22

    .line 252
    :cond_14
    const/16 v20, 0xd

    .line 253
    goto/16 :goto_0

    .line 255
    :pswitch_9
    sget v22, Landroid/text/Emoji;->ZERO_WIDTH_JOINER:I

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_15

    .line 256
    const/16 v20, 0x8

    goto/16 :goto_0

    .line 258
    :cond_15
    const/16 v20, 0xd

    goto/16 :goto_0

    .line 262
    :pswitch_a
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v22

    if-eqz v22, :cond_17

    .line 263
    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    add-int v18, v18, v22

    .line 264
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isEmojiModifier(I)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 265
    const/16 v20, 0x4

    goto/16 :goto_0

    :cond_16
    const/16 v20, 0x7

    goto/16 :goto_0

    .line 266
    :cond_17
    invoke-static/range {v17 .. v17}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v22

    if-eqz v22, :cond_18

    .line 267
    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v19

    .line 268
    const/16 v20, 0x9

    goto/16 :goto_0

    .line 270
    :cond_18
    const/16 v20, 0xd

    goto/16 :goto_0

    .line 274
    :pswitch_b
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v22

    if-eqz v22, :cond_19

    .line 276
    add-int/lit8 v22, v19, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v23

    add-int v22, v22, v23

    add-int v18, v18, v22

    .line 277
    const/16 v19, 0x0

    .line 278
    const/16 v20, 0x7

    goto/16 :goto_0

    .line 280
    :cond_19
    const/16 v20, 0xd

    goto/16 :goto_0

    .line 284
    :pswitch_c
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isTagSpecChar(I)Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 285
    add-int/lit8 v18, v18, 0x2

    goto/16 :goto_0

    .line 287
    :cond_1a
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v22

    if-eqz v22, :cond_1b

    .line 288
    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v22

    add-int v18, v18, v22

    .line 289
    const/16 v20, 0xd

    goto/16 :goto_0

    .line 292
    :cond_1b
    const/16 v18, 0x2

    .line 293
    const/16 v20, 0xd

    goto/16 :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_2
        :pswitch_3
        :pswitch_c
    .end packed-switch
.end method

.method private static getOffsetForForwardDeleteKey(Ljava/lang/CharSequence;ILandroid/graphics/Paint;)I
    .locals 7
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v4, 0x0

    .line 307
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 309
    .local v3, "len":I
    add-int/lit8 v0, v3, -0x1

    if-lt p1, v0, :cond_0

    .line 310
    return v3

    :cond_0
    move-object v0, p2

    move-object v1, p0

    move v2, p1

    move v5, p1

    move v6, v4

    .line 313
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/CharSequence;IIIII)I

    move-result p1

    .line 316
    invoke-static {p0, p1, v4}, Landroid/text/method/BaseKeyListener;->adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I

    move-result v0

    return v0
.end method

.method private static isVariationSelector(I)Z
    .locals 1
    .param p0, "codepoint"    # I

    .prologue
    .line 88
    const/16 v0, 0x24

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method static makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I
    .locals 3
    .param p0, "caps"    # Landroid/text/method/TextKeyListener$Capitalize;
    .param p1, "autoText"    # Z

    .prologue
    .line 456
    const/4 v0, 0x1

    .line 457
    .local v0, "contentType":I
    invoke-static {}, Landroid/text/method/BaseKeyListener;->-getandroid-text-method-TextKeyListener$CapitalizeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 468
    :goto_0
    if-eqz p1, :cond_0

    .line 469
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 471
    :cond_0
    return v0

    .line 459
    :pswitch_0
    const/16 v0, 0x1001

    .line 460
    goto :goto_0

    .line 462
    :pswitch_1
    const/16 v0, 0x2001

    .line 463
    goto :goto_0

    .line 465
    :pswitch_2
    const/16 v0, 0x4001

    .line 466
    goto :goto_0

    .line 457
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 71
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 83
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 477
    sparse-switch p3, :sswitch_data_0

    .line 485
    const/4 v0, 0x0

    .line 489
    :goto_0
    if-eqz v0, :cond_0

    .line 490
    invoke-static {p2}, Landroid/text/method/BaseKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 491
    const/4 v1, 0x1

    return v1

    .line 479
    :sswitch_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .local v0, "handled":Z
    goto :goto_0

    .line 482
    .end local v0    # "handled":Z
    :sswitch_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .restart local v0    # "handled":Z
    goto :goto_0

    .line 494
    .end local v0    # "handled":Z
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/MetaKeyKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 477
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_0
        0x70 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    .line 502
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 503
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    if-eqz v4, :cond_1

    .line 505
    :cond_0
    return v6

    .line 508
    :cond_1
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 509
    .local v1, "selectionStart":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 510
    .local v0, "selectionEnd":I
    if-ge v0, v1, :cond_2

    .line 511
    move v2, v0

    .line 512
    .local v2, "temp":I
    move v0, v1

    .line 513
    move v1, v2

    .line 516
    .end local v2    # "temp":I
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v3

    .line 517
    .local v3, "text":Ljava/lang/CharSequence;
    if-nez v3, :cond_3

    .line 518
    return v6

    .line 521
    :cond_3
    invoke-interface {p2, v1, v0, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 522
    const/4 v4, 0x1

    return v4
.end method
