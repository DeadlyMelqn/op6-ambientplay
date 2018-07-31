.class public Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;
.super Ljava/lang/Object;
.source "VisibilityLoggerMixin.java"

# interfaces
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnResume;
.implements Lcom/android/settings/core/lifecycle/events/OnPause;
.implements Lcom/android/settings/core/lifecycle/events/OnAttach;


# static fields
.field private static final TAG:Ljava/lang/String; = "VisibilityLoggerMixin"


# instance fields
.field private final mMetricsCategory:I

.field private mMetricsFeature:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

.field private mSourceMetricsCategory:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "metricsCategory"    # I

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;-><init>(ILcom/android/settings/core/instrumentation/MetricsFeatureProvider;)V

    .line 48
    return-void
.end method

.method public constructor <init>(ILcom/android/settings/core/instrumentation/MetricsFeatureProvider;)V
    .locals 1
    .param p1, "metricsCategory"    # I
    .param p2, "metricsFeature"    # Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;->mSourceMetricsCategory:I

    .line 51
    iput p1, p0, Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;->mMetricsCategory:I

    .line 52
    iput-object p2, p0, Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;->mMetricsFeature:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    .line 53
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    iget-object v0, p0, Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;->mMetricsFeature:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;->mMetricsCategory:I

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;->mMetricsFeature:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    iget v1, p0, Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;->mMetricsCategory:I

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->hidden(Landroid/content/Context;I)V

    .line 72
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    iget-object v0, p0, Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;->mMetricsFeature:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;->mMetricsCategory:I

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;->mMetricsFeature:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    iget v1, p0, Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;->mSourceMetricsCategory:I

    iget v2, p0, Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;->mMetricsCategory:I

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->visible(Landroid/content/Context;II)V

    .line 65
    :cond_0
    return-void
.end method

.method public setSourceMetricsCategory(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 78
    iget v1, p0, Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;->mSourceMetricsCategory:I

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 79
    :cond_0
    return-void

    .line 81
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_2

    .line 83
    return-void

    .line 85
    :cond_2
    const-string/jumbo v1, ":settings:source_metrics"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;->mSourceMetricsCategory:I

    .line 87
    return-void
.end method
