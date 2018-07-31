.class public interface abstract Lcom/android/settings/core/PreferenceControllerMixin;
.super Ljava/lang/Object;
.source "PreferenceControllerMixin.java"


# virtual methods
.method public getResultPayload()Lcom/android/settings/search/ResultPayload;
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateNonIndexableKeys(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    instance-of v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 36
    check-cast v0, Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-virtual {v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    check-cast p0, Lcom/android/settingslib/core/AbstractPreferenceController;

    .end local p0    # "this":Lcom/android/settings/core/PreferenceControllerMixin;
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_0
    return-void
.end method

.method public updateRawDataToIndex(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "rawData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    return-void
.end method
