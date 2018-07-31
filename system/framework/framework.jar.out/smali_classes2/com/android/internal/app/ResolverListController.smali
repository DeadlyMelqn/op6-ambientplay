.class public Lcom/android/internal/app/ResolverListController;
.super Ljava/lang/Object;
.source "ResolverListController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverListController$ComputeCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ResolverListController"


# instance fields
.field private isComputed:Z

.field private final mContext:Landroid/content/Context;

.field private final mLaunchedFromUid:I

.field private final mReferrerPackage:Ljava/lang/String;

.field private mResolverComparator:Lcom/android/internal/app/ResolverComparator;

.field private final mTargetIntent:Landroid/content/Intent;

.field private final mpm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "targetIntent"    # Landroid/content/Intent;
    .param p4, "referrerPackage"    # Ljava/lang/String;
    .param p5, "launchedFromUid"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverListController;->isComputed:Z

    .line 68
    iput-object p1, p0, Lcom/android/internal/app/ResolverListController;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/internal/app/ResolverListController;->mpm:Landroid/content/pm/PackageManager;

    .line 70
    iput p5, p0, Lcom/android/internal/app/ResolverListController;->mLaunchedFromUid:I

    .line 71
    iput-object p3, p0, Lcom/android/internal/app/ResolverListController;->mTargetIntent:Landroid/content/Intent;

    .line 72
    iput-object p4, p0, Lcom/android/internal/app/ResolverListController;->mReferrerPackage:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/android/internal/app/ResolverComparator;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListController;->mTargetIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/app/ResolverListController;->mReferrerPackage:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/ResolverComparator$AfterCompute;)V

    .line 73
    iput-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    .line 75
    return-void
.end method

.method private static isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z
    .locals 3
    .param p0, "a"    # Landroid/content/pm/ResolveInfo;
    .param p1, "b"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .prologue
    .line 265
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 266
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 266
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V
    .locals 10
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "into":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    .local p3, "from":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    .line 129
    .local v1, "fromCount":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 130
    .local v3, "intoCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 131
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 132
    .local v6, "newInfo":Landroid/content/pm/ResolveInfo;
    const/4 v0, 0x0

    .line 134
    .local v0, "found":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 135
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 136
    .local v7, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-static {v6, v7}, Lcom/android/internal/app/ResolverListController;->isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 137
    const/4 v0, 0x1

    .line 138
    invoke-virtual {v7, p2, v6}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->add(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .line 142
    .end local v7    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_0
    if-nez v0, :cond_1

    .line 143
    new-instance v5, Landroid/content/ComponentName;

    .line 144
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 143
    invoke-direct {v5, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .local v5, "name":Landroid/content/ComponentName;
    new-instance v7, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-direct {v7, v5, p2, v6}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;-><init>(Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .line 147
    .restart local v7    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverListController;->isComponentPinned(Landroid/content/ComponentName;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->setPinned(Z)V

    .line 148
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v5    # "name":Landroid/content/ComponentName;
    .end local v7    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    .restart local v7    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 151
    .end local v0    # "found":Z
    .end local v4    # "j":I
    .end local v6    # "newInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_3
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverComparator;->destroy()V

    .line 293
    return-void
.end method

.method public filterIneligibleActivities(Ljava/util/List;Z)Ljava/util/ArrayList;
    .locals 10
    .param p2, "returnCopyOfOriginalListIfModified"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "inputList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    const/4 v9, 0x0

    .line 165
    const/4 v3, 0x0

    .line 166
    .local v3, "listToReturn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .end local v3    # "listToReturn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_4

    .line 167
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v5, v9}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 170
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget v6, p0, Lcom/android/internal/app/ResolverListController;->mLaunchedFromUid:I

    .line 171
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v8, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 169
    invoke-static {v5, v6, v7, v8}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1

    .line 172
    .local v1, "granted":I
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 173
    const/high16 v6, 0x40000000    # 2.0f

    .line 172
    and-int/2addr v5, v6

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    .line 174
    .local v4, "suspended":Z
    :goto_1
    if-nez v1, :cond_0

    if-nez v4, :cond_0

    .line 175
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverListController;->isComponentFiltered(Landroid/content/ComponentName;)Z

    move-result v5

    .line 174
    if-eqz v5, :cond_2

    .line 178
    :cond_0
    if-eqz p2, :cond_1

    if-nez v3, :cond_1

    .line 179
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 181
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 166
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 172
    .end local v4    # "suspended":Z
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "suspended":Z
    goto :goto_1

    .line 184
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "granted":I
    .end local v4    # "suspended":Z
    :cond_4
    return-object v3
.end method

.method public filterLowPriority(Ljava/util/List;Z)Ljava/util/ArrayList;
    .locals 9
    .param p2, "returnCopyOfOriginalListIfModified"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "inputList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    const/4 v8, 0x0

    .line 195
    const/4 v2, 0x0

    .line 198
    .local v2, "listToReturn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 199
    .local v4, "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-virtual {v4, v8}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 200
    .local v3, "r0":Landroid/content/pm/ResolveInfo;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 201
    .local v0, "N":I
    const/4 v1, 0x1

    .end local v2    # "listToReturn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 202
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v6, v8}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 209
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iget v6, v3, Landroid/content/pm/ResolveInfo;->priority:I

    iget v7, v5, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v6, v7, :cond_0

    .line 210
    iget-boolean v6, v3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v7, v5, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v6, v7, :cond_2

    .line 211
    :cond_0
    :goto_1
    if-ge v1, v0, :cond_2

    .line 212
    if-eqz p2, :cond_1

    if-nez v2, :cond_1

    .line 213
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 215
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 216
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 201
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    return-object v2
.end method

.method public getLastChosen()Landroid/content/pm/ResolveInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/android/internal/app/ResolverListController;->mTargetIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListController;->mTargetIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/app/ResolverListController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 81
    const/high16 v3, 0x10000

    .line 79
    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public getResolversForIntent(ZZLjava/util/List;)Ljava/util/List;
    .locals 12
    .param p1, "shouldGetResolvedFilter"    # Z
    .param p2, "shouldGetActivityMetadata"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p3, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v9, 0x0

    .line 98
    const/4 v6, 0x0

    .line 99
    .local v6, "resolvedComponents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .end local v6    # "resolvedComponents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_6

    .line 100
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 101
    .local v4, "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/internal/app/ResolverListController;->mpm:Landroid/content/pm/PackageManager;

    .line 103
    if-eqz p1, :cond_1

    const/16 v8, 0x40

    .line 102
    :goto_1
    const/high16 v11, 0x10000

    or-int/2addr v11, v8

    .line 104
    if-eqz p2, :cond_2

    const/16 v8, 0x80

    .line 102
    :goto_2
    or-int/2addr v8, v11

    .line 105
    const/high16 v11, 0x800000

    .line 102
    or-int/2addr v8, v11

    .line 101
    invoke-virtual {v10, v4, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 107
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    .line 108
    .local v7, "totalSize":I
    add-int/lit8 v5, v7, -0x1

    .local v5, "j":I
    :goto_3
    if-ltz v5, :cond_3

    .line 109
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 110
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_0

    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v8, v8, Landroid/content/pm/ActivityInfo;->exported:Z

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_0

    .line 111
    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 108
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v3    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "j":I
    .end local v7    # "totalSize":I
    :cond_1
    move v8, v9

    .line 103
    goto :goto_1

    :cond_2
    move v8, v9

    .line 104
    goto :goto_2

    .line 114
    .restart local v3    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5    # "j":I
    .restart local v7    # "totalSize":I
    :cond_3
    if-eqz v3, :cond_5

    .line 115
    if-nez v6, :cond_4

    .line 116
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 118
    :cond_4
    invoke-virtual {p0, v6, v4, v3}, Lcom/android/internal/app/ResolverListController;->addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V

    .line 99
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v3    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "j":I
    .end local v7    # "totalSize":I
    :cond_6
    return-object v6
.end method

.method public getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F
    .locals 2
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverComparator;->getScore(Landroid/content/ComponentName;)F

    move-result v0

    return v0
.end method

.method isComponentFiltered(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method isComponentPinned(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public setLastChosen(Landroid/content/Intent;Landroid/content/IntentFilter;I)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "match"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/android/internal/app/ResolverListController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 89
    const/high16 v3, 0x10000

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    .line 87
    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V

    .line 91
    return-void
.end method

.method public sort(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "inputList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    iget-object v7, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    if-nez v7, :cond_0

    .line 240
    const-string/jumbo v7, "ResolverListController"

    const-string/jumbo v8, "Comparator has already been destroyed; skipped."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void

    .line 244
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 245
    .local v2, "beforeRank":J
    iget-boolean v7, p0, Lcom/android/internal/app/ResolverListController;->isComputed:Z

    if-nez v7, :cond_1

    .line 246
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 247
    .local v6, "finishComputeSignal":Ljava/util/concurrent/CountDownLatch;
    new-instance v4, Lcom/android/internal/app/ResolverListController$ComputeCallback;

    invoke-direct {v4, p0, v6}, Lcom/android/internal/app/ResolverListController$ComputeCallback;-><init>(Lcom/android/internal/app/ResolverListController;Ljava/util/concurrent/CountDownLatch;)V

    .line 248
    .local v4, "callback":Lcom/android/internal/app/ResolverListController$ComputeCallback;
    iget-object v7, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    invoke-virtual {v7, v4}, Lcom/android/internal/app/ResolverComparator;->setCallBack(Lcom/android/internal/app/ResolverComparator$AfterCompute;)V

    .line 249
    iget-object v7, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    invoke-virtual {v7, p1}, Lcom/android/internal/app/ResolverComparator;->compute(Ljava/util/List;)V

    .line 250
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 251
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/app/ResolverListController;->isComputed:Z

    .line 253
    .end local v4    # "callback":Lcom/android/internal/app/ResolverListController$ComputeCallback;
    .end local v6    # "finishComputeSignal":Ljava/util/concurrent/CountDownLatch;
    :cond_1
    iget-object v7, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    invoke-static {p1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 261
    .end local v2    # "beforeRank":J
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v5

    .line 259
    .local v5, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v7, "ResolverListController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Compute & Sort was interrupted: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateChooserCounts(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/app/ResolverComparator;->updateChooserCounts(Ljava/lang/String;ILjava/lang/String;)V

    .line 289
    return-void
.end method

.method public updateModel(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverComparator;->updateModel(Landroid/content/ComponentName;)V

    .line 285
    return-void
.end method
