.class public abstract Lcom/android/settings/applications/AppLister;
.super Landroid/os/AsyncTask;
.source "AppLister.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/android/settings/applications/UserAppInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field protected final mPm:Lcom/android/settings/applications/PackageManagerWrapper;

.field protected final mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/PackageManagerWrapper;Landroid/os/UserManager;)V
    .locals 0
    .param p1, "packageManager"    # Lcom/android/settings/applications/PackageManagerWrapper;
    .param p2, "userManager"    # Landroid/os/UserManager;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/settings/applications/AppLister;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    .line 41
    iput-object p2, p0, Lcom/android/settings/applications/AppLister;->mUm:Landroid/os/UserManager;

    .line 42
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppLister;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/UserAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/UserAppInfo;>;"
    iget-object v6, p0, Lcom/android/settings/applications/AppLister;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "user$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 49
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget-object v7, p0, Lcom/android/settings/applications/AppLister;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    .line 51
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v6

    if-eqz v6, :cond_2

    const/high16 v6, 0x400000

    .line 49
    :goto_0
    const v8, 0x8200

    or-int/2addr v6, v8

    .line 52
    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    .line 49
    invoke-interface {v7, v6, v8}, Lcom/android/settings/applications/PackageManagerWrapper;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object v2

    .line 53
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 54
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppLister;->includeInCount(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 55
    new-instance v6, Lcom/android/settings/applications/UserAppInfo;

    invoke-direct {v6, v4, v0}, Lcom/android/settings/applications/UserAppInfo;-><init>(Landroid/content/pm/UserInfo;Landroid/content/pm/ApplicationInfo;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 51
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 59
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_3
    return-object v3
.end method

.method protected abstract includeInCount(Landroid/content/pm/ApplicationInfo;)Z
.end method

.method protected abstract onAppListBuilt(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/UserAppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 62
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppLister;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/UserAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/UserAppInfo;>;"
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppLister;->onAppListBuilt(Ljava/util/List;)V

    .line 65
    return-void
.end method
