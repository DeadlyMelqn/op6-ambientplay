.class public Lcom/android/settingslib/drawer/UserAdapter;
.super Ljava/lang/Object;
.source "UserAdapter.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/drawer/UserAdapter$UserDetails;
    }
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/drawer/UserAdapter$UserDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/drawer/UserAdapter$UserDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/UserAdapter$UserDetails;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    if-nez p2, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "A list of user details must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iput-object p2, p0, Lcom/android/settingslib/drawer/UserAdapter;->data:Ljava/util/ArrayList;

    .line 89
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settingslib/drawer/UserAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 90
    return-void
.end method

.method private createUser(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settingslib/drawer/UserAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/settingslib/R$layout;->user_preference:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static createUserAdapter(Landroid/os/UserManager;Landroid/content/Context;Ljava/util/List;)Lcom/android/settingslib/drawer/UserAdapter;
    .locals 9
    .param p0, "userManager"    # Landroid/os/UserManager;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserManager;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/os/UserHandle;",
            ">;)",
            "Lcom/android/settingslib/drawer/UserAdapter;"
        }
    .end annotation

    .prologue
    .line 217
    .local p2, "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 220
    .local v4, "userDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/UserAdapter$UserDetails;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 221
    .local v0, "count":I
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    .line 222
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v2, 0x0

    .line 223
    .local v2, "notShowProfiles":Z
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "userInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 224
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    const/16 v8, 0x3e7

    if-ne v7, v8, :cond_0

    .line 225
    const/4 v2, 0x1

    .line 229
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    if-eqz v2, :cond_2

    .line 230
    add-int/lit8 v0, v0, -0x1

    .line 233
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 234
    new-instance v8, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserHandle;

    invoke-direct {v8, v7, p0, p1}, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;-><init>(Landroid/os/UserHandle;Landroid/os/UserManager;Landroid/content/Context;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    :cond_3
    new-instance v7, Lcom/android/settingslib/drawer/UserAdapter;

    invoke-direct {v7, p1, v4}, Lcom/android/settingslib/drawer/UserAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-object v7
.end method

.method public static createUserSpinnerAdapter(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/settingslib/drawer/UserAdapter;
    .locals 7
    .param p0, "userManager"    # Landroid/os/UserManager;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 193
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    .line 195
    .local v4, "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    const/4 v0, 0x0

    .line 196
    .local v0, "hasMultiAppPrifile":Z
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "profile$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 197
    .local v2, "profile":Landroid/os/UserHandle;
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    const/16 v6, 0x3e7

    if-ne v5, v6, :cond_0

    .line 198
    const/4 v0, 0x1

    .line 202
    .end local v2    # "profile":Landroid/os/UserHandle;
    :cond_1
    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_3

    .line 204
    :cond_2
    const/4 v5, 0x0

    return-object v5

    .line 202
    :cond_3
    if-nez v0, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    .line 207
    :cond_4
    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-direct {v1, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 209
    .local v1, "myUserHandle":Landroid/os/UserHandle;
    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 210
    const/4 v5, 0x0

    invoke-interface {v4, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 212
    invoke-static {p0, p1, v4}, Lcom/android/settingslib/drawer/UserAdapter;->createUserAdapter(Landroid/os/UserManager;Landroid/content/Context;Ljava/util/List;)Lcom/android/settingslib/drawer/UserAdapter;

    move-result-object v5

    return-object v5
.end method

.method private getTitle(Lcom/android/settingslib/drawer/UserAdapter$UserDetails;)I
    .locals 2
    .param p1, "user"    # Lcom/android/settingslib/drawer/UserAdapter$UserDetails;

    .prologue
    .line 110
    invoke-static {p1}, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;->-get1(Lcom/android/settingslib/drawer/UserAdapter$UserDetails;)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 111
    .local v0, "userHandle":I
    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 112
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 113
    :cond_0
    sget v1, Lcom/android/settingslib/R$string;->category_personal:I

    return v1

    .line 115
    :cond_1
    sget v1, Lcom/android/settingslib/R$string;->category_work:I

    return v1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settingslib/drawer/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 101
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 103
    .local v0, "row":Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/drawer/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;

    .line 104
    .local v1, "user":Lcom/android/settingslib/drawer/UserAdapter$UserDetails;
    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;->-get0(Lcom/android/settingslib/drawer/UserAdapter$UserDetails;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/settingslib/drawer/UserAdapter;->getTitle(Lcom/android/settingslib/drawer/UserAdapter$UserDetails;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 106
    return-object v0

    .line 101
    .end local v0    # "row":Landroid/view/View;
    .end local v1    # "user":Lcom/android/settingslib/drawer/UserAdapter$UserDetails;
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/settingslib/drawer/UserAdapter;->createUser(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "row":Landroid/view/View;
    goto :goto_0
.end method

.method public getItem(I)Lcom/android/settingslib/drawer/UserAdapter$UserDetails;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/settingslib/drawer/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawer/UserAdapter;->getItem(I)Lcom/android/settingslib/drawer/UserAdapter$UserDetails;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settingslib/drawer/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;

    invoke-static {v0}, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;->-get1(Lcom/android/settingslib/drawer/UserAdapter$UserDetails;)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public getUserHandle(I)Landroid/os/UserHandle;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 93
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/drawer/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 94
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/drawer/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;

    invoke-static {v0}, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;->-get1(Lcom/android/settingslib/drawer/UserAdapter$UserDetails;)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 155
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settingslib/drawer/UserAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settingslib/drawer/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 126
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 131
    return-void
.end method
