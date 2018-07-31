.class public Lcom/airbnb/lottie/PerformanceTracker;
.super Ljava/lang/Object;
.source "PerformanceTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/PerformanceTracker$FrameListener;
    }
.end annotation


# instance fields
.field private enabled:Z

.field private final floatComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final frameListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/airbnb/lottie/PerformanceTracker$FrameListener;",
            ">;"
        }
    .end annotation
.end field

.field private layerRenderTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/utils/MeanCalculator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->enabled:Z

    .line 26
    invoke-direct {p0}, Lcom/airbnb/lottie/PerformanceTracker;->initSet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->frameListeners:Ljava/util/Set;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    .line 37
    new-instance v0, Lcom/airbnb/lottie/PerformanceTracker$1;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/PerformanceTracker$1;-><init>(Lcom/airbnb/lottie/PerformanceTracker;)V

    iput-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->floatComparator:Ljava/util/Comparator;

    return-void
.end method

.method private initSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/airbnb/lottie/PerformanceTracker$FrameListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 31
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addFrameListener(Lcom/airbnb/lottie/PerformanceTracker$FrameListener;)V
    .locals 1
    .param p1, "frameListener"    # Lcom/airbnb/lottie/PerformanceTracker$FrameListener;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->frameListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public clearRenderTimes()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 85
    return-void
.end method

.method public getSortedRenderTimes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 101
    iget-boolean v3, p0, Lcom/airbnb/lottie/PerformanceTracker;->enabled:Z

    if-eqz v3, :cond_0

    .line 104
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    .local v2, "sortedRenderTimes":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/util/Pair<Ljava/lang/String;Ljava/lang/Float;>;>;"
    iget-object v3, p0, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "-l_2_R":Ljava/lang/Object;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 108
    iget-object v3, p0, Lcom/airbnb/lottie/PerformanceTracker;->floatComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 109
    return-object v2

    .line 102
    .end local v0    # "-l_2_R":Ljava/lang/Object;
    .end local v2    # "sortedRenderTimes":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/util/Pair<Ljava/lang/String;Ljava/lang/Float;>;>;"
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 105
    .restart local v0    # "-l_2_R":Ljava/lang/Object;
    .restart local v2    # "sortedRenderTimes":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/util/Pair<Ljava/lang/String;Ljava/lang/Float;>;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 106
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/airbnb/lottie/utils/MeanCalculator;>;"
    new-instance v4, Landroid/support/v4/util/Pair;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/utils/MeanCalculator;

    invoke-virtual {v3}, Lcom/airbnb/lottie/utils/MeanCalculator;->getMean()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public logRenderTimes()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 88
    iget-boolean v3, p0, Lcom/airbnb/lottie/PerformanceTracker;->enabled:Z

    if-eqz v3, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/airbnb/lottie/PerformanceTracker;->getSortedRenderTimes()Ljava/util/List;

    move-result-object v2

    .line 92
    .local v2, "sortedRenderTimes":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/util/Pair<Ljava/lang/String;Ljava/lang/Float;>;>;"
    const-string/jumbo v3, "LOTTIE"

    const-string/jumbo v4, "Render times:"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 97
    return-void

    .line 89
    .end local v0    # "i":I
    .end local v2    # "sortedRenderTimes":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/util/Pair<Ljava/lang/String;Ljava/lang/Float;>;>;"
    :cond_0
    return-void

    .line 94
    .restart local v0    # "i":I
    .restart local v2    # "sortedRenderTimes":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/util/Pair<Ljava/lang/String;Ljava/lang/Float;>;>;"
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/util/Pair;

    .line 95
    .local v1, "layer":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Ljava/lang/String;Ljava/lang/Float;>;"
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    aput-object v4, v3, v6

    iget-object v4, v1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string/jumbo v4, "\t\t%30s:%.2f"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "LOTTIE"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public recordRenderTime(Ljava/lang/String;F)V
    .locals 4
    .param p1, "layerName"    # Ljava/lang/String;
    .param p2, "millis"    # F

    .prologue
    .line 57
    iget-boolean v3, p0, Lcom/airbnb/lottie/PerformanceTracker;->enabled:Z

    if-eqz v3, :cond_1

    .line 60
    iget-object v3, p0, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/utils/MeanCalculator;

    .line 61
    .local v2, "meanCalculator":Lcom/airbnb/lottie/utils/MeanCalculator;
    if-eqz v2, :cond_2

    .line 65
    :goto_0
    invoke-virtual {v2, p2}, Lcom/airbnb/lottie/utils/MeanCalculator;->add(F)V

    .line 67
    const-string/jumbo v3, "root"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 72
    :cond_0
    return-void

    .line 58
    .end local v2    # "meanCalculator":Lcom/airbnb/lottie/utils/MeanCalculator;
    :cond_1
    return-void

    .line 62
    .restart local v2    # "meanCalculator":Lcom/airbnb/lottie/utils/MeanCalculator;
    :cond_2
    new-instance v2, Lcom/airbnb/lottie/utils/MeanCalculator;

    .end local v2    # "meanCalculator":Lcom/airbnb/lottie/utils/MeanCalculator;
    invoke-direct {v2}, Lcom/airbnb/lottie/utils/MeanCalculator;-><init>()V

    .line 63
    .restart local v2    # "meanCalculator":Lcom/airbnb/lottie/utils/MeanCalculator;
    iget-object v3, p0, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 68
    :cond_3
    iget-object v3, p0, Lcom/airbnb/lottie/PerformanceTracker;->frameListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "-l_4_R":Ljava/lang/Object;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/PerformanceTracker$FrameListener;

    .line 69
    .local v1, "listener":Lcom/airbnb/lottie/PerformanceTracker$FrameListener;
    invoke-interface {v1, p2}, Lcom/airbnb/lottie/PerformanceTracker$FrameListener;->onFrameRendered(F)V

    goto :goto_1
.end method

.method public removeFrameListener(Lcom/airbnb/lottie/PerformanceTracker$FrameListener;)V
    .locals 1
    .param p1, "frameListener"    # Lcom/airbnb/lottie/PerformanceTracker$FrameListener;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->frameListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/airbnb/lottie/PerformanceTracker;->enabled:Z

    .line 54
    return-void
.end method
