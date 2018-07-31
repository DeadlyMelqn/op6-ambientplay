.class public final Landroid/view/textclassifier/TextClassification;
.super Ljava/lang/Object;
.source "TextClassification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassification$Builder;
    }
.end annotation


# static fields
.field static final EMPTY:Landroid/view/textclassifier/TextClassification;


# instance fields
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

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIntent:Landroid/content/Intent;

.field private final mLabel:Ljava/lang/String;

.field private mLogType:I

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mText:Ljava/lang/String;

.field private final mVersionInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Landroid/view/textclassifier/TextClassification$Builder;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassification$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification$Builder;->build()Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    sput-object v0, Landroid/view/textclassifier/TextClassification;->EMPTY:Landroid/view/textclassifier/TextClassification;

    .line 36
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/Intent;Landroid/view/View$OnClickListener;Landroid/view/textclassifier/EntityConfidence;ILjava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p7, "logType"    # I
    .param p8, "versionInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Landroid/view/View$OnClickListener;",
            "Landroid/view/textclassifier/EntityConfidence",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p6, "entityConfidence":Landroid/view/textclassifier/EntityConfidence;, "Landroid/view/textclassifier/EntityConfidence<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/view/textclassifier/TextClassification;->mText:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Landroid/view/textclassifier/TextClassification;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 64
    iput-object p3, p0, Landroid/view/textclassifier/TextClassification;->mLabel:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Landroid/view/textclassifier/TextClassification;->mIntent:Landroid/content/Intent;

    .line 66
    iput-object p5, p0, Landroid/view/textclassifier/TextClassification;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 67
    new-instance v0, Landroid/view/textclassifier/EntityConfidence;

    invoke-direct {v0, p6}, Landroid/view/textclassifier/EntityConfidence;-><init>(Landroid/view/textclassifier/EntityConfidence;)V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassification;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    .line 68
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0}, Landroid/view/textclassifier/EntityConfidence;->getEntities()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassification;->mEntities:Ljava/util/List;

    .line 69
    iput p7, p0, Landroid/view/textclassifier/TextClassification;->mLogType:I

    .line 70
    iput-object p8, p0, Landroid/view/textclassifier/TextClassification;->mVersionInfo:Ljava/lang/String;

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/Intent;Landroid/view/View$OnClickListener;Landroid/view/textclassifier/EntityConfidence;ILjava/lang/String;Landroid/view/textclassifier/TextClassification;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p6, "entityConfidence"    # Landroid/view/textclassifier/EntityConfidence;
    .param p7, "logType"    # I
    .param p8, "versionInfo"    # Ljava/lang/String;
    .param p9, "-this8"    # Landroid/view/textclassifier/TextClassification;

    .prologue
    invoke-direct/range {p0 .. p8}, Landroid/view/textclassifier/TextClassification;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/Intent;Landroid/view/View$OnClickListener;Landroid/view/textclassifier/EntityConfidence;ILjava/lang/String;)V

    return-void
.end method

.method public static createStartActivityOnClickListener(Landroid/content/Context;Landroid/content/Intent;)Landroid/view/View$OnClickListener;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 176
    if-eqz p0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 177
    if-eqz p1, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 178
    new-instance v0, Landroid/view/textclassifier/-$Lambda$mxr44OLodDKdoE5ddAZvMdsFssQ;

    invoke-direct {v0, p0, p1}, Landroid/view/textclassifier/-$Lambda$mxr44OLodDKdoE5ddAZvMdsFssQ;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    move v0, v2

    .line 176
    goto :goto_0

    :cond_1
    move v1, v2

    .line 177
    goto :goto_1
.end method

.method static synthetic lambda$-android_view_textclassifier_TextClassification_5391(Landroid/content/Context;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getConfidenceScore(Ljava/lang/String;)F
    .locals 1
    .param p1, "entity"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0, p1}, Landroid/view/textclassifier/EntityConfidence;->getConfidenceScore(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public getEntity(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 98
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mEntities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEntityCount()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mEntities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLogType()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Landroid/view/textclassifier/TextClassification;->mLogType:I

    return v0
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mVersionInfo:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 162
    const-string/jumbo v0, "TextClassification {text=%s, entities=%s, label=%s, intent=%s}"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 164
    iget-object v2, p0, Landroid/view/textclassifier/TextClassification;->mText:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/view/textclassifier/TextClassification;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/view/textclassifier/TextClassification;->mLabel:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/view/textclassifier/TextClassification;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 162
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
