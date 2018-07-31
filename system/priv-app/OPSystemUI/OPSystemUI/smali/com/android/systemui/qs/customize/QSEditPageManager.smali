.class public Lcom/android/systemui/qs/customize/QSEditPageManager;
.super Ljava/lang/Object;
.source "QSEditPageManager.java"

# interfaces
.implements Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAllTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDragLabel:Landroid/widget/TextView;

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mLowerLocations:Lcom/android/systemui/qs/customize/ItemLocations;

.field private mLowerPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

.field private mLowerTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSource:Landroid/support/v7/widget/RecyclerView;

.field mTarget:Landroid/support/v7/widget/RecyclerView;

.field private mUpperLocations:Lcom/android/systemui/qs/customize/ItemLocations;

.field private mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

.field private mUpperTiles:Ljava/util/List;
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
.method static synthetic -get0(Lcom/android/systemui/qs/customize/QSEditPageManager;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/QSEditPageManager;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "QSEditPageManager"

    sput-object v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/customize/QSEditViewPager;Lcom/android/systemui/qs/customize/QSEditViewPager;Landroid/widget/TextView;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "upperPager"    # Lcom/android/systemui/qs/customize/QSEditViewPager;
    .param p3, "lowerPager"    # Lcom/android/systemui/qs/customize/QSEditViewPager;
    .param p4, "dragLabel"    # Landroid/widget/TextView;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperTiles:Ljava/util/List;

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    .line 35
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    .line 36
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroid/support/v7/widget/RecyclerView;

    .line 40
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    .line 42
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    .line 43
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mDragLabel:Landroid/widget/TextView;

    .line 45
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f070379

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 46
    .local v2, "width":I
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f070377

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 47
    .local v3, "height":I
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f070378

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 48
    .local v4, "margin":I
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f0b0057

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 49
    .local v5, "columns":I
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f0b005a

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 50
    .local v6, "rows":I
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f0b0059

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 52
    .local v12, "lower_rows":I
    new-instance v1, Lcom/android/systemui/qs/customize/ItemLocations;

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/qs/customize/ItemLocations;-><init>(IIIII)V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    .line 53
    new-instance v7, Lcom/android/systemui/qs/customize/ItemLocations;

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/qs/customize/ItemLocations;-><init>(IIIII)V

    iput-object v7, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    .line 54
    return-void
.end method

.method private addPage(Lcom/android/systemui/qs/customize/QSEditViewPager;Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "pager"    # Lcom/android/systemui/qs/customize/QSEditViewPager;
    .param p2, "page"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 123
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSEditPageAdapter;

    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/customize/QSEditPageAdapter;->addPage(Landroid/support/v7/widget/RecyclerView;)V

    .line 124
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/QSEditViewPager;->updateIndicator()V

    .line 125
    return-void
.end method

.method private fillPager(Lcom/android/systemui/qs/customize/QSEditViewPager;Ljava/util/List;Lcom/android/systemui/qs/customize/ItemLocations;)V
    .locals 12
    .param p1, "pager"    # Lcom/android/systemui/qs/customize/QSEditViewPager;
    .param p3, "itemLocations"    # Lcom/android/systemui/qs/customize/ItemLocations;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/customize/QSEditViewPager;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;",
            "Lcom/android/systemui/qs/customize/ItemLocations;",
            ")V"
        }
    .end annotation

    .prologue
    .line 180
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;>;"
    invoke-virtual {p3}, Lcom/android/systemui/qs/customize/ItemLocations;->getMaxItems()I

    move-result v3

    .line 181
    .local v3, "maxPageItems":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    int-to-double v8, v7

    int-to-double v10, v3

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v4, v8

    .line 182
    .local v4, "pages":I
    new-instance v7, Lcom/android/systemui/qs/customize/QSEditPageAdapter;

    invoke-direct {v7}, Lcom/android/systemui/qs/customize/QSEditPageAdapter;-><init>()V

    invoke-virtual {p1, v7}, Lcom/android/systemui/qs/customize/QSEditViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 184
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 185
    new-instance v5, Landroid/support/v7/widget/RecyclerView;

    iget-object v7, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 186
    .local v5, "rv":Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/support/v7/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 188
    mul-int v6, v1, v3

    .line 189
    .local v6, "start":I
    add-int v7, v6, v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 190
    .local v0, "end":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {p2, v6, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v5, v7, p3, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->setupRecyclerView(Landroid/support/v7/widget/RecyclerView;Ljava/util/List;Lcom/android/systemui/qs/customize/ItemLocations;Lcom/android/systemui/qs/customize/QSEditViewPager;)V

    .line 193
    add-int/lit8 v7, v4, -0x1

    if-ne v1, v7, :cond_0

    add-int v7, v6, v3

    if-ne v0, v7, :cond_0

    .line 194
    new-instance v2, Landroid/support/v7/widget/RecyclerView;

    iget-object v7, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 195
    .local v2, "lastEmptyPage":Landroid/support/v7/widget/RecyclerView;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/support/v7/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 196
    const/4 v7, 0x0

    invoke-direct {p0, v2, v7, p3, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->setupRecyclerView(Landroid/support/v7/widget/RecyclerView;Ljava/util/List;Lcom/android/systemui/qs/customize/ItemLocations;Lcom/android/systemui/qs/customize/QSEditViewPager;)V

    .line 184
    .end local v2    # "lastEmptyPage":Landroid/support/v7/widget/RecyclerView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .end local v0    # "end":I
    .end local v5    # "rv":Landroid/support/v7/widget/RecyclerView;
    .end local v6    # "start":I
    :cond_1
    if-nez v4, :cond_2

    .line 202
    new-instance v5, Landroid/support/v7/widget/RecyclerView;

    iget-object v7, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 203
    .restart local v5    # "rv":Landroid/support/v7/widget/RecyclerView;
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/support/v7/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 204
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v5, v7, p3, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->setupRecyclerView(Landroid/support/v7/widget/RecyclerView;Ljava/util/List;Lcom/android/systemui/qs/customize/ItemLocations;Lcom/android/systemui/qs/customize/QSEditViewPager;)V

    .line 206
    .end local v5    # "rv":Landroid/support/v7/widget/RecyclerView;
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lcom/android/systemui/qs/customize/QSEditViewPager;->setCurrentItem(I)V

    .line 207
    return-void
.end method

.method private getAndRemoveLower(Ljava/lang/String;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 477
    const/4 v0, 0x0

    .line 479
    .local v0, "i":I
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 480
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v2, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 481
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 479
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 484
    :catch_0
    move-exception v1

    .line 485
    .local v1, "npe":Ljava/lang/NullPointerException;
    sget-object v2, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAndRemoveLower: number of tiles="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", i="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/customize/QSEditPageManager;->printTiles(Ljava/util/List;)V

    .line 487
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mAllTiles:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/customize/QSEditPageManager;->printTiles(Ljava/util/List;)V

    .line 488
    throw v1

    .line 490
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p1, "pager"    # Lcom/android/systemui/qs/customize/QSEditViewPager;
    .param p2, "pageIndex"    # I

    .prologue
    .line 133
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSEditPageAdapter;

    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/customize/QSEditPageAdapter;->getPage(I)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method private getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I
    .locals 1
    .param p1, "pager"    # Lcom/android/systemui/qs/customize/QSEditViewPager;

    .prologue
    .line 145
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method private getPager(Landroid/support/v7/widget/RecyclerView;)Lcom/android/systemui/qs/customize/QSEditViewPager;
    .locals 1
    .param p1, "page"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isInUpperPage(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    return-object v0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    return-object v0
.end method

.method private printTiles(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 494
    .local p1, "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 496
    const-string/jumbo v3, ":tile "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 498
    const-string/jumbo v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 500
    .local v2, "tile":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    if-eqz v2, :cond_0

    .line 501
    iget-object v3, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 503
    :cond_0
    const-string/jumbo v3, "NULL"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 506
    .end local v2    # "tile":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    :cond_1
    sget-object v3, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "printTiles: tiles size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    return-void
.end method

.method private removePage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)V
    .locals 1
    .param p1, "pager"    # Lcom/android/systemui/qs/customize/QSEditViewPager;
    .param p2, "pageIndex"    # I

    .prologue
    .line 128
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSEditPageAdapter;

    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/customize/QSEditPageAdapter;->removePage(I)V

    .line 129
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/QSEditViewPager;->updateIndicator()V

    .line 130
    return-void
.end method

.method private setupRecyclerView(Landroid/support/v7/widget/RecyclerView;Ljava/util/List;Lcom/android/systemui/qs/customize/ItemLocations;Lcom/android/systemui/qs/customize/QSEditViewPager;)V
    .locals 4
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "itemLocations"    # Lcom/android/systemui/qs/customize/ItemLocations;
    .param p4, "pager"    # Lcom/android/systemui/qs/customize/QSEditViewPager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;",
            "Lcom/android/systemui/qs/customize/ItemLocations;",
            "Lcom/android/systemui/qs/customize/QSEditViewPager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;>;"
    new-instance v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-direct {v0, p2, p3, p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;-><init>(Ljava/util/List;Lcom/android/systemui/qs/customize/ItemLocations;Lcom/android/systemui/qs/customize/QSEditPageManager;)V

    .line 64
    .local v0, "adapter":Lcom/android/systemui/qs/customize/QSEditTileAdapter;
    new-instance v1, Lcom/android/systemui/qs/customize/QSEditPageManager$1;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/android/systemui/qs/customize/ItemLocations;->getColumns()I

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/qs/customize/QSEditPageManager$1;-><init>(Lcom/android/systemui/qs/customize/QSEditPageManager;Landroid/content/Context;I)V

    .line 63
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 80
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 81
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getDragInstance()Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 83
    invoke-direct {p0, p4, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->addPage(Lcom/android/systemui/qs/customize/QSEditViewPager;Landroid/support/v7/widget/RecyclerView;)V

    .line 84
    return-void
.end method


# virtual methods
.method public beginDragAndDrop()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mDragLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1101fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method

.method public calculateItemLocation()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 467
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 468
    .local v0, "location":[I
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getLocationOnScreen([I)V

    .line 469
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    aget v2, v0, v5

    aget v3, v0, v6

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v4}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getWidth()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/qs/customize/ItemLocations;->setParentLocation(III)V

    .line 470
    sget-object v1, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mUpperPager="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getLocationOnScreen([I)V

    .line 472
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    aget v2, v0, v5

    aget v3, v0, v6

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v4}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getWidth()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/qs/customize/ItemLocations;->setParentLocation(III)V

    .line 473
    sget-object v1, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mLowerPager="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return-void
.end method

.method public canScrollToNextPage()Z
    .locals 4

    .prologue
    .line 100
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getCurrentItem()I

    move-result v0

    .line 101
    .local v0, "currentPage":I
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    .line 102
    .local v1, "nextPage":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isPageEmpty(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    const/4 v2, 0x1

    return v2

    .line 105
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public endDragAndDrop()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mDragLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1101fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method

.method public getItemLocations(Landroid/support/v7/widget/RecyclerView;)Lcom/android/systemui/qs/customize/ItemLocations;
    .locals 1
    .param p1, "page"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 176
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemLocations()Lcom/android/systemui/qs/customize/ItemLocations;

    move-result-object v0

    return-object v0
.end method

.method public isInLowerPage(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .param p1, "page"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSEditPageAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/QSEditPageAdapter;->containsPage(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    return v0
.end method

.method public isInUpperPage(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .param p1, "page"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSEditPageAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/QSEditPageAdapter;->containsPage(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    return v0
.end method

.method public isPageEmpty(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .param p1, "page"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->isPageEmpty()Z

    move-result v0

    return v0
.end method

.method public isPageFull(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .param p1, "page"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->isPageFull()Z

    move-result v0

    return v0
.end method

.method public isPageMoreThanFull(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .param p1, "page"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->isPageMoreThanFull()Z

    move-result v0

    return v0
.end method

.method public onAfterItemAdded(Landroid/support/v7/widget/RecyclerView;)V
    .locals 7
    .param p1, "page"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPager(Landroid/support/v7/widget/RecyclerView;)Lcom/android/systemui/qs/customize/QSEditViewPager;

    move-result-object v3

    .line 284
    .local v3, "pager":Lcom/android/systemui/qs/customize/QSEditViewPager;
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getItemLocations(Landroid/support/v7/widget/RecyclerView;)Lcom/android/systemui/qs/customize/ItemLocations;

    move-result-object v0

    .line 286
    .local v0, "itemLocations":Lcom/android/systemui/qs/customize/ItemLocations;
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    .line 287
    .local v1, "lastPage":Landroid/support/v7/widget/RecyclerView;
    sget-object v5, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onAfterItemAdded:items="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-virtual {v4}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemCount()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isPageFull(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 290
    sget-object v4, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onAfterItemAdded:page is full, add an empty page"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v2, Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 292
    .local v2, "newPage":Landroid/support/v7/widget/RecyclerView;
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 293
    const/4 v4, 0x0

    invoke-direct {p0, v2, v4, v0, v3}, Lcom/android/systemui/qs/customize/QSEditPageManager;->setupRecyclerView(Landroid/support/v7/widget/RecyclerView;Ljava/util/List;Lcom/android/systemui/qs/customize/ItemLocations;Lcom/android/systemui/qs/customize/QSEditViewPager;)V

    .line 294
    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 296
    .end local v2    # "newPage":Landroid/support/v7/widget/RecyclerView;
    :cond_0
    return-void
.end method

.method public onAfterItemRemoved(Landroid/support/v7/widget/RecyclerView;)V
    .locals 5
    .param p1, "page"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPager(Landroid/support/v7/widget/RecyclerView;)Lcom/android/systemui/qs/customize/QSEditViewPager;

    move-result-object v1

    .line 301
    .local v1, "pager":Lcom/android/systemui/qs/customize/QSEditViewPager;
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 302
    return-void

    .line 305
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 306
    .local v0, "lastPage":Landroid/support/v7/widget/RecyclerView;
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    .line 308
    .local v2, "preLastPage":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isPageFull(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 309
    sget-object v3, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onAfterItemRemoved:remove the empty page"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/qs/customize/QSEditPageManager;->removePage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)V

    .line 311
    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 313
    :cond_1
    return-void
.end method

.method public onBeforeItemAdded(Landroid/support/v7/widget/RecyclerView;)V
    .locals 13
    .param p1, "page"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    const/4 v12, 0x0

    .line 215
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPager(Landroid/support/v7/widget/RecyclerView;)Lcom/android/systemui/qs/customize/QSEditViewPager;

    move-result-object v8

    .line 216
    .local v8, "pager":Lcom/android/systemui/qs/customize/QSEditViewPager;
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getItemLocations(Landroid/support/v7/widget/RecyclerView;)Lcom/android/systemui/qs/customize/ItemLocations;

    move-result-object v5

    .line 217
    .local v5, "itemLocations":Lcom/android/systemui/qs/customize/ItemLocations;
    sget-object v10, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onBeforeItemAdded:items="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-virtual {v9}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemCount()I

    move-result v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isPageFull(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 221
    sget-object v9, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "onBeforeItemAdded:page is full, move last item to the next page"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 225
    .local v2, "currentPageIndex":I
    add-int/lit8 v3, v2, 0x1

    .local v3, "i":I
    :goto_0
    invoke-direct {p0, v8}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 226
    invoke-direct {p0, v8, v3}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroid/support/v7/widget/RecyclerView;

    move-result-object v7

    .line 227
    .local v7, "nextPage":Landroid/support/v7/widget/RecyclerView;
    add-int/lit8 v9, v3, -0x1

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    .line 229
    .local v1, "currentPage":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    .line 230
    .local v0, "adapter":Lcom/android/systemui/qs/customize/QSEditTileAdapter;
    const/4 v4, 0x0

    .line 232
    .local v4, "item":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    add-int/lit8 v9, v2, 0x1

    if-ne v3, v9, :cond_2

    .line 233
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/ItemLocations;->getMaxItems()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "item":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    check-cast v4, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 234
    .local v4, "item":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/ItemLocations;->getMaxItems()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v0, v9}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->notifyItemRemoved(I)V

    .line 242
    .end local v4    # "item":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    :cond_0
    :goto_1
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    .line 243
    .local v6, "nextAdapter":Lcom/android/systemui/qs/customize/QSEditTileAdapter;
    if-eqz v4, :cond_1

    .line 244
    invoke-virtual {v6}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v12, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 245
    invoke-virtual {v6, v12}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->notifyItemInserted(I)V

    .line 225
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 237
    .end local v6    # "nextAdapter":Lcom/android/systemui/qs/customize/QSEditTileAdapter;
    .local v4, "item":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemCount()I

    move-result v9

    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/ItemLocations;->getMaxItems()I

    move-result v10

    if-le v9, v10, :cond_0

    .line 238
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/ItemLocations;->getMaxItems()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "item":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    check-cast v4, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 239
    .local v4, "item":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/ItemLocations;->getMaxItems()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->notifyItemRemoved(I)V

    goto :goto_1

    .line 249
    .end local v0    # "adapter":Lcom/android/systemui/qs/customize/QSEditTileAdapter;
    .end local v1    # "currentPage":Landroid/support/v7/widget/RecyclerView;
    .end local v2    # "currentPageIndex":I
    .end local v3    # "i":I
    .end local v4    # "item":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    .end local v7    # "nextPage":Landroid/support/v7/widget/RecyclerView;
    :cond_3
    return-void
.end method

.method public onBeforeItemRemoved(Landroid/support/v7/widget/RecyclerView;)V
    .locals 10
    .param p1, "page"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    const/4 v9, 0x0

    .line 256
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPager(Landroid/support/v7/widget/RecyclerView;)Lcom/android/systemui/qs/customize/QSEditViewPager;

    move-result-object v7

    .line 259
    .local v7, "pager":Lcom/android/systemui/qs/customize/QSEditViewPager;
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isPageFull(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 260
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 261
    .local v2, "currentPageIndex":I
    invoke-direct {p0, v7}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v2, v8, :cond_1

    .line 263
    add-int/lit8 v3, v2, 0x1

    .local v3, "i":I
    :goto_0
    invoke-direct {p0, v7}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 264
    invoke-direct {p0, v7, v3}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    .line 265
    .local v6, "nextPage":Landroid/support/v7/widget/RecyclerView;
    add-int/lit8 v8, v3, -0x1

    invoke-direct {p0, v7, v8}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    .line 266
    .local v1, "currentPage":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    .line 267
    .local v5, "nextAdapter":Lcom/android/systemui/qs/customize/QSEditTileAdapter;
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    .line 270
    .local v0, "adapter":Lcom/android/systemui/qs/customize/QSEditTileAdapter;
    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemCount()I

    move-result v8

    if-lez v8, :cond_0

    .line 271
    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 272
    .local v4, "item":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    invoke-virtual {v5, v9}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->notifyItemRemoved(I)V

    .line 274
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v8}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->notifyItemInserted(I)V

    .line 263
    .end local v4    # "item":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 280
    .end local v0    # "adapter":Lcom/android/systemui/qs/customize/QSEditTileAdapter;
    .end local v1    # "currentPage":Landroid/support/v7/widget/RecyclerView;
    .end local v2    # "currentPageIndex":I
    .end local v3    # "i":I
    .end local v5    # "nextAdapter":Lcom/android/systemui/qs/customize/QSEditTileAdapter;
    .end local v6    # "nextPage":Landroid/support/v7/widget/RecyclerView;
    :cond_1
    return-void
.end method

.method public onTilesChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 386
    .local p1, "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;>;"
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mAllTiles:Ljava/util/List;

    .line 387
    return-void
.end method

.method public rebuildPager(Landroid/support/v7/widget/RecyclerView;)I
    .locals 13
    .param p1, "page"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    const/4 v12, 0x0

    .line 319
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPager(Landroid/support/v7/widget/RecyclerView;)Lcom/android/systemui/qs/customize/QSEditViewPager;

    move-result-object v8

    .line 320
    .local v8, "pager":Lcom/android/systemui/qs/customize/QSEditViewPager;
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getItemLocations(Landroid/support/v7/widget/RecyclerView;)Lcom/android/systemui/qs/customize/ItemLocations;

    move-result-object v5

    .line 321
    .local v5, "itemLocations":Lcom/android/systemui/qs/customize/ItemLocations;
    invoke-direct {p0, v8}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I

    move-result v1

    .line 323
    .local v1, "count":I
    const/4 v9, 0x0

    .line 326
    .local v9, "retVal":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    add-int/lit8 v10, v1, -0x1

    if-ge v3, v10, :cond_2

    .line 327
    invoke-direct {p0, v8, v3}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    .line 328
    .local v2, "currentPage":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    .line 330
    .local v0, "adapter":Lcom/android/systemui/qs/customize/QSEditTileAdapter;
    add-int/lit8 v10, v3, 0x1

    invoke-direct {p0, v8, v10}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroid/support/v7/widget/RecyclerView;

    move-result-object v7

    .line 331
    .local v7, "nextPage":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    .line 335
    .local v6, "nextAdapter":Lcom/android/systemui/qs/customize/QSEditTileAdapter;
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isPageMoreThanFull(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 336
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/ItemLocations;->getMaxItems()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 337
    .local v4, "item":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/ItemLocations;->getMaxItems()I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->notifyItemRemoved(I)V

    .line 339
    invoke-virtual {v6}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v12, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 340
    invoke-virtual {v6, v12}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->notifyItemInserted(I)V

    .line 341
    const/4 v9, -0x1

    .line 326
    .end local v4    # "item":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 344
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isPageFull(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 345
    invoke-virtual {v6}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 346
    .restart local v4    # "item":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    invoke-virtual {v6, v12}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->notifyItemRemoved(I)V

    .line 348
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v10}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->notifyItemInserted(I)V

    .line 350
    const/4 v9, 0x1

    goto :goto_1

    .line 374
    .end local v0    # "adapter":Lcom/android/systemui/qs/customize/QSEditTileAdapter;
    .end local v2    # "currentPage":Landroid/support/v7/widget/RecyclerView;
    .end local v4    # "item":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    .end local v6    # "nextAdapter":Lcom/android/systemui/qs/customize/QSEditTileAdapter;
    .end local v7    # "nextPage":Landroid/support/v7/widget/RecyclerView;
    :cond_2
    return v9
.end method

.method public recalcSpecs()V
    .locals 6

    .prologue
    .line 437
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCurrentSpecs:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mAllTiles:Ljava/util/List;

    if-nez v3, :cond_1

    .line 438
    :cond_0
    return-void

    .line 440
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mAllTiles:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    .line 441
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperTiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 442
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 443
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getAndRemoveLower(Ljava/lang/String;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    move-result-object v2

    .line 444
    .local v2, "tile":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    if-eqz v2, :cond_2

    .line 445
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperTiles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 450
    .end local v2    # "tile":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 451
    .local v1, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;>;"
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 452
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 453
    .restart local v2    # "tile":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    iget-boolean v3, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    if-nez v3, :cond_4

    .line 454
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 458
    .end local v2    # "tile":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 459
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 461
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperTiles:Ljava/util/List;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/systemui/qs/customize/QSEditPageManager;->fillPager(Lcom/android/systemui/qs/customize/QSEditViewPager;Ljava/util/List;Lcom/android/systemui/qs/customize/ItemLocations;)V

    .line 462
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/systemui/qs/customize/QSEditPageManager;->fillPager(Lcom/android/systemui/qs/customize/QSEditViewPager;Ljava/util/List;Lcom/android/systemui/qs/customize/ItemLocations;)V

    .line 463
    return-void
.end method

.method public resetTileSpecs(Lcom/android/systemui/qs/QSTileHost;Ljava/util/List;)V
    .locals 3
    .param p1, "host"    # Lcom/android/systemui/qs/QSTileHost;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTileHost;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 423
    .local p2, "specs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetTileSpecs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    .line 425
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/customize/QSEditPageManager;->setTileSpecs(Ljava/util/List;)V

    .line 426
    return-void
.end method

.method public saveSpecs(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 10
    .param p1, "host"    # Lcom/android/systemui/qs/QSTileHost;

    .prologue
    .line 400
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v3, "newSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-direct {p0, v7}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I

    move-result v5

    .line 407
    .local v5, "pageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 408
    iget-object v7, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-direct {p0, v7, v1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    .line 409
    .local v4, "page":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    .line 410
    .local v0, "adapter":Lcom/android/systemui/qs/customize/QSEditTileAdapter;
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v6

    .line 411
    .local v6, "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 412
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v7, v7, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 407
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 416
    .end local v0    # "adapter":Lcom/android/systemui/qs/customize/QSEditTileAdapter;
    .end local v2    # "j":I
    .end local v4    # "page":Landroid/support/v7/widget/RecyclerView;
    .end local v6    # "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;>;"
    :cond_1
    sget-object v7, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "newSpecs="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v7, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {p1, v7, v3}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    .line 418
    iput-object v3, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCurrentSpecs:Ljava/util/List;

    .line 419
    return-void
.end method

.method public scrollNextPage()V
    .locals 4

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getCurrentItem()I

    move-result v0

    .line 110
    .local v0, "currentPage":I
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/qs/customize/QSEditViewPager;->setCurrentItem(IZ)V

    .line 113
    :cond_0
    return-void
.end method

.method public scrollPrevPage()V
    .locals 4

    .prologue
    .line 116
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getCurrentItem()I

    move-result v0

    .line 117
    .local v0, "currentPage":I
    if-lez v0, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/qs/customize/QSEditViewPager;->setCurrentItem(IZ)V

    .line 120
    :cond_0
    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0
    .param p1, "host"    # Lcom/android/systemui/qs/QSTileHost;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 382
    return-void
.end method

.method public setLayoutRTL(Z)V
    .locals 1
    .param p1, "isRTL"    # Z

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/ItemLocations;->setLayoutRTL(Z)V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/ItemLocations;->setLayoutRTL(Z)V

    .line 59
    return-void
.end method

.method public setTileSpecs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 429
    .local p1, "currentSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 432
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCurrentSpecs:Ljava/util/List;

    .line 433
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->recalcSpecs()V

    .line 434
    return-void
.end method
