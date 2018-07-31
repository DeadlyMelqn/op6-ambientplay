.class public Lcom/android/systemui/fragments/FragmentService;
.super Ljava/lang/Object;
.source "FragmentService.java"

# interfaces
.implements Lcom/android/systemui/ConfigurationChangedReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/fragments/FragmentService$FragmentHostState;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHosts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/systemui/fragments/FragmentService$FragmentHostState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/fragments/FragmentService;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/fragments/FragmentService;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/fragments/FragmentService;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/fragments/FragmentService;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fragments/FragmentService;->mHosts:Landroid/util/ArrayMap;

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fragments/FragmentService;->mHandler:Landroid/os/Handler;

    .line 42
    iput-object p1, p0, Lcom/android/systemui/fragments/FragmentService;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method


# virtual methods
.method public destroyAll()V
    .locals 3

    .prologue
    .line 56
    iget-object v2, p0, Lcom/android/systemui/fragments/FragmentService;->mHosts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "state$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;

    .line 57
    .local v0, "state":Lcom/android/systemui/fragments/FragmentService$FragmentHostState;
    invoke-static {v0}, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->-get0(Lcom/android/systemui/fragments/FragmentService$FragmentHostState;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/fragments/FragmentHostManager;->destroy()V

    goto :goto_0

    .line 59
    .end local v0    # "state":Lcom/android/systemui/fragments/FragmentService$FragmentHostState;
    :cond_0
    return-void
.end method

.method public getFragmentHostManager(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "root":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/fragments/FragmentService;->mHosts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;

    .line 48
    .local v1, "state":Lcom/android/systemui/fragments/FragmentService$FragmentHostState;
    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;

    .end local v1    # "state":Lcom/android/systemui/fragments/FragmentService$FragmentHostState;
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;-><init>(Lcom/android/systemui/fragments/FragmentService;Landroid/view/View;)V

    .line 50
    .restart local v1    # "state":Lcom/android/systemui/fragments/FragmentService$FragmentHostState;
    iget-object v2, p0, Lcom/android/systemui/fragments/FragmentService;->mHosts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->getFragmentHostManager()Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v2

    return-object v2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 63
    iget-object v2, p0, Lcom/android/systemui/fragments/FragmentService;->mHosts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "state$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;

    .line 64
    .local v0, "state":Lcom/android/systemui/fragments/FragmentService$FragmentHostState;
    invoke-virtual {v0, p1}, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->sendConfigurationChange(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 66
    .end local v0    # "state":Lcom/android/systemui/fragments/FragmentService$FragmentHostState;
    :cond_0
    return-void
.end method
