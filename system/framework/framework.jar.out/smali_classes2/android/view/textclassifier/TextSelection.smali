.class public final Landroid/view/textclassifier/TextSelection;
.super Ljava/lang/Object;
.source "TextSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextSelection$Builder;
    }
.end annotation


# instance fields
.field private final mEndIndex:I

.field private final mEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/textclassifier/EntityConfidence",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogSource:Ljava/lang/String;

.field private final mStartIndex:I

.field private final mVersionInfo:Ljava/lang/String;


# direct methods
.method private constructor <init>(IILandroid/view/textclassifier/EntityConfidence;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p4, "logSource"    # Ljava/lang/String;
    .param p5, "versionInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/view/textclassifier/EntityConfidence",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p3, "entityConfidence":Landroid/view/textclassifier/EntityConfidence;, "Landroid/view/textclassifier/EntityConfidence<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Landroid/view/textclassifier/TextSelection;->mStartIndex:I

    .line 44
    iput p2, p0, Landroid/view/textclassifier/TextSelection;->mEndIndex:I

    .line 45
    new-instance v0, Landroid/view/textclassifier/EntityConfidence;

    invoke-direct {v0, p3}, Landroid/view/textclassifier/EntityConfidence;-><init>(Landroid/view/textclassifier/EntityConfidence;)V

    iput-object v0, p0, Landroid/view/textclassifier/TextSelection;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    .line 46
    iget-object v0, p0, Landroid/view/textclassifier/TextSelection;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0}, Landroid/view/textclassifier/EntityConfidence;->getEntities()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextSelection;->mEntities:Ljava/util/List;

    .line 47
    iput-object p4, p0, Landroid/view/textclassifier/TextSelection;->mLogSource:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Landroid/view/textclassifier/TextSelection;->mVersionInfo:Ljava/lang/String;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(IILandroid/view/textclassifier/EntityConfidence;Ljava/lang/String;Ljava/lang/String;Landroid/view/textclassifier/TextSelection;)V
    .locals 0
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "entityConfidence"    # Landroid/view/textclassifier/EntityConfidence;
    .param p4, "logSource"    # Ljava/lang/String;
    .param p5, "versionInfo"    # Ljava/lang/String;
    .param p6, "-this5"    # Landroid/view/textclassifier/TextSelection;

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/view/textclassifier/TextSelection;-><init>(IILandroid/view/textclassifier/EntityConfidence;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getConfidenceScore(Ljava/lang/String;)F
    .locals 1
    .param p1, "entity"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Landroid/view/textclassifier/TextSelection;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0, p1}, Landroid/view/textclassifier/EntityConfidence;->getConfidenceScore(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public getEntity(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 82
    iget-object v0, p0, Landroid/view/textclassifier/TextSelection;->mEntities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEntityCount()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Landroid/view/textclassifier/TextSelection;->mEntities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSelectionEndIndex()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Landroid/view/textclassifier/TextSelection;->mEndIndex:I

    return v0
.end method

.method public getSelectionStartIndex()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Landroid/view/textclassifier/TextSelection;->mStartIndex:I

    return v0
.end method

.method public getSourceClassifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Landroid/view/textclassifier/TextSelection;->mLogSource:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Landroid/view/textclassifier/TextSelection;->mVersionInfo:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 115
    const-string/jumbo v0, "TextSelection {%d, %d, %s}"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 116
    iget v2, p0, Landroid/view/textclassifier/TextSelection;->mStartIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/view/textclassifier/TextSelection;->mEndIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/view/textclassifier/TextSelection;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 115
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
