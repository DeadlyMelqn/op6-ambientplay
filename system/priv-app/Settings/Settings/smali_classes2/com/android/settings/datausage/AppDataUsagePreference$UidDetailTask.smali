.class Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;
.super Landroid/os/AsyncTask;
.source "AppDataUsagePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/AppDataUsagePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UidDetailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/settingslib/net/UidDetail;",
        ">;"
    }
.end annotation


# instance fields
.field private final mItem:Lcom/android/settingslib/AppItem;

.field private final mProvider:Lcom/android/settingslib/net/UidDetailProvider;

.field private final mTarget:Lcom/android/settings/datausage/AppDataUsagePreference;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/net/UidDetailProvider;Lcom/android/settingslib/AppItem;Lcom/android/settings/datausage/AppDataUsagePreference;)V
    .locals 1
    .param p1, "provider"    # Lcom/android/settingslib/net/UidDetailProvider;
    .param p2, "item"    # Lcom/android/settingslib/AppItem;
    .param p3, "target"    # Lcom/android/settings/datausage/AppDataUsagePreference;

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 88
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/net/UidDetailProvider;

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->mProvider:Lcom/android/settingslib/net/UidDetailProvider;

    .line 89
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/AppItem;

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->mItem:Lcom/android/settingslib/AppItem;

    .line 90
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/AppDataUsagePreference;

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->mTarget:Lcom/android/settings/datausage/AppDataUsagePreference;

    .line 91
    return-void
.end method

.method private static bindView(Lcom/android/settingslib/net/UidDetail;Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p0, "detail"    # Lcom/android/settingslib/net/UidDetail;
    .param p1, "target"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v0, 0x0

    .line 117
    if-eqz p0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 119
    iget-object v0, p0, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 122
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static bindView(Lcom/android/settingslib/net/UidDetailProvider;Lcom/android/settingslib/AppItem;Lcom/android/settings/datausage/AppDataUsagePreference;Ljava/util/concurrent/ExecutorService;)V
    .locals 4
    .param p0, "provider"    # Lcom/android/settingslib/net/UidDetailProvider;
    .param p1, "item"    # Lcom/android/settingslib/AppItem;
    .param p2, "target"    # Lcom/android/settings/datausage/AppDataUsagePreference;
    .param p3, "executor"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    const/4 v3, 0x0

    .line 95
    iget v2, p1, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {p0, v2, v3}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object v0

    .line 96
    .local v0, "cachedDetail":Lcom/android/settingslib/net/UidDetail;
    if-eqz v0, :cond_1

    .line 97
    invoke-static {v0, p2}, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->bindView(Lcom/android/settingslib/net/UidDetail;Landroid/support/v7/preference/Preference;)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    :try_start_0
    invoke-interface {p3}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    new-instance v2, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;-><init>(Lcom/android/settingslib/net/UidDetailProvider;Lcom/android/settingslib/AppItem;Lcom/android/settings/datausage/AppDataUsagePreference;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, p3, v3}, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "UidDetailTask"

    const-string/jumbo v3, "execute UidDetailTask error."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/settingslib/net/UidDetail;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->mProvider:Lcom/android/settingslib/net/UidDetailProvider;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->mItem:Lcom/android/settingslib/AppItem;

    iget v1, v1, Lcom/android/settingslib/AppItem;->key:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->doInBackground([Ljava/lang/Void;)Lcom/android/settingslib/net/UidDetail;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/settingslib/net/UidDetail;)V
    .locals 1
    .param p1, "result"    # Lcom/android/settingslib/net/UidDetail;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->mTarget:Lcom/android/settings/datausage/AppDataUsagePreference;

    invoke-static {p1, v0}, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->bindView(Lcom/android/settingslib/net/UidDetail;Landroid/support/v7/preference/Preference;)V

    .line 139
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 136
    check-cast p1, Lcom/android/settingslib/net/UidDetail;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->onPostExecute(Lcom/android/settingslib/net/UidDetail;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->mTarget:Lcom/android/settings/datausage/AppDataUsagePreference;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->bindView(Lcom/android/settingslib/net/UidDetail;Landroid/support/v7/preference/Preference;)V

    .line 129
    return-void
.end method
