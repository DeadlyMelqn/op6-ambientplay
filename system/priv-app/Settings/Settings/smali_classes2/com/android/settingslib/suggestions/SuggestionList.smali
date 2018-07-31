.class public Lcom/android/settingslib/suggestions/SuggestionList;
.super Ljava/lang/Object;
.source "SuggestionList.java"


# instance fields
.field private mSuggestionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuggestions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/settingslib/suggestions/SuggestionCategory;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionList;->mSuggestions:Ljava/util/Map;

    .line 40
    return-void
.end method

.method private dedupeSuggestions(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 85
    .local v2, "intents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 86
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/drawer/Tile;

    .line 87
    .local v3, "suggestion":Lcom/android/settingslib/drawer/Tile;
    iget-object v4, v3, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "intentUri":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 85
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 91
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 94
    .end local v1    # "intentUri":Ljava/lang/String;
    .end local v3    # "suggestion":Lcom/android/settingslib/drawer/Tile;
    :cond_1
    return-void
.end method


# virtual methods
.method public addSuggestions(Lcom/android/settingslib/suggestions/SuggestionCategory;Ljava/util/List;)V
    .locals 1
    .param p1, "category"    # Lcom/android/settingslib/suggestions/SuggestionCategory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/suggestions/SuggestionCategory;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionList;->mSuggestions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public getSuggestionForCategory(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v2, p0, Lcom/android/settingslib/suggestions/SuggestionList;->mSuggestions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 73
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/settingslib/suggestions/SuggestionCategory;Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/suggestions/SuggestionCategory;

    iget-object v2, v2, Lcom/android/settingslib/suggestions/SuggestionCategory;->category:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    return-object v2

    .line 77
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/settingslib/suggestions/SuggestionCategory;Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;>;"
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getSuggestions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v2, p0, Lcom/android/settingslib/suggestions/SuggestionList;->mSuggestionList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/android/settingslib/suggestions/SuggestionList;->mSuggestionList:Ljava/util/List;

    return-object v2

    .line 50
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settingslib/suggestions/SuggestionList;->mSuggestionList:Ljava/util/List;

    .line 51
    iget-object v2, p0, Lcom/android/settingslib/suggestions/SuggestionList;->mSuggestions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "suggestions$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 52
    .local v0, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    iget-object v2, p0, Lcom/android/settingslib/suggestions/SuggestionList;->mSuggestionList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 54
    .end local v0    # "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    :cond_1
    iget-object v2, p0, Lcom/android/settingslib/suggestions/SuggestionList;->mSuggestionList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/settingslib/suggestions/SuggestionList;->dedupeSuggestions(Ljava/util/List;)V

    .line 55
    iget-object v2, p0, Lcom/android/settingslib/suggestions/SuggestionList;->mSuggestionList:Ljava/util/List;

    return-object v2
.end method

.method public isExclusiveSuggestionCategory()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    iget-object v2, p0, Lcom/android/settingslib/suggestions/SuggestionList;->mSuggestions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 61
    return v3

    .line 63
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/suggestions/SuggestionList;->mSuggestions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "category$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/suggestions/SuggestionCategory;

    .line 64
    .local v0, "category":Lcom/android/settingslib/suggestions/SuggestionCategory;
    iget-boolean v2, v0, Lcom/android/settingslib/suggestions/SuggestionCategory;->exclusive:Z

    if-eqz v2, :cond_1

    .line 65
    return v4

    .line 68
    .end local v0    # "category":Lcom/android/settingslib/suggestions/SuggestionCategory;
    :cond_2
    return v3
.end method
