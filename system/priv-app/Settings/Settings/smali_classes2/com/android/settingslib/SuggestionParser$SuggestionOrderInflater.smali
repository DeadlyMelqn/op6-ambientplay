.class Lcom/android/settingslib/SuggestionParser$SuggestionOrderInflater;
.super Ljava/lang/Object;
.source "SuggestionParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/SuggestionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuggestionOrderInflater"
.end annotation


# static fields
.field private static final ATTR_CATEGORY:Ljava/lang/String; = "category"

.field private static final ATTR_MULTIPLE:Ljava/lang/String; = "multiple"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_ITEM:Ljava/lang/String; = "step"

.field private static final TAG_LIST:Ljava/lang/String; = "optional-steps"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput-object p1, p0, Lcom/android/settingslib/SuggestionParser$SuggestionOrderInflater;->mContext:Landroid/content/Context;

    .line 385
    return-void
.end method

.method private rParse(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Ljava/lang/Object;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 420
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 423
    .local v0, "depth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 424
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_2

    :cond_1
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 425
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 429
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0, v2, p3}, Lcom/android/settingslib/SuggestionParser$SuggestionOrderInflater;->onCreateItem(Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v1

    .line 432
    .local v1, "item":Ljava/lang/Object;
    invoke-virtual {p0, p2, v1}, Lcom/android/settingslib/SuggestionParser$SuggestionOrderInflater;->onAddChildItem(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 433
    invoke-direct {p0, p1, v1, p3}, Lcom/android/settingslib/SuggestionParser$SuggestionOrderInflater;->rParse(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 435
    .end local v1    # "item":Ljava/lang/Object;
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method protected onAddChildItem(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "parent"    # Ljava/lang/Object;
    .param p2, "child"    # Ljava/lang/Object;

    .prologue
    .line 438
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/android/settingslib/SuggestionParser$SuggestionCategory;

    if-eqz v0, :cond_0

    .line 439
    check-cast p1, Ljava/util/List;

    .end local p1    # "parent":Ljava/lang/Object;
    check-cast p2, Lcom/android/settingslib/SuggestionParser$SuggestionCategory;

    .end local p2    # "child":Ljava/lang/Object;
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    return-void

    .line 441
    .restart local p1    # "parent":Ljava/lang/Object;
    .restart local p2    # "child":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parent was not a list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onCreateItem(Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 446
    const-string/jumbo v2, "optional-steps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 447
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 448
    :cond_0
    const-string/jumbo v2, "step"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 449
    new-instance v0, Lcom/android/settingslib/SuggestionParser$SuggestionCategory;

    invoke-direct {v0}, Lcom/android/settingslib/SuggestionParser$SuggestionCategory;-><init>()V

    .line 450
    .local v0, "category":Lcom/android/settingslib/SuggestionParser$SuggestionCategory;
    const-string/jumbo v2, "category"

    invoke-interface {p2, v3, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settingslib/SuggestionParser$SuggestionCategory;->category:Ljava/lang/String;

    .line 451
    const-string/jumbo v2, "package"

    invoke-interface {p2, v3, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settingslib/SuggestionParser$SuggestionCategory;->pkg:Ljava/lang/String;

    .line 452
    const-string/jumbo v2, "multiple"

    invoke-interface {p2, v3, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, "multiple":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    :goto_0
    iput-boolean v2, v0, Lcom/android/settingslib/SuggestionParser$SuggestionCategory;->multiple:Z

    .line 454
    return-object v0

    .line 453
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 456
    .end local v0    # "category":Lcom/android/settingslib/SuggestionParser$SuggestionCategory;
    .end local v1    # "multiple":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public parse(I)Ljava/lang/Object;
    .locals 8
    .param p1, "resource"    # I

    .prologue
    const/4 v6, 0x2

    .line 388
    iget-object v5, p0, Lcom/android/settingslib/SuggestionParser$SuggestionOrderInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 389
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 394
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_0
    :try_start_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 395
    .local v3, "type":I
    if-eq v3, v6, :cond_1

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 397
    :cond_1
    if-eq v3, v6, :cond_2

    .line 398
    new-instance v5, Landroid/view/InflateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 399
    const-string/jumbo v7, ": No start tag found!"

    .line 398
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    .end local v3    # "type":I
    :catch_0
    move-exception v1

    .line 409
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "SuggestionParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Problem parser resource "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    const/4 v5, 0x0

    return-object v5

    .line 403
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "type":I
    :cond_2
    :try_start_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v0}, Lcom/android/settingslib/SuggestionParser$SuggestionOrderInflater;->onCreateItem(Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v4

    .line 406
    .local v4, "xmlRoot":Ljava/lang/Object;
    invoke-direct {p0, v2, v4, v0}, Lcom/android/settingslib/SuggestionParser$SuggestionOrderInflater;->rParse(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 407
    return-object v4
.end method
