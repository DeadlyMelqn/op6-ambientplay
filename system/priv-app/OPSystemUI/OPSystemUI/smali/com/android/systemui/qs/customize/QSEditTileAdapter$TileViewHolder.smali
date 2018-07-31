.class public Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "QSEditTileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/QSEditTileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TileViewHolder"
.end annotation


# instance fields
.field private mData:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

.field private mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

.field final synthetic this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->mData:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;)Lcom/android/systemui/qs/customize/CustomizeTileView;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/systemui/qs/customize/QSEditTileAdapter;Landroid/view/View;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/QSEditTileAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 167
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    .line 168
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 165
    iput-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->mData:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 169
    instance-of v0, p2, Lcom/android/systemui/qs/customize/CustomizeTileView;

    if-eqz v0, :cond_0

    .line 170
    check-cast p2, Lcom/android/systemui/qs/customize/CustomizeTileView;

    .end local p2    # "itemView":Landroid/view/View;
    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    .line 171
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizeTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugins/qs/QSIconView;->disableAnimation()V

    .line 174
    :cond_0
    return-void
.end method


# virtual methods
.method public setData(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)V
    .locals 1
    .param p1, "data"    # Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->mData:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 190
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->mData:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-boolean v0, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isVisible:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->setVisible(Z)V

    .line 191
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->mData:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    if-nez v0, :cond_0

    .line 178
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->mData:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iput-boolean p1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isVisible:Z

    .line 181
    if-eqz p1, :cond_1

    .line 182
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setVisibility(I)V

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setVisibility(I)V

    goto :goto_0
.end method
