.class public Lcom/android/systemui/qs/customize/QSEditTileAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "QSEditTileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;,
        Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static GO_NEXT_PAGE:I

.field private static GO_NONE_PAGE:I

.field private static GO_PREV_PAGE:I

.field private static SCROLL_PAGE_DELAY:I

.field private static TAG:Ljava/lang/String;

.field private static mGoToPage:I

.field private static mLastPageTime:J

.field private static mPositionSource:I

.field private static mPositionTarget:I

.field private static mSelectedItem:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mItemLocations:Lcom/android/systemui/qs/customize/ItemLocations;

.field private mManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

.field private mShadowBuilder:Landroid/view/View$DragShadowBuilder;

.field private mTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->GO_NEXT_PAGE:I

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->GO_NONE_PAGE:I

    return v0
.end method

.method static synthetic -get10()I
    .locals 1

    sget v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mPositionTarget:I

    return v0
.end method

.method static synthetic -get11()Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mSelectedItem:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Landroid/view/View$DragShadowBuilder;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mShadowBuilder:Landroid/view/View$DragShadowBuilder;

    return-object v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->GO_PREV_PAGE:I

    return v0
.end method

.method static synthetic -get3()I
    .locals 1

    sget v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->SCROLL_PAGE_DELAY:I

    return v0
.end method

.method static synthetic -get4()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5()I
    .locals 1

    sget v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mGoToPage:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7()J
    .locals 2

    sget-wide v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mLastPageTime:J

    return-wide v0
.end method

.method static synthetic -get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    return-object v0
.end method

.method static synthetic -get9()I
    .locals 1

    sget v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mPositionSource:I

    return v0
.end method

.method static synthetic -set0(I)I
    .locals 0
    .param p0, "-value"    # I

    .prologue
    sput p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mGoToPage:I

    return p0
.end method

.method static synthetic -set1(J)J
    .locals 0
    .param p0, "-value"    # J

    .prologue
    sput-wide p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mLastPageTime:J

    return-wide p0
.end method

.method static synthetic -set2(I)I
    .locals 0
    .param p0, "-value"    # I

    .prologue
    sput p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mPositionSource:I

    return p0
.end method

.method static synthetic -set3(I)I
    .locals 0
    .param p0, "-value"    # I

    .prologue
    sput p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mPositionTarget:I

    return p0
.end method

.method static synthetic -set4(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    .locals 0
    .param p0, "-value"    # Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .prologue
    sput-object p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mSelectedItem:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    return-object p0
.end method

.method static synthetic -set5(Lcom/android/systemui/qs/customize/QSEditTileAdapter;Landroid/view/View$DragShadowBuilder;)Landroid/view/View$DragShadowBuilder;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/QSEditTileAdapter;
    .param p1, "-value"    # Landroid/view/View$DragShadowBuilder;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mShadowBuilder:Landroid/view/View$DragShadowBuilder;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/customize/QSEditTileAdapter;Landroid/view/View;Landroid/view/DragEvent;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/QSEditTileAdapter;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getIndexInPage(Landroid/view/View;Landroid/view/DragEvent;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/customize/QSEditTileAdapter;Landroid/view/View;Landroid/view/DragEvent;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/QSEditTileAdapter;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getTargetPage(Landroid/view/View;Landroid/view/DragEvent;)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 31
    const-string/jumbo v0, "QSEditTileAdapter"

    sput-object v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->TAG:Ljava/lang/String;

    .line 32
    sput v2, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->GO_NONE_PAGE:I

    .line 33
    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->GO_NEXT_PAGE:I

    .line 34
    const/4 v0, 0x2

    sput v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->GO_PREV_PAGE:I

    .line 35
    const/16 v0, 0x3e8

    sput v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->SCROLL_PAGE_DELAY:I

    .line 195
    sput v1, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mPositionSource:I

    .line 196
    sput v1, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mPositionTarget:I

    .line 197
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mSelectedItem:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 198
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mLastPageTime:J

    .line 199
    sput v2, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mGoToPage:I

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/android/systemui/qs/customize/ItemLocations;Lcom/android/systemui/qs/customize/QSEditPageManager;)V
    .locals 1
    .param p2, "itemLocations"    # Lcom/android/systemui/qs/customize/ItemLocations;
    .param p3, "manager"    # Lcom/android/systemui/qs/customize/QSEditPageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;",
            "Lcom/android/systemui/qs/customize/ItemLocations;",
            "Lcom/android/systemui/qs/customize/QSEditPageManager;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "tileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;>;"
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mShadowBuilder:Landroid/view/View$DragShadowBuilder;

    .line 40
    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mItemLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    .line 41
    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mHandler:Landroid/os/Handler;

    .line 45
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mTiles:Ljava/util/List;

    .line 46
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mTiles:Ljava/util/List;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mTiles:Ljava/util/List;

    .line 49
    :cond_0
    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mItemLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    .line 50
    iput-object p3, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    .line 51
    return-void
.end method

.method private getIndexInPage(Landroid/view/View;Landroid/view/DragEvent;)I
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getTouchPositionFromDragEvent(Landroid/view/View;Landroid/view/DragEvent;)Landroid/graphics/Point;

    move-result-object v1

    .line 103
    .local v1, "p":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mItemLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/qs/customize/ItemLocations;->getPositionIndex(II)I

    move-result v0

    .line 105
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemCount()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 111
    :goto_0
    return v0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0
.end method

.method private getTargetPage(Landroid/view/View;Landroid/view/DragEvent;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getTouchPositionFromDragEvent(Landroid/view/View;Landroid/view/DragEvent;)Landroid/graphics/Point;

    move-result-object v0

    .line 120
    .local v0, "p":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mItemLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/customize/ItemLocations;->isGoingToNextPage(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    sget v1, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->GO_NEXT_PAGE:I

    return v1

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mItemLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/customize/ItemLocations;->isGoingToPrevPage(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    sget v1, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->GO_PREV_PAGE:I

    return v1

    .line 126
    :cond_1
    sget v1, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->GO_NONE_PAGE:I

    return v1
.end method

.method private getTouchPositionFromDragEvent(Landroid/view/View;Landroid/view/DragEvent;)Landroid/graphics/Point;
    .locals 5
    .param p1, "item"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 145
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 146
    .local v0, "rItem":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 147
    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method


# virtual methods
.method public getDragInstance()Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;
    .locals 1

    .prologue
    .line 151
    new-instance v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;-><init>(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mTiles:Ljava/util/List;

    return-object v0
.end method

.method public getItemLocations()Lcom/android/systemui/qs/customize/ItemLocations;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mItemLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    return-object v0
.end method

.method public isPageEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isPageFull()Z
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mItemLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/ItemLocations;->getMaxItems()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPageMoreThanFull()Z
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mItemLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/ItemLocations;->getMaxItems()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 66
    check-cast p1, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->onBindViewHolder(Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 68
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 69
    .local v0, "info":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->-get1(Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/customize/CustomizeTileView;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 70
    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->-get1(Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->appLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setAppLabel(Ljava/lang/CharSequence;)V

    .line 71
    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->-get1(Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v1

    iget-boolean v2, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setShowAppLabel(Z)V

    .line 72
    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->-get1(Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setTag(Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->setData(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)V

    .line 75
    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->-get1(Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/customize/QSEditTileAdapter$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$1;-><init>(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 91
    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->-get1(Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getDragInstance()Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 93
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;

    new-instance v2, Lcom/android/systemui/qs/customize/CustomizeTileView;

    new-instance v3, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-direct {v3, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/qs/customize/CustomizeTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;-><init>(Lcom/android/systemui/qs/customize/QSEditTileAdapter;Landroid/view/View;)V

    return-object v1
.end method
