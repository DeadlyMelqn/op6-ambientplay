.class public Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;
.super Ljava/lang/Object;
.source "MetricsFeatureProvider.java"


# instance fields
.field private mLoggerWriters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/core/instrumentation/LogWriter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->installLogWriters()V

    .line 38
    return-void
.end method


# virtual methods
.method public action(Landroid/content/Context;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # I
    .param p3, "value"    # I

    .prologue
    .line 70
    iget-object v2, p0, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "writer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/instrumentation/LogWriter;

    .line 71
    .local v0, "writer":Lcom/android/settings/core/instrumentation/LogWriter;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/settings/core/instrumentation/LogWriter;->action(Landroid/content/Context;II)V

    goto :goto_0

    .line 73
    .end local v0    # "writer":Lcom/android/settings/core/instrumentation/LogWriter;
    :cond_0
    return-void
.end method

.method public varargs action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p4, "taggedData":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "writer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/instrumentation/LogWriter;

    .line 84
    .local v0, "writer":Lcom/android/settings/core/instrumentation/LogWriter;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/settings/core/instrumentation/LogWriter;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    goto :goto_0

    .line 86
    .end local v0    # "writer":Lcom/android/settings/core/instrumentation/LogWriter;
    :cond_0
    return-void
.end method

.method public action(Landroid/content/Context;IZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # I
    .param p3, "value"    # Z

    .prologue
    .line 76
    iget-object v2, p0, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "writer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/instrumentation/LogWriter;

    .line 77
    .local v0, "writer":Lcom/android/settings/core/instrumentation/LogWriter;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/settings/core/instrumentation/LogWriter;->action(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 79
    .end local v0    # "writer":Lcom/android/settings/core/instrumentation/LogWriter;
    :cond_0
    return-void
.end method

.method public varargs action(Landroid/content/Context;I[Landroid/util/Pair;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p3, "taggedData":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "writer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/instrumentation/LogWriter;

    .line 65
    .local v0, "writer":Lcom/android/settings/core/instrumentation/LogWriter;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/settings/core/instrumentation/LogWriter;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    goto :goto_0

    .line 67
    .end local v0    # "writer":Lcom/android/settings/core/instrumentation/LogWriter;
    :cond_0
    return-void
.end method

.method public actionWithSource(Landroid/content/Context;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "source"    # I
    .param p3, "category"    # I

    .prologue
    .line 58
    iget-object v2, p0, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "writer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/instrumentation/LogWriter;

    .line 59
    .local v0, "writer":Lcom/android/settings/core/instrumentation/LogWriter;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/settings/core/instrumentation/LogWriter;->actionWithSource(Landroid/content/Context;II)V

    goto :goto_0

    .line 61
    .end local v0    # "writer":Lcom/android/settings/core/instrumentation/LogWriter;
    :cond_0
    return-void
.end method

.method public count(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 89
    iget-object v2, p0, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "writer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/instrumentation/LogWriter;

    .line 90
    .local v0, "writer":Lcom/android/settings/core/instrumentation/LogWriter;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/settings/core/instrumentation/LogWriter;->count(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 92
    .end local v0    # "writer":Lcom/android/settings/core/instrumentation/LogWriter;
    :cond_0
    return-void
.end method

.method public getMetricsCategory(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 101
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/settings/core/instrumentation/Instrumentable;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 104
    :cond_1
    check-cast p1, Lcom/android/settings/core/instrumentation/Instrumentable;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {p1}, Lcom/android/settings/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v0

    return v0
.end method

.method public hidden(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # I

    .prologue
    .line 52
    iget-object v2, p0, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "writer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/instrumentation/LogWriter;

    .line 53
    .local v0, "writer":Lcom/android/settings/core/instrumentation/LogWriter;
    invoke-interface {v0, p1, p2}, Lcom/android/settings/core/instrumentation/LogWriter;->hidden(Landroid/content/Context;I)V

    goto :goto_0

    .line 55
    .end local v0    # "writer":Lcom/android/settings/core/instrumentation/LogWriter;
    :cond_0
    return-void
.end method

.method public histogram(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "bucket"    # I

    .prologue
    .line 95
    iget-object v2, p0, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "writer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/instrumentation/LogWriter;

    .line 96
    .local v0, "writer":Lcom/android/settings/core/instrumentation/LogWriter;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/settings/core/instrumentation/LogWriter;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 98
    .end local v0    # "writer":Lcom/android/settings/core/instrumentation/LogWriter;
    :cond_0
    return-void
.end method

.method protected installLogWriters()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    new-instance v1, Lcom/android/settings/core/instrumentation/EventLogWriter;

    invoke-direct {v1}, Lcom/android/settings/core/instrumentation/EventLogWriter;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public logDashboardStartIntent(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "sourceMetricsCategory"    # I

    .prologue
    const/16 v5, 0x341

    const/16 v7, 0x33e

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 109
    if-nez p2, :cond_0

    .line 110
    return-void

    .line 112
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 113
    .local v1, "cn":Landroid/content/ComponentName;
    if-nez v1, :cond_2

    .line 114
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    return-void

    .line 119
    :cond_1
    new-array v2, v4, [Landroid/util/Pair;

    .line 120
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v6

    .line 119
    invoke-virtual {p0, p1, v7, v0, v2}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 121
    return-void

    .line 122
    .end local v0    # "action":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 125
    return-void

    .line 127
    :cond_3
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Landroid/util/Pair;

    .line 128
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    aput-object v4, v3, v6

    .line 127
    invoke-virtual {p0, p1, v7, v2, v3}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 129
    return-void
.end method

.method public visible(Landroid/content/Context;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "source"    # I
    .param p3, "category"    # I

    .prologue
    .line 46
    iget-object v2, p0, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "writer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/instrumentation/LogWriter;

    .line 47
    .local v0, "writer":Lcom/android/settings/core/instrumentation/LogWriter;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/settings/core/instrumentation/LogWriter;->visible(Landroid/content/Context;II)V

    goto :goto_0

    .line 49
    .end local v0    # "writer":Lcom/android/settings/core/instrumentation/LogWriter;
    :cond_0
    return-void
.end method
