.class public Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;
.super Landroid/widget/BaseAdapter;
.source "OPGameAndReadPickAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;
    }
.end annotation


# instance fields
.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mAppType:I

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSelectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/better/OPAppModel;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mAppList:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mSelectedList:Ljava/util/List;

    .line 30
    iput-object p2, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mAppList:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mContext:Landroid/content/Context;

    .line 32
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 33
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGameAPP(I)Z
    .locals 1
    .param p1, "isGameAPP"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mSelectedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/oneplus/settings/better/OPAppModel;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/better/OPAppModel;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->getItem(I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 81
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelected(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mSelectedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0f0493

    const/16 v4, 0x44

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "mItemViewHolder":Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;
    iget-object v2, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/better/OPAppModel;

    .line 89
    .local v1, "model":Lcom/oneplus/settings/better/OPAppModel;
    if-nez p2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 91
    const v3, 0x7f0400f3

    .line 90
    invoke-virtual {v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 92
    new-instance v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;

    .end local v0    # "mItemViewHolder":Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;
    invoke-direct {v0, p0}, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;-><init>(Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;)V

    .line 94
    .local v0, "mItemViewHolder":Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;
    const v2, 0x7f0a0243

    .line 93
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->parent:Landroid/widget/RelativeLayout;

    .line 96
    const v2, 0x7f0a0242

    .line 95
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    .line 98
    const v2, 0x7f0a0002

    .line 97
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    .line 100
    const v2, 0x7f0a0165

    .line 99
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    .line 102
    const v2, 0x7f0a0103

    .line 101
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->summaryTv:Landroid/widget/TextView;

    .line 103
    const v2, 0x7f0a0245

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    .line 105
    const v2, 0x7f0a0241

    .line 104
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->groupDivider:Landroid/view/View;

    .line 107
    const v2, 0x7f0a0244

    .line 106
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 108
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 112
    :goto_0
    if-nez p1, :cond_3

    .line 113
    iget-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget v2, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mAppType:I

    if-ne v2, v4, :cond_2

    .line 115
    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->isGameAPP()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    iget-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const v3, 0x7f0f0492

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 139
    :goto_1
    iget-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    iget-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->groupDivider:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 147
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->getSelected(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 148
    iget-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 152
    :goto_2
    return-object p2

    .line 110
    .local v0, "mItemViewHolder":Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "mItemViewHolder":Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;
    check-cast v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;

    .local v0, "mItemViewHolder":Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;
    goto :goto_0

    .line 118
    :cond_1
    iget-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 121
    :cond_2
    iget-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const v3, 0x7f0f041c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 124
    :cond_3
    iget v2, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mAppType:I

    if-ne v2, v4, :cond_6

    .line 125
    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->isGameAPP()Z

    move-result v2

    if-nez v2, :cond_4

    .line 126
    iget-object v2, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mAppList:Ljava/util/List;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->isGameAPP()Z

    move-result v2

    .line 125
    if-eqz v2, :cond_4

    .line 127
    iget-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 129
    :cond_4
    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->isGameAPP()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 130
    iget-object v2, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mAppList:Ljava/util/List;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->isGameAPP()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 129
    if-eqz v2, :cond_5

    .line 131
    iget-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 133
    :cond_5
    iget-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 136
    :cond_6
    iget-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 150
    :cond_7
    iget-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2
.end method

.method public setAppType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mAppType:I

    .line 55
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/better/OPAppModel;>;"
    iput-object p1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mAppList:Ljava/util/List;

    .line 37
    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mSelectedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 38
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 39
    iget-object v2, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mSelectedList:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->isSelected()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->notifyDataSetChanged()V

    .line 42
    return-void
.end method

.method public setGameAPP(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "isGameAPP"    # Z

    .prologue
    .line 58
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mSelectedList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->notifyDataSetChanged()V

    .line 60
    return-void
.end method

.method public setSelected(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "selected"    # Z

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mSelectedList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->notifyDataSetChanged()V

    .line 47
    return-void
.end method
