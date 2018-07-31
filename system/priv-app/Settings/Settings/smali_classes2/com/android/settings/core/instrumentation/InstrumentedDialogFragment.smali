.class public abstract Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.super Lcom/android/settings/core/lifecycle/ObservableDialogFragment;
.source "InstrumentedDialogFragment.java"

# interfaces
.implements Lcom/android/settings/core/instrumentation/Instrumentable;


# instance fields
.field protected final mDialogCreatable:Lcom/android/settings/DialogCreatable;

.field protected mDialogId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>(Lcom/android/settings/DialogCreatable;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/DialogCreatable;I)V
    .locals 3
    .param p1, "dialogCreatable"    # Lcom/android/settings/DialogCreatable;
    .param p2, "dialogId"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/core/lifecycle/ObservableDialogFragment;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->mDialogCreatable:Lcom/android/settings/DialogCreatable;

    .line 40
    iput p2, p0, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->mDialogId:I

    .line 41
    iget-object v0, p0, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    new-instance v1, Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->getMetricsCategory()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    .line 42
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/core/lifecycle/ObservableDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 49
    return-void
.end method
