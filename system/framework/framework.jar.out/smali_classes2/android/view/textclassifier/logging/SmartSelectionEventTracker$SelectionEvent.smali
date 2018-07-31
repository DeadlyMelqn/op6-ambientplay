.class public final Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
.super Ljava/lang/Object;
.source "SmartSelectionEventTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/logging/SmartSelectionEventTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectionEvent"
.end annotation


# static fields
.field private static final NO_VERSION_TAG:Ljava/lang/String; = ""

.field public static final OUT_OF_BOUNDS:I = 0x7fff

.field public static final OUT_OF_BOUNDS_NEGATIVE:I = -0x8000


# instance fields
.field private final mEnd:I

.field private final mEntityType:Ljava/lang/String;

.field private mEventType:I

.field private final mStart:I

.field private final mVersionTag:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I
    .locals 1
    .param p0, "-this"    # Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    .prologue
    iget v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mEnd:I

    return v0
.end method

.method static synthetic -get1(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    .prologue
    iget-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mEntityType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I
    .locals 1
    .param p0, "-this"    # Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    .prologue
    iget v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mEventType:I

    return v0
.end method

.method static synthetic -get3(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I
    .locals 1
    .param p0, "-this"    # Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    .prologue
    iget v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mStart:I

    return v0
.end method

.method static synthetic -get4(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    .prologue
    iget-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mVersionTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Z
    .locals 1
    .param p0, "-this"    # Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    .prologue
    invoke-direct {p0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->isTerminal()Z

    move-result v0

    return v0
.end method

.method private constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "eventType"    # I
    .param p4, "entityType"    # Ljava/lang/String;
    .param p5, "versionTag"    # Ljava/lang/String;

    .prologue
    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    if-lt p2, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "end cannot be less than start"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 443
    iput p1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mStart:I

    .line 444
    iput p2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mEnd:I

    .line 445
    iput p3, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mEventType:I

    .line 446
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mEntityType:Ljava/lang/String;

    .line 447
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mVersionTag:Ljava/lang/String;

    .line 448
    return-void

    .line 442
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isActionType()Z
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mEventType:I

    sparse-switch v0, :sswitch_data_0

    .line 571
    const/4 v0, 0x0

    return v0

    .line 569
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 558
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
        0x68 -> :sswitch_0
        0x69 -> :sswitch_0
        0x6a -> :sswitch_0
        0x6b -> :sswitch_0
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
    .end sparse-switch
.end method

.method private isTerminal()Z
    .locals 1

    .prologue
    .line 576
    iget v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mEventType:I

    packed-switch v0, :pswitch_data_0

    .line 588
    const/4 v0, 0x0

    return v0

    .line 586
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 576
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static selectionAction(III)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
    .locals 6
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "actionType"    # I

    .prologue
    .line 532
    new-instance v0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    .line 533
    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    move v1, p0

    move v2, p1

    move v3, p2

    .line 532
    invoke-direct/range {v0 .. v5}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static selectionAction(IIILandroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
    .locals 6
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "actionType"    # I
    .param p3, "classification"    # Landroid/view/textclassifier/TextClassification;

    .prologue
    const/4 v1, 0x0

    .line 550
    invoke-virtual {p3}, Landroid/view/textclassifier/TextClassification;->getEntityCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 551
    invoke-virtual {p3, v1}, Landroid/view/textclassifier/TextClassification;->getEntity(I)Ljava/lang/String;

    move-result-object v4

    .line 553
    .local v4, "entityType":Ljava/lang/String;
    :goto_0
    invoke-virtual {p3}, Landroid/view/textclassifier/TextClassification;->getVersionInfo()Ljava/lang/String;

    move-result-object v5

    .line 554
    .local v5, "versionTag":Ljava/lang/String;
    new-instance v0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    move v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 552
    .end local v4    # "entityType":Ljava/lang/String;
    .end local v5    # "versionTag":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, ""

    .restart local v4    # "entityType":Ljava/lang/String;
    goto :goto_0
.end method

.method public static selectionModified(II)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
    .locals 6
    .param p0, "start"    # I
    .param p1, "end"    # I

    .prologue
    .line 469
    new-instance v0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    .line 471
    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    .line 470
    const/4 v3, 0x2

    move v1, p0

    move v2, p1

    .line 469
    invoke-direct/range {v0 .. v5}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static selectionModified(IILandroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
    .locals 6
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "classification"    # Landroid/view/textclassifier/TextClassification;

    .prologue
    const/4 v1, 0x0

    .line 485
    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassification;->getEntityCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 486
    invoke-virtual {p2, v1}, Landroid/view/textclassifier/TextClassification;->getEntity(I)Ljava/lang/String;

    move-result-object v4

    .line 488
    .local v4, "entityType":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassification;->getVersionInfo()Ljava/lang/String;

    move-result-object v5

    .line 489
    .local v5, "versionTag":Ljava/lang/String;
    new-instance v0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    .line 490
    const/4 v3, 0x2

    move v1, p0

    move v2, p1

    .line 489
    invoke-direct/range {v0 .. v5}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 487
    .end local v4    # "entityType":Ljava/lang/String;
    .end local v5    # "versionTag":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, ""

    .restart local v4    # "entityType":Ljava/lang/String;
    goto :goto_0
.end method

.method public static selectionModified(IILandroid/view/textclassifier/TextSelection;)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
    .locals 7
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "selection"    # Landroid/view/textclassifier/TextSelection;

    .prologue
    const/4 v2, 0x0

    .line 504
    invoke-virtual {p2}, Landroid/view/textclassifier/TextSelection;->getSourceClassifier()Ljava/lang/String;

    move-result-object v0

    .line 505
    const-string/jumbo v1, "TextClassifierImpl"

    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 507
    .local v6, "smartSelection":Z
    if-eqz v6, :cond_1

    .line 508
    sub-int v0, p1, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 509
    const/4 v3, 0x4

    .line 515
    .local v3, "eventType":I
    :goto_0
    invoke-virtual {p2}, Landroid/view/textclassifier/TextSelection;->getEntityCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 516
    invoke-virtual {p2, v2}, Landroid/view/textclassifier/TextSelection;->getEntity(I)Ljava/lang/String;

    move-result-object v4

    .line 518
    .local v4, "entityType":Ljava/lang/String;
    :goto_1
    invoke-virtual {p2}, Landroid/view/textclassifier/TextSelection;->getVersionInfo()Ljava/lang/String;

    move-result-object v5

    .line 519
    .local v5, "versionTag":Ljava/lang/String;
    new-instance v0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    move v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 510
    .end local v3    # "eventType":I
    .end local v4    # "entityType":Ljava/lang/String;
    .end local v5    # "versionTag":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x3

    .restart local v3    # "eventType":I
    goto :goto_0

    .line 513
    .end local v3    # "eventType":I
    :cond_1
    const/4 v3, 0x5

    .restart local v3    # "eventType":I
    goto :goto_0

    .line 517
    :cond_2
    const-string/jumbo v4, ""

    .restart local v4    # "entityType":Ljava/lang/String;
    goto :goto_1
.end method

.method public static selectionStarted(I)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
    .locals 6
    .param p0, "start"    # I

    .prologue
    .line 456
    new-instance v0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    .line 457
    add-int/lit8 v2, p0, 0x1

    .line 458
    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    .line 457
    const/4 v3, 0x1

    move v1, p0

    .line 456
    invoke-direct/range {v0 .. v5}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
