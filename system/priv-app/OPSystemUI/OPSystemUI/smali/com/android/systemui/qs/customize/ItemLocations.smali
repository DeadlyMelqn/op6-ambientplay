.class public Lcom/android/systemui/qs/customize/ItemLocations;
.super Ljava/lang/Object;
.source "ItemLocations.java"


# static fields
.field private static DEBUG:Z

.field private static FLIP_PAGE_WIDTH:I

.field private static SCREEN_WIDTH:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mColumns:I

.field private mIsLayoutRTL:Z

.field private mItemHeight:I

.field private mItemLocations:[Landroid/graphics/Rect;

.field private mItemWidth:I

.field private mItems:I

.field private mMargin:I

.field private mParentLocation:Landroid/graphics/Point;

.field private mRows:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string/jumbo v0, "ItemLocations"

    sput-object v0, Lcom/android/systemui/qs/customize/ItemLocations;->TAG:Ljava/lang/String;

    .line 14
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/qs/customize/ItemLocations;->DEBUG:Z

    .line 22
    const/16 v0, 0x50

    sput v0, Lcom/android/systemui/qs/customize/ItemLocations;->FLIP_PAGE_WIDTH:I

    .line 23
    const/16 v0, 0x438

    sput v0, Lcom/android/systemui/qs/customize/ItemLocations;->SCREEN_WIDTH:I

    .line 12
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 2
    .param p1, "itemWidth"    # I
    .param p2, "itemHeight"    # I
    .param p3, "margin"    # I
    .param p4, "columns"    # I
    .param p5, "rows"    # I

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v1, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItems:I

    .line 24
    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mIsLayoutRTL:Z

    .line 34
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mParentLocation:Landroid/graphics/Point;

    .line 35
    iput p1, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItemWidth:I

    .line 36
    iput p2, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItemHeight:I

    .line 37
    iput p3, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mMargin:I

    .line 38
    iput p4, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mColumns:I

    .line 39
    iput p5, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mRows:I

    .line 41
    mul-int v0, p4, p5

    iput v0, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItems:I

    .line 42
    iget v0, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItems:I

    new-array v0, v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItemLocations:[Landroid/graphics/Rect;

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/ItemLocations;->initLocationItems()V

    .line 44
    return-void
.end method

.method private initLocationItems()V
    .locals 12

    .prologue
    .line 72
    const/4 v5, 0x0

    .line 73
    .local v5, "margin":I
    iget v8, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItemHeight:I

    iget v9, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mMargin:I

    mul-int/lit8 v9, v9, 0x2

    add-int v2, v8, v9

    .line 74
    .local v2, "itemHeight":I
    iget v8, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItemWidth:I

    iget v9, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mMargin:I

    mul-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    .line 76
    .local v3, "itemWidth":I
    const/4 v1, 0x0

    .line 78
    .local v1, "index":I
    sget-boolean v8, Lcom/android/systemui/qs/customize/ItemLocations;->DEBUG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/systemui/qs/customize/ItemLocations;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mItemWidth="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItemWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", mItemHeight="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItemHeight:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mParentLocation:Landroid/graphics/Point;

    iget v6, v8, Landroid/graphics/Point;->x:I

    .line 81
    .local v6, "x":I
    iget-object v8, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mParentLocation:Landroid/graphics/Point;

    iget v7, v8, Landroid/graphics/Point;->y:I

    .line 82
    .local v7, "y":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v8, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mRows:I

    if-ge v0, v8, :cond_4

    .line 84
    iget v8, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mRows:I

    add-int/lit8 v8, v8, -0x1

    if-ne v0, v8, :cond_1

    .line 85
    add-int/lit8 v2, v2, 0xa

    .line 87
    :cond_1
    add-int/lit8 v7, v7, 0x0

    .line 88
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget v8, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mColumns:I

    if-ge v4, v8, :cond_3

    .line 89
    add-int/lit8 v6, v6, 0x0

    .line 90
    iget-object v8, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItemLocations:[Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    add-int v10, v6, v3

    add-int v11, v7, v2

    invoke-direct {v9, v6, v7, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v9, v8, v1

    .line 91
    sget-boolean v8, Lcom/android/systemui/qs/customize/ItemLocations;->DEBUG:Z

    if-eqz v8, :cond_2

    sget-object v8, Lcom/android/systemui/qs/customize/ItemLocations;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Location="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItemLocations:[Landroid/graphics/Rect;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 93
    add-int/2addr v6, v3

    .line 94
    add-int/lit8 v6, v6, 0x0

    .line 88
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 96
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mParentLocation:Landroid/graphics/Point;

    iget v6, v8, Landroid/graphics/Point;->x:I

    .line 97
    add-int/2addr v7, v2

    .line 98
    add-int/lit8 v7, v7, 0x0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    .end local v4    # "j":I
    :cond_4
    return-void
.end method


# virtual methods
.method public getColumns()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mColumns:I

    return v0
.end method

.method public getMaxItems()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItems:I

    return v0
.end method

.method public getPositionIndex(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItems:I

    if-ge v0, v1, :cond_2

    .line 110
    iget-object v1, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItemLocations:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/ItemLocations;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget v1, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mColumns:I

    div-int v1, v0, v1

    iget v2, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mColumns:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mColumns:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mColumns:I

    rem-int v2, v0, v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 114
    :cond_0
    return v0

    .line 109
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method public isGoingToNextPage(I)Z
    .locals 4
    .param p1, "x"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/ItemLocations;->isLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    sget v2, Lcom/android/systemui/qs/customize/ItemLocations;->FLIP_PAGE_WIDTH:I

    if-ge p1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 133
    :cond_1
    sget v2, Lcom/android/systemui/qs/customize/ItemLocations;->SCREEN_WIDTH:I

    sget v3, Lcom/android/systemui/qs/customize/ItemLocations;->FLIP_PAGE_WIDTH:I

    sub-int/2addr v2, v3

    if-le p1, v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public isGoingToPrevPage(I)Z
    .locals 4
    .param p1, "x"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/ItemLocations;->isLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    sget v2, Lcom/android/systemui/qs/customize/ItemLocations;->SCREEN_WIDTH:I

    sget v3, Lcom/android/systemui/qs/customize/ItemLocations;->FLIP_PAGE_WIDTH:I

    sub-int/2addr v2, v3

    if-le p1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 140
    :cond_1
    sget v2, Lcom/android/systemui/qs/customize/ItemLocations;->FLIP_PAGE_WIDTH:I

    if-ge p1, v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public isLayoutRTL()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mIsLayoutRTL:Z

    return v0
.end method

.method public setLayoutRTL(Z)V
    .locals 0
    .param p1, "isRTL"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mIsLayoutRTL:Z

    .line 123
    return-void
.end method

.method public setParentLocation(III)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mParentLocation:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 53
    iget v0, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mColumns:I

    div-int v0, p3, v0

    iput v0, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItemWidth:I

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/ItemLocations;->initLocationItems()V

    .line 55
    return-void
.end method
