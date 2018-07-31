.class final Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;
.super Landroid/app/usage/ICacheQuotaService$Stub;
.source "CacheQuotaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/CacheQuotaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CacheQuotaServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/usage/CacheQuotaService;


# direct methods
.method private constructor <init>(Landroid/app/usage/CacheQuotaService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/usage/CacheQuotaService;

    .prologue
    .line 75
    iput-object p1, p0, Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;->this$0:Landroid/app/usage/CacheQuotaService;

    invoke-direct {p0}, Landroid/app/usage/ICacheQuotaService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/usage/CacheQuotaService;Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/usage/CacheQuotaService;
    .param p2, "-this1"    # Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;-><init>(Landroid/app/usage/CacheQuotaService;)V

    return-void
.end method


# virtual methods
.method public computeCacheQuotaHints(Landroid/os/RemoteCallback;Ljava/util/List;)V
    .locals 4
    .param p1, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallback;",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p2, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;"
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 81
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/RemoteCallback;Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;>;"
    iget-object v2, p0, Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;->this$0:Landroid/app/usage/CacheQuotaService;

    invoke-static {v2}, Landroid/app/usage/CacheQuotaService;->-get0(Landroid/app/usage/CacheQuotaService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 82
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;->this$0:Landroid/app/usage/CacheQuotaService;

    invoke-static {v2}, Landroid/app/usage/CacheQuotaService;->-get0(Landroid/app/usage/CacheQuotaService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 83
    return-void
.end method
