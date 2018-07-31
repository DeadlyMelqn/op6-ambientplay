.class final Landroid/view/textclassifier/EntityConfidence;
.super Ljava/lang/Object;
.source "EntityConfidence.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mEntityComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mEntityConfidence:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TT;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 53
    .local p0, "this":Landroid/view/textclassifier/EntityConfidence;, "Landroid/view/textclassifier/EntityConfidence<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Ljava/util/Map;

    .line 41
    new-instance v0, Landroid/view/textclassifier/-$Lambda$YdZbAd6a5x_pMw8WtGLtYRkzJSM;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/view/textclassifier/-$Lambda$YdZbAd6a5x_pMw8WtGLtYRkzJSM;-><init>(BLjava/lang/Object;)V

    iput-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityComparator:Ljava/util/Comparator;

    .line 53
    return-void
.end method

.method constructor <init>(Landroid/view/textclassifier/EntityConfidence;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/textclassifier/EntityConfidence",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Landroid/view/textclassifier/EntityConfidence;, "Landroid/view/textclassifier/EntityConfidence<TT;>;"
    .local p1, "source":Landroid/view/textclassifier/EntityConfidence;, "Landroid/view/textclassifier/EntityConfidence<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Ljava/util/Map;

    .line 41
    new-instance v0, Landroid/view/textclassifier/-$Lambda$YdZbAd6a5x_pMw8WtGLtYRkzJSM;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/view/textclassifier/-$Lambda$YdZbAd6a5x_pMw8WtGLtYRkzJSM;-><init>(BLjava/lang/Object;)V

    iput-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityComparator:Ljava/util/Comparator;

    .line 56
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Ljava/util/Map;

    iget-object v1, p1, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 58
    return-void
.end method


# virtual methods
.method public getConfidenceScore(Ljava/lang/Object;)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)F"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Landroid/view/textclassifier/EntityConfidence;, "Landroid/view/textclassifier/EntityConfidence<TT;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 99
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getEntities()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Landroid/view/textclassifier/EntityConfidence;, "Landroid/view/textclassifier/EntityConfidence<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .local v0, "entities":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v1, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 85
    iget-object v1, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityComparator:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 86
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method synthetic lambda$-android_view_textclassifier_EntityConfidence_1225(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 42
    .local p0, "this":Landroid/view/textclassifier/EntityConfidence;, "Landroid/view/textclassifier/EntityConfidence<TT;>;"
    .local p1, "e1":Ljava/lang/Object;, "TT;"
    .local p2, "e2":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 43
    .local v0, "score1":F
    iget-object v2, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 44
    .local v1, "score2":F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 45
    const/4 v2, -0x1

    return v2

    .line 47
    :cond_0
    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    .line 48
    const/4 v2, 0x1

    return v2

    .line 50
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public setEntityType(Ljava/lang/Object;F)V
    .locals 2
    .param p2, "confidenceScore"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Landroid/view/textclassifier/EntityConfidence;, "Landroid/view/textclassifier/EntityConfidence<TT;>;"
    .local p1, "type":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 71
    iget-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Ljava/util/Map;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    .local p0, "this":Landroid/view/textclassifier/EntityConfidence;, "Landroid/view/textclassifier/EntityConfidence<TT;>;"
    iget-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
