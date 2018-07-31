.class public final Landroid/view/textclassifier/TextClassification$Builder;
.super Ljava/lang/Object;
.source "TextClassification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
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

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIntent:Landroid/content/Intent;

.field private mLabel:Ljava/lang/String;

.field private mLogType:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mText:Ljava/lang/String;

.field private mVersionInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Landroid/view/textclassifier/EntityConfidence;

    invoke-direct {v0}, Landroid/view/textclassifier/EntityConfidence;-><init>()V

    .line 191
    iput-object v0, p0, Landroid/view/textclassifier/TextClassification$Builder;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    .line 194
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/view/textclassifier/TextClassification$Builder;->mVersionInfo:Ljava/lang/String;

    .line 184
    return-void
.end method


# virtual methods
.method public build()Landroid/view/textclassifier/TextClassification;
    .locals 10

    .prologue
    .line 272
    new-instance v0, Landroid/view/textclassifier/TextClassification;

    .line 273
    iget-object v1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mText:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/textclassifier/TextClassification$Builder;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/view/textclassifier/TextClassification$Builder;->mLabel:Ljava/lang/String;

    iget-object v4, p0, Landroid/view/textclassifier/TextClassification$Builder;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Landroid/view/textclassifier/TextClassification$Builder;->mOnClickListener:Landroid/view/View$OnClickListener;

    iget-object v6, p0, Landroid/view/textclassifier/TextClassification$Builder;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    .line 274
    iget v7, p0, Landroid/view/textclassifier/TextClassification$Builder;->mLogType:I

    iget-object v8, p0, Landroid/view/textclassifier/TextClassification$Builder;->mVersionInfo:Ljava/lang/String;

    .line 272
    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/view/textclassifier/TextClassification;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/Intent;Landroid/view/View$OnClickListener;Landroid/view/textclassifier/EntityConfidence;ILjava/lang/String;Landroid/view/textclassifier/TextClassification;)V

    return-object v0
.end method

.method public setEntityType(Ljava/lang/String;F)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "confidenceScore"    # F

    .prologue
    .line 214
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Builder;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0, p1, p2}, Landroid/view/textclassifier/EntityConfidence;->setEntityType(Ljava/lang/Object;F)V

    .line 215
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 222
    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 223
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 238
    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mIntent:Landroid/content/Intent;

    .line 239
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 230
    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mLabel:Ljava/lang/String;

    .line 231
    return-object p0
.end method

.method public setLogType(I)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 247
    iput p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mLogType:I

    .line 248
    return-object p0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 255
    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 256
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mText:Ljava/lang/String;

    .line 201
    return-object p0
.end method

.method setVersionInfo(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 1
    .param p1, "versionInfo"    # Ljava/lang/String;

    .prologue
    .line 264
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassification$Builder;->mVersionInfo:Ljava/lang/String;

    .line 265
    return-object p0
.end method
