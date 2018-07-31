.class public final Landroid/view/textclassifier/TextSelection$Builder;
.super Ljava/lang/Object;
.source "TextSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mEndIndex:I

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

.field private mLogSource:Ljava/lang/String;

.field private final mStartIndex:I

.field private mVersionInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Landroid/view/textclassifier/EntityConfidence;

    invoke-direct {v0}, Landroid/view/textclassifier/EntityConfidence;-><init>()V

    .line 126
    iput-object v0, p0, Landroid/view/textclassifier/TextSelection$Builder;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    .line 128
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/view/textclassifier/TextSelection$Builder;->mLogSource:Ljava/lang/String;

    .line 129
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/view/textclassifier/TextSelection$Builder;->mVersionInfo:Ljava/lang/String;

    .line 138
    if-ltz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 139
    if-le p2, p1, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 140
    iput p1, p0, Landroid/view/textclassifier/TextSelection$Builder;->mStartIndex:I

    .line 141
    iput p2, p0, Landroid/view/textclassifier/TextSelection$Builder;->mEndIndex:I

    .line 142
    return-void

    :cond_0
    move v0, v2

    .line 138
    goto :goto_0

    :cond_1
    move v1, v2

    .line 139
    goto :goto_1
.end method


# virtual methods
.method public build()Landroid/view/textclassifier/TextSelection;
    .locals 7

    .prologue
    .line 180
    new-instance v0, Landroid/view/textclassifier/TextSelection;

    .line 181
    iget v1, p0, Landroid/view/textclassifier/TextSelection$Builder;->mStartIndex:I

    iget v2, p0, Landroid/view/textclassifier/TextSelection$Builder;->mEndIndex:I

    iget-object v3, p0, Landroid/view/textclassifier/TextSelection$Builder;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    iget-object v4, p0, Landroid/view/textclassifier/TextSelection$Builder;->mLogSource:Ljava/lang/String;

    iget-object v5, p0, Landroid/view/textclassifier/TextSelection$Builder;->mVersionInfo:Ljava/lang/String;

    .line 180
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/view/textclassifier/TextSelection;-><init>(IILandroid/view/textclassifier/EntityConfidence;Ljava/lang/String;Ljava/lang/String;Landroid/view/textclassifier/TextSelection;)V

    return-object v0
.end method

.method public setEntityType(Ljava/lang/String;F)Landroid/view/textclassifier/TextSelection$Builder;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "confidenceScore"    # F

    .prologue
    .line 154
    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Builder;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0, p1, p2}, Landroid/view/textclassifier/EntityConfidence;->setEntityType(Ljava/lang/Object;F)V

    .line 155
    return-object p0
.end method

.method setLogSource(Ljava/lang/String;)Landroid/view/textclassifier/TextSelection$Builder;
    .locals 1
    .param p1, "logSource"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/TextSelection$Builder;->mLogSource:Ljava/lang/String;

    .line 164
    return-object p0
.end method

.method setVersionInfo(Ljava/lang/String;)Landroid/view/textclassifier/TextSelection$Builder;
    .locals 1
    .param p1, "versionInfo"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/TextSelection$Builder;->mVersionInfo:Ljava/lang/String;

    .line 173
    return-object p0
.end method
