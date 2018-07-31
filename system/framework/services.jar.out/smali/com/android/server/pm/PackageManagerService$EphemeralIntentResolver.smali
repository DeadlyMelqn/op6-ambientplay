.class final Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EphemeralIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver",
        "<",
        "Landroid/content/pm/AuxiliaryResolveInfo;",
        "Landroid/content/pm/AuxiliaryResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final mOrderResult:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/InstantAppResolveInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 15365
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 15378
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    .line 15365
    return-void
.end method


# virtual methods
.method protected filterResults(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/AuxiliaryResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15415
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/AuxiliaryResolveInfo;>;"
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 15416
    return-void

    .line 15418
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 15419
    .local v3, "resultSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 15420
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v1, v5, Landroid/content/pm/AuxiliaryResolveInfo;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    .line 15421
    .local v1, "info":Landroid/content/pm/InstantAppResolveInfo;
    invoke-virtual {v1}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 15422
    .local v2, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 15423
    .local v4, "savedInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/pm/InstantAppResolveInfo;>;"
    if-nez v4, :cond_2

    .line 15419
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15427
    :cond_2
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v5, v1, :cond_4

    .line 15429
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15430
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 15441
    .end local v1    # "info":Landroid/content/pm/InstantAppResolveInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "savedInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/pm/InstantAppResolveInfo;>;"
    :cond_3
    return-void

    .line 15437
    .restart local v1    # "info":Landroid/content/pm/InstantAppResolveInfo;
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v4    # "savedInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/pm/InstantAppResolveInfo;>;"
    :cond_4
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 15438
    add-int/lit8 v3, v3, -0x1

    .line 15439
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .locals 1

    .prologue
    .line 15385
    check-cast p2, Landroid/content/pm/AuxiliaryResolveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/pm/AuxiliaryResolveInfo;)Z

    move-result v0

    return v0
.end method

.method protected isPackageForFilter(Ljava/lang/String;Landroid/content/pm/AuxiliaryResolveInfo;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "responseObj"    # Landroid/content/pm/AuxiliaryResolveInfo;

    .prologue
    .line 15387
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 15380
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->newArray(I)[Landroid/content/pm/AuxiliaryResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method protected newArray(I)[Landroid/content/pm/AuxiliaryResolveInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 15382
    new-array v0, p1, [Landroid/content/pm/AuxiliaryResolveInfo;

    return-object v0
.end method

.method protected newResult(Landroid/content/pm/AuxiliaryResolveInfo;II)Landroid/content/pm/AuxiliaryResolveInfo;
    .locals 7
    .param p1, "responseObj"    # Landroid/content/pm/AuxiliaryResolveInfo;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v6, 0x0

    .line 15393
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v4, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 15394
    return-object v6

    .line 15396
    :cond_0
    iget-object v4, p1, Landroid/content/pm/AuxiliaryResolveInfo;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    invoke-virtual {v4}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 15397
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/pm/AuxiliaryResolveInfo;->getOrder()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 15399
    .local v1, "order":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 15401
    .local v0, "lastOrderResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/pm/InstantAppResolveInfo;>;"
    if-eqz v0, :cond_1

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 15402
    return-object v6

    .line 15404
    :cond_1
    iget-object v3, p1, Landroid/content/pm/AuxiliaryResolveInfo;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    .line 15405
    .local v3, "res":Landroid/content/pm/InstantAppResolveInfo;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_2

    .line 15407
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15409
    :cond_2
    return-object p1
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15390
    check-cast p1, Landroid/content/pm/AuxiliaryResolveInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->newResult(Landroid/content/pm/AuxiliaryResolveInfo;II)Landroid/content/pm/AuxiliaryResolveInfo;

    move-result-object v0

    return-object v0
.end method
