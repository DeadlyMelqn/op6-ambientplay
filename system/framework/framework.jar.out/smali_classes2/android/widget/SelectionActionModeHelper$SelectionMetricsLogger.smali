.class final Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;
.super Ljava/lang/Object;
.source "SelectionActionModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SelectionActionModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SelectionMetricsLogger"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SelectionMetricsLogger"

.field private static final PATTERN_WHITESPACE:Ljava/util/regex/Pattern;


# instance fields
.field private final mDelegate:Landroid/view/textclassifier/logging/SmartSelectionEventTracker;

.field private final mEditTextLogger:Z

.field private mStartIndex:I

.field private mText:Ljava/lang/String;

.field private final mWordIterator:Ljava/text/BreakIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 388
    const-string/jumbo v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

    .line 385
    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    invoke-virtual {p1}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    const/4 v0, 0x3

    .line 401
    .local v0, "widgetType":I
    :goto_0
    new-instance v1, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mDelegate:Landroid/view/textclassifier/logging/SmartSelectionEventTracker;

    .line 402
    invoke-virtual {p1}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mEditTextLogger:Z

    .line 403
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mWordIterator:Ljava/text/BreakIterator;

    .line 404
    return-void

    .line 400
    .end local v0    # "widgetType":I
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "widgetType":I
    goto :goto_0
.end method

.method private countWordsBackward(I)I
    .locals 4
    .param p1, "from"    # I

    .prologue
    .line 501
    iget v3, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    if-lt p1, v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 502
    const/4 v2, 0x0

    .line 503
    .local v2, "wordCount":I
    move v0, p1

    .line 504
    .local v0, "offset":I
    :goto_1
    iget v3, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    if-le v0, v3, :cond_2

    .line 505
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mWordIterator:Ljava/text/BreakIterator;

    invoke-virtual {v3, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v1

    .line 506
    .local v1, "start":I
    invoke-direct {p0, v1, v0}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->isWhitespace(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 507
    add-int/lit8 v2, v2, 0x1

    .line 509
    :cond_0
    move v0, v1

    goto :goto_1

    .line 501
    .end local v0    # "offset":I
    .end local v1    # "start":I
    .end local v2    # "wordCount":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 511
    .restart local v0    # "offset":I
    .restart local v2    # "wordCount":I
    :cond_2
    return v2
.end method

.method private countWordsForward(I)I
    .locals 4
    .param p1, "from"    # I

    .prologue
    .line 515
    iget v3, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    if-gt p1, v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 516
    const/4 v2, 0x0

    .line 517
    .local v2, "wordCount":I
    move v1, p1

    .line 518
    .local v1, "offset":I
    :goto_1
    iget v3, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    if-ge v1, v3, :cond_2

    .line 519
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mWordIterator:Ljava/text/BreakIterator;

    invoke-virtual {v3, v1}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    .line 520
    .local v0, "end":I
    invoke-direct {p0, v1, v0}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->isWhitespace(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 521
    add-int/lit8 v2, v2, 0x1

    .line 523
    :cond_0
    move v1, v0

    goto :goto_1

    .line 515
    .end local v0    # "end":I
    .end local v1    # "offset":I
    .end local v2    # "wordCount":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 525
    .restart local v1    # "offset":I
    .restart local v2    # "wordCount":I
    :cond_2
    return v2
.end method

.method private getWordDelta(II)[I
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 470
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 472
    .local v0, "wordIndices":[I
    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    if-ne p1, v1, :cond_1

    .line 473
    aput v3, v0, v3

    .line 489
    :cond_0
    :goto_0
    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    if-ne p2, v1, :cond_3

    .line 490
    aput v3, v0, v4

    .line 497
    :goto_1
    return-object v0

    .line 474
    :cond_1
    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    if-ge p1, v1, :cond_2

    .line 475
    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->countWordsForward(I)I

    move-result v1

    neg-int v1, v1

    aput v1, v0, v3

    goto :goto_0

    .line 477
    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->countWordsBackward(I)I

    move-result v1

    aput v1, v0, v3

    .line 480
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mWordIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, p1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 482
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mWordIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v1

    .line 483
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mWordIterator:Ljava/text/BreakIterator;

    invoke-virtual {v2, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result v2

    .line 481
    invoke-direct {p0, v1, v2}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->isWhitespace(II)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 480
    if-eqz v1, :cond_0

    .line 485
    aget v1, v0, v3

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v3

    goto :goto_0

    .line 491
    :cond_3
    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    if-ge p2, v1, :cond_4

    .line 492
    invoke-direct {p0, p2}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->countWordsForward(I)I

    move-result v1

    neg-int v1, v1

    aput v1, v0, v4

    goto :goto_1

    .line 494
    :cond_4
    invoke-direct {p0, p2}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->countWordsBackward(I)I

    move-result v1

    aput v1, v0, v4

    goto :goto_1
.end method

.method private isWhitespace(II)Z
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 529
    sget-object v0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public isEditTextLogger()Z
    .locals 1

    .prologue
    .line 466
    iget-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mEditTextLogger:Z

    return v0
.end method

.method public logSelectionAction(IIILandroid/view/textclassifier/TextClassification;)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "action"    # I
    .param p4, "classification"    # Landroid/view/textclassifier/TextClassification;

    .prologue
    .line 449
    :try_start_0
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, "start"

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 450
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, "end"

    invoke-static {p2, p1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 451
    invoke-direct {p0, p1, p2}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->getWordDelta(II)[I

    move-result-object v1

    .line 452
    .local v1, "wordIndices":[I
    if-eqz p4, :cond_0

    .line 453
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mDelegate:Landroid/view/textclassifier/logging/SmartSelectionEventTracker;

    .line 454
    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    .line 453
    invoke-static {v3, v4, p3, p4}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->selectionAction(IIILandroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->logEvent(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)V

    .line 463
    .end local v1    # "wordIndices":[I
    :goto_0
    return-void

    .line 456
    .restart local v1    # "wordIndices":[I
    :cond_0
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mDelegate:Landroid/view/textclassifier/logging/SmartSelectionEventTracker;

    .line 457
    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    .line 456
    invoke-static {v3, v4, p3}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->selectionAction(III)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->logEvent(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 459
    .end local v1    # "wordIndices":[I
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SelectionMetricsLogger"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public logSelectionModified(IILandroid/view/textclassifier/TextClassification;Landroid/view/textclassifier/TextSelection;)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "classification"    # Landroid/view/textclassifier/TextClassification;
    .param p4, "selection"    # Landroid/view/textclassifier/TextSelection;

    .prologue
    .line 425
    :try_start_0
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, "start"

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 426
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, "end"

    invoke-static {p2, p1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 427
    invoke-direct {p0, p1, p2}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->getWordDelta(II)[I

    move-result-object v1

    .line 428
    .local v1, "wordIndices":[I
    if-eqz p4, :cond_0

    .line 429
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mDelegate:Landroid/view/textclassifier/logging/SmartSelectionEventTracker;

    .line 430
    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    .line 429
    invoke-static {v3, v4, p4}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->selectionModified(IILandroid/view/textclassifier/TextSelection;)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->logEvent(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)V

    .line 442
    .end local v1    # "wordIndices":[I
    :goto_0
    return-void

    .line 431
    .restart local v1    # "wordIndices":[I
    :cond_0
    if-eqz p3, :cond_1

    .line 432
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mDelegate:Landroid/view/textclassifier/logging/SmartSelectionEventTracker;

    .line 433
    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    .line 432
    invoke-static {v3, v4, p3}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->selectionModified(IILandroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->logEvent(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 438
    .end local v1    # "wordIndices":[I
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SelectionMetricsLogger"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 435
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "wordIndices":[I
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mDelegate:Landroid/view/textclassifier/logging/SmartSelectionEventTracker;

    .line 436
    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    .line 435
    invoke-static {v3, v4}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->selectionModified(II)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->logEvent(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public logSelectionStarted(Ljava/lang/CharSequence;I)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "index"    # I

    .prologue
    .line 408
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-string/jumbo v2, "index"

    const/4 v3, 0x0

    invoke-static {p2, v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 410
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 411
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    .line 413
    :cond_1
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mWordIterator:Ljava/text/BreakIterator;

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 414
    iput p2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    .line 415
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mDelegate:Landroid/view/textclassifier/logging/SmartSelectionEventTracker;

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->selectionStarted(I)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->logEvent(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :goto_0
    return-void

    .line 416
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SelectionMetricsLogger"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
