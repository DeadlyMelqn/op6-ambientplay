.class Lcom/android/systemui/qs/customize/QSEditTileAdapter$1;
.super Ljava/lang/Object;
.source "QSEditTileAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/QSEditTileAdapter;->onBindViewHolder(Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$1;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 78
    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 79
    .local v0, "data":Landroid/content/ClipData;
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$1;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    new-instance v3, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v3, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-static {v2, v3}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-set5(Lcom/android/systemui/qs/customize/QSEditTileAdapter;Landroid/view/View$DragShadowBuilder;)Landroid/view/View$DragShadowBuilder;

    .line 80
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$1;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get12(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Landroid/view/View$DragShadowBuilder;

    move-result-object v2

    invoke-virtual {p1, v0, v2, p1, v4}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;

    .line 82
    .local v1, "holder":Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;
    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->setVisible(Z)V

    .line 83
    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->-get0(Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-set4(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 85
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$1;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, v3, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-set2(I)I

    .line 87
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$1;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/QSEditPageManager;->beginDragAndDrop()V

    .line 88
    const/4 v2, 0x1

    return v2
.end method
