.class final Landroid/widget/SelectionActionModeHelper$SelectionResult;
.super Ljava/lang/Object;
.source "SelectionActionModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SelectionActionModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SelectionResult"
.end annotation


# instance fields
.field private final mClassification:Landroid/view/textclassifier/TextClassification;

.field private final mEnd:I

.field private final mSelection:Landroid/view/textclassifier/TextSelection;

.field private final mStart:I


# direct methods
.method static synthetic -get0(Landroid/widget/SelectionActionModeHelper$SelectionResult;)Landroid/view/textclassifier/TextClassification;
    .locals 1
    .param p0, "-this"    # Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .prologue
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mClassification:Landroid/view/textclassifier/TextClassification;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I
    .locals 1
    .param p0, "-this"    # Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .prologue
    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mEnd:I

    return v0
.end method

.method static synthetic -get2(Landroid/widget/SelectionActionModeHelper$SelectionResult;)Landroid/view/textclassifier/TextSelection;
    .locals 1
    .param p0, "-this"    # Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .prologue
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mSelection:Landroid/view/textclassifier/TextSelection;

    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I
    .locals 1
    .param p0, "-this"    # Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .prologue
    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mStart:I

    return v0
.end method

.method constructor <init>(IILandroid/view/textclassifier/TextClassification;Landroid/view/textclassifier/TextSelection;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "classification"    # Landroid/view/textclassifier/TextClassification;
    .param p4, "selection"    # Landroid/view/textclassifier/TextSelection;

    .prologue
    .line 724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 726
    iput p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mStart:I

    .line 727
    iput p2, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mEnd:I

    .line 728
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassification;

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mClassification:Landroid/view/textclassifier/TextClassification;

    .line 729
    iput-object p4, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mSelection:Landroid/view/textclassifier/TextSelection;

    .line 730
    return-void
.end method
