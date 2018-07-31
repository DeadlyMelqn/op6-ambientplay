.class Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;
.super Ljava/lang/Object;
.source "SpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textservice/SpellCheckerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SentenceLevelAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;,
        Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;
    }
.end annotation


# static fields
.field public static final EMPTY_SENTENCE_SUGGESTIONS_INFOS:[Landroid/view/textservice/SentenceSuggestionsInfo;

.field private static final EMPTY_SUGGESTIONS_INFO:Landroid/view/textservice/SuggestionsInfo;


# instance fields
.field private final mWordIterator:Landroid/text/method/WordIterator;


# direct methods
.method static synthetic -wrap0(Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;
    .locals 1
    .param p0, "-this"    # Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;
    .param p1, "originalTextInfo"    # Landroid/view/textservice/TextInfo;

    .prologue
    invoke-direct {p0, p1}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->getSplitWords(Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 358
    new-array v0, v2, [Landroid/view/textservice/SentenceSuggestionsInfo;

    .line 357
    sput-object v0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SENTENCE_SUGGESTIONS_INFOS:[Landroid/view/textservice/SentenceSuggestionsInfo;

    .line 359
    new-instance v0, Landroid/view/textservice/SuggestionsInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    sput-object v0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SUGGESTIONS_INFO:Landroid/view/textservice/SuggestionsInfo;

    .line 356
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    new-instance v0, Landroid/text/method/WordIterator;

    invoke-direct {v0, p1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->mWordIterator:Landroid/text/method/WordIterator;

    .line 391
    return-void
.end method

.method private getSplitWords(Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;
    .locals 14
    .param p1, "originalTextInfo"    # Landroid/view/textservice/TextInfo;

    .prologue
    const/4 v13, -0x1

    const/4 v2, 0x0

    .line 394
    iget-object v11, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->mWordIterator:Landroid/text/method/WordIterator;

    .line 395
    .local v11, "wordIterator":Landroid/text/method/WordIterator;
    invoke-virtual {p1}, Landroid/view/textservice/TextInfo;->getText()Ljava/lang/String;

    move-result-object v7

    .line 396
    .local v7, "originalText":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/view/textservice/TextInfo;->getCookie()I

    move-result v4

    .line 397
    .local v4, "cookie":I
    const/4 v8, 0x0

    .line 398
    .local v8, "start":I
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 399
    .local v6, "end":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .local v10, "wordItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;>;"
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v11, v7, v2, v3}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 401
    invoke-virtual {v11, v2}, Landroid/text/method/WordIterator;->following(I)I

    move-result v9

    .line 402
    .local v9, "wordEnd":I
    invoke-virtual {v11, v9}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v12

    .line 407
    .local v12, "wordStart":I
    :goto_0
    if-gt v12, v6, :cond_1

    if-eq v9, v13, :cond_1

    .line 408
    if-eq v12, v13, :cond_1

    .line 409
    if-ltz v9, :cond_0

    if-le v9, v12, :cond_0

    .line 410
    invoke-interface {v7, v12, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 411
    .local v1, "query":Ljava/lang/CharSequence;
    new-instance v0, Landroid/view/textservice/TextInfo;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 412
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    .line 411
    invoke-direct/range {v0 .. v5}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/CharSequence;IIII)V

    .line 413
    .local v0, "ti":Landroid/view/textservice/TextInfo;
    new-instance v3, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;

    invoke-direct {v3, v0, v12, v9}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;-><init>(Landroid/view/textservice/TextInfo;II)V

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    .end local v0    # "ti":Landroid/view/textservice/TextInfo;
    .end local v1    # "query":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {v11, v9}, Landroid/text/method/WordIterator;->following(I)I

    move-result v9

    .line 419
    if-ne v9, v13, :cond_2

    .line 424
    :cond_1
    new-instance v2, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;

    invoke-direct {v2, p1, v10}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;-><init>(Landroid/view/textservice/TextInfo;Ljava/util/ArrayList;)V

    return-object v2

    .line 422
    :cond_2
    invoke-virtual {v11, v9}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v12

    goto :goto_0
.end method

.method public static reconstructSuggestions(Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;[Landroid/view/textservice/SuggestionsInfo;)Landroid/view/textservice/SentenceSuggestionsInfo;
    .locals 13
    .param p0, "originalTextInfoParams"    # Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;
    .param p1, "results"    # [Landroid/view/textservice/SuggestionsInfo;

    .prologue
    const/4 v12, 0x0

    .line 429
    if-eqz p1, :cond_0

    array-length v11, p1

    if-nez v11, :cond_1

    .line 430
    :cond_0
    return-object v12

    .line 435
    :cond_1
    if-nez p0, :cond_2

    .line 439
    return-object v12

    .line 441
    :cond_2
    iget-object v11, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mOriginalTextInfo:Landroid/view/textservice/TextInfo;

    invoke-virtual {v11}, Landroid/view/textservice/TextInfo;->getCookie()I

    move-result v6

    .line 443
    .local v6, "originalCookie":I
    iget-object v11, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mOriginalTextInfo:Landroid/view/textservice/TextInfo;

    invoke-virtual {v11}, Landroid/view/textservice/TextInfo;->getSequence()I

    move-result v7

    .line 445
    .local v7, "originalSequence":I
    iget v8, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mSize:I

    .line 446
    .local v8, "querySize":I
    new-array v5, v8, [I

    .line 447
    .local v5, "offsets":[I
    new-array v4, v8, [I

    .line 448
    .local v4, "lengths":[I
    new-array v9, v8, [Landroid/view/textservice/SuggestionsInfo;

    .line 449
    .local v9, "reconstructedSuggestions":[Landroid/view/textservice/SuggestionsInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_6

    .line 450
    iget-object v11, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;

    .line 451
    .local v2, "item":Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;
    const/4 v10, 0x0

    .line 452
    .local v10, "result":Landroid/view/textservice/SuggestionsInfo;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v11, p1

    if-ge v3, v11, :cond_3

    .line 453
    aget-object v0, p1, v3

    .line 454
    .local v0, "cur":Landroid/view/textservice/SuggestionsInfo;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/textservice/SuggestionsInfo;->getSequence()I

    move-result v11

    iget-object v12, v2, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mTextInfo:Landroid/view/textservice/TextInfo;

    invoke-virtual {v12}, Landroid/view/textservice/TextInfo;->getSequence()I

    move-result v12

    if-ne v11, v12, :cond_4

    .line 455
    move-object v10, v0

    .line 456
    .local v10, "result":Landroid/view/textservice/SuggestionsInfo;
    invoke-virtual {v0, v6, v7}, Landroid/view/textservice/SuggestionsInfo;->setCookieAndSequence(II)V

    .line 460
    .end local v0    # "cur":Landroid/view/textservice/SuggestionsInfo;
    .end local v10    # "result":Landroid/view/textservice/SuggestionsInfo;
    :cond_3
    iget v11, v2, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mStart:I

    aput v11, v5, v1

    .line 461
    iget v11, v2, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mLength:I

    aput v11, v4, v1

    .line 462
    if-eqz v10, :cond_5

    :goto_2
    aput-object v10, v9, v1

    .line 449
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 452
    .restart local v0    # "cur":Landroid/view/textservice/SuggestionsInfo;
    .local v10, "result":Landroid/view/textservice/SuggestionsInfo;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 462
    .end local v0    # "cur":Landroid/view/textservice/SuggestionsInfo;
    .end local v10    # "result":Landroid/view/textservice/SuggestionsInfo;
    :cond_5
    sget-object v10, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SUGGESTIONS_INFO:Landroid/view/textservice/SuggestionsInfo;

    goto :goto_2

    .line 471
    .end local v2    # "item":Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;
    .end local v3    # "j":I
    :cond_6
    new-instance v11, Landroid/view/textservice/SentenceSuggestionsInfo;

    invoke-direct {v11, v9, v5, v4}, Landroid/view/textservice/SentenceSuggestionsInfo;-><init>([Landroid/view/textservice/SuggestionsInfo;[I[I)V

    return-object v11
.end method
