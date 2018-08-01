.class Lcom/android/systemui/statusbar/car/CarNavigationBarController;
.super Ljava/lang/Object;
.source "CarNavigationBarController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentFacetIndex:I

.field private final mFacetCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFacetCategoryMap:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFacetHasMultipleAppsCache:Landroid/util/SparseBooleanArray;

.field private final mFacetPackageMap:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFacetPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNavBar:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

.field private final mNavButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/car/CarNavigationButton;",
            ">;"
        }
    .end annotation
.end field

.field private mPersistentTaskIntent:Landroid/content/Intent;

.field private final mStatusBar:Lcom/android/systemui/statusbar/car/CarStatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/car/CarNavigationBarView;Lcom/android/systemui/statusbar/car/CarStatusBar;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "navBar"    # Lcom/android/systemui/statusbar/car/CarNavigationBarView;
    .param p3, "activityStarter"    # Lcom/android/systemui/statusbar/car/CarStatusBar;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategories:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackages:Ljava/util/List;

    .line 72
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategoryMap:Landroid/support/v4/util/SimpleArrayMap;

    .line 73
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackageMap:Landroid/support/v4/util/SimpleArrayMap;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mNavButtons:Ljava/util/List;

    .line 77
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetHasMultipleAppsCache:Landroid/util/SparseBooleanArray;

    .line 84
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mNavBar:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    .line 86
    iput-object p3, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mStatusBar:Lcom/android/systemui/statusbar/car/CarStatusBar;

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->bind()V

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->setupPersistentDockedTask()V

    .line 92
    :cond_0
    return-void
.end method

.method private bind()V
    .locals 13

    .prologue
    .line 144
    iget-object v10, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 146
    .local v8, "res":Landroid/content/res/Resources;
    const v10, 0x7f03001d

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 147
    .local v5, "icons":Landroid/content/res/TypedArray;
    const v10, 0x7f03001e

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 148
    .local v6, "intents":Landroid/content/res/TypedArray;
    const v10, 0x7f03001f

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 149
    .local v7, "longPressIntents":Landroid/content/res/TypedArray;
    const v10, 0x7f030020

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 150
    .local v2, "facetPackageNames":Landroid/content/res/TypedArray;
    const v10, 0x7f03001c

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 153
    .local v1, "facetCategories":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v10

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->length()I

    move-result v11

    if-ne v10, v11, :cond_0

    .line 154
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v10

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->length()I

    move-result v11

    if-eq v10, v11, :cond_1

    .line 157
    :cond_0
    new-instance v10, Ljava/lang/RuntimeException;

    const-string/jumbo v11, "car_facet array lengths do not match"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :catchall_0
    move-exception v10

    .line 174
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 175
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 176
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 177
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 178
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 172
    throw v10

    .line 155
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v10

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v11

    if-ne v10, v11, :cond_0

    .line 156
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v10

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v11

    if-ne v10, v11, :cond_0

    .line 160
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v9

    .local v9, "size":I
    :goto_0
    if-ge v3, v9, :cond_2

    .line 161
    invoke-virtual {v5, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 162
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->createNavButton(Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/car/CarNavigationButton;

    move-result-object v0

    .line 163
    .local v0, "button":Lcom/android/systemui/statusbar/car/CarNavigationButton;
    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v0, v3, v10, v11}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->initClickListeners(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v10, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mNavButtons:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v10, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mNavBar:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->createNavButton(Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/car/CarNavigationButton;

    move-result-object v11

    invoke-virtual {v10, v0, v11}, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->addButton(Lcom/android/systemui/statusbar/car/CarNavigationButton;Lcom/android/systemui/statusbar/car/CarNavigationButton;)V

    .line 168
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 169
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 168
    invoke-direct {p0, v3, v10, v11}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->initFacetFilterMaps(I[Ljava/lang/String;[Ljava/lang/String;)V

    .line 170
    iget-object v10, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetHasMultipleAppsCache:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->facetHasMultiplePackages(I)Z

    move-result v11

    invoke-virtual {v10, v3, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 174
    .end local v0    # "button":Lcom/android/systemui/statusbar/car/CarNavigationButton;
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 175
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 176
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 177
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 178
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 180
    return-void
.end method

.method private createNavButton(Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/car/CarNavigationButton;
    .locals 5
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 312
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mContext:Landroid/content/Context;

    .line 313
    const v3, 0x7f0d0025

    const/4 v4, 0x0

    .line 312
    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/car/CarNavigationButton;

    .line 314
    .local v0, "button":Lcom/android/systemui/statusbar/car/CarNavigationButton;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->setResources(Landroid/graphics/drawable/Drawable;)V

    .line 316
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {v1, v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 317
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    return-object v0
.end method

.method private facetHasMultiplePackages(I)Z
    .locals 10
    .param p1, "index"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 252
    iget-object v7, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 255
    .local v6, "pm":Landroid/content/pm/PackageManager;
    iget-object v7, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackages:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 256
    .local v5, "packages":[Ljava/lang/String;
    array-length v7, v5

    if-le v7, v8, :cond_2

    .line 257
    const/4 v2, 0x0

    .line 258
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v5

    if-ge v3, v7, :cond_2

    .line 259
    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_0

    move v7, v8

    :goto_1
    add-int/2addr v2, v7

    .line 260
    if-le v2, v8, :cond_1

    .line 261
    return v8

    :cond_0
    move v7, v9

    .line 259
    goto :goto_1

    .line 258
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 268
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategories:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 270
    .local v0, "categories":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 271
    .restart local v2    # "count":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    array-length v7, v0

    if-ge v3, v7, :cond_4

    .line 272
    aget-object v1, v0, v3

    .line 273
    .local v1, "category":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 274
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "android.intent.action.MAIN"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    invoke-virtual {v4, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    invoke-virtual {v6, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v2, v7

    .line 277
    if-le v2, v8, :cond_3

    .line 278
    return v8

    .line 271
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 281
    .end local v1    # "category":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_4
    return v9
.end method

.method private getPackageCategory(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 222
    iget-object v8, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 223
    .local v6, "pm":Landroid/content/pm/PackageManager;
    iget-object v8, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategories:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    .line 225
    .local v7, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v7, :cond_2

    .line 226
    iget-object v8, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategories:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 227
    .local v0, "categories":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v8, v0

    if-ge v4, v8, :cond_1

    .line 228
    aget-object v1, v0, v4

    .line 229
    .local v1, "category":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 230
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string/jumbo v8, "android.intent.action.MAIN"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    invoke-virtual {v6, v3, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 234
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 237
    iget-object v9, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackageMap:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v8, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategoryMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v8, v1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v9, p1, v8}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    return-object v1

    .line 227
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 225
    .end local v1    # "category":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    .end local v0    # "categories":[Ljava/lang/String;
    .end local v4    # "j":I
    :cond_2
    const/4 v8, 0x0

    return-object v8
.end method

.method private initClickListeners(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "button"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "clickString"    # Ljava/lang/String;
    .param p4, "longPressString"    # Ljava/lang/String;

    .prologue
    .line 329
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 330
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Facet at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " does not have click action."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 334
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p3, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 335
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Lcom/android/systemui/statusbar/car/-$Lambda$gAZ84Xb3Qb415HO2o_U1LzYDKgw;

    invoke-direct {v2, p2, p0, v1}, Lcom/android/systemui/statusbar/car/-$Lambda$gAZ84Xb3Qb415HO2o_U1LzYDKgw;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 341
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 342
    return-void

    .line 336
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Malformed intent uri"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 346
    .end local v0    # "e":Ljava/net/URISyntaxException;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    invoke-static {p4, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 347
    new-instance v2, Lcom/android/systemui/statusbar/car/-$Lambda$gAZ84Xb3Qb415HO2o_U1LzYDKgw$1;

    invoke-direct {v2, p2, p0, v1}, Lcom/android/systemui/statusbar/car/-$Lambda$gAZ84Xb3Qb415HO2o_U1LzYDKgw$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 354
    return-void

    .line 351
    :catch_1
    move-exception v0

    .line 352
    .restart local v0    # "e":Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Malformed long-press intent uri"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private initFacetFilterMaps(I[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "categories"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 210
    iget-object v3, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategories:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    array-length v4, p3

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, p3, v3

    .line 212
    .local v0, "category":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategoryMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 215
    .end local v0    # "category":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackages:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    array-length v3, p2

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, p2, v2

    .line 217
    .local v1, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackageMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 219
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private onFacetClicked(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "index"    # I

    .prologue
    .line 362
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 365
    return-void

    .line 368
    :cond_0
    const-string/jumbo v3, "categories"

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategories:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const-string/jumbo v3, "packages"

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackages:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    const-string/jumbo v2, "filter_id"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-string/jumbo v3, "launch_picker"

    iget v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mCurrentFacetIndex:I

    if-ne p2, v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 378
    const/4 v1, 0x1

    .line 379
    .local v1, "stackId":I
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    const-string/jumbo v3, "android.intent.category.HOME"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 380
    const/4 v1, 0x0

    .line 383
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->setCurrentFacet(I)V

    .line 384
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mStatusBar:Lcom/android/systemui/statusbar/car/CarStatusBar;

    invoke-virtual {v2, p1, v1}, Lcom/android/systemui/statusbar/car/CarStatusBar;->startActivityOnStack(Landroid/content/Intent;I)I

    .line 385
    return-void

    .line 376
    .end local v1    # "stackId":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onFacetLongClicked(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "index"    # I

    .prologue
    .line 393
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->setCurrentFacet(I)V

    .line 394
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mStatusBar:Lcom/android/systemui/statusbar/car/CarStatusBar;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/car/CarStatusBar;->startActivityOnStack(Landroid/content/Intent;I)I

    .line 395
    return-void
.end method

.method private setCurrentFacet(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 289
    iget v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mCurrentFacetIndex:I

    if-ne p1, v0, :cond_0

    .line 290
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mNavButtons:Ljava/util/List;

    iget v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mCurrentFacetIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mNavButtons:Ljava/util/List;

    iget v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mCurrentFacetIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/car/CarNavigationButton;

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->setSelected(ZZ)V

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mNavButtons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mNavButtons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/car/CarNavigationButton;

    .line 300
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetHasMultipleAppsCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 299
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->setSelected(ZZ)V

    .line 303
    :cond_2
    iput p1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mCurrentFacetIndex:I

    .line 304
    return-void
.end method

.method private setupPersistentDockedTask()V
    .locals 3

    .prologue
    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mContext:Landroid/content/Context;

    const v2, 0x7f110192

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 98
    const/4 v2, 0x1

    .line 96
    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mPersistentTaskIntent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/net/URISyntaxException;
    const-string/jumbo v1, "CarNavBarController"

    const-string/jumbo v2, "Malformed persistent task intent."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_statusbar_car_CarNavigationBarController_13428(Landroid/content/Intent;ILandroid/view/View;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "index"    # I
    .param p3, "v"    # Landroid/view/View;

    .prologue
    .line 335
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->onFacetClicked(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_car_CarNavigationBarController_13853(Landroid/content/Intent;ILandroid/view/View;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "index"    # I
    .param p3, "v"    # Landroid/view/View;

    .prologue
    .line 348
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->onFacetLongClicked(Landroid/content/Intent;I)V

    .line 349
    const/4 v0, 0x1

    return v0
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 6

    .prologue
    .line 187
    iget-object v4, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f03001d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 190
    .local v2, "icons":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    .line 191
    .local v3, "length":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mNavButtons:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 194
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "car_facet array lengths do not match number of created buttons."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    .end local v3    # "length":I
    :catchall_0
    move-exception v4

    .line 205
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 204
    throw v4

    .line 198
    .restart local v3    # "length":I
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 199
    :try_start_1
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 202
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mNavButtons:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/car/CarNavigationButton;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->setResources(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 207
    return-void
.end method

.method public onPackageChange(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackageMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, p1}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackageMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 127
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetHasMultipleAppsCache:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->facetHasMultiplePackages(I)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 129
    return-void

    .line 132
    .end local v1    # "index":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->getPackageCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "category":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategoryMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategoryMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 135
    .restart local v1    # "index":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetHasMultipleAppsCache:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->facetHasMultiplePackages(I)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 137
    .end local v1    # "index":I
    :cond_1
    return-void
.end method

.method public taskChanged(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "stackId"    # I

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackageMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackageMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->setCurrentFacet(I)V

    .line 112
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->getPackageCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "category":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 114
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategoryMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->setCurrentFacet(I)V

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mPersistentTaskIntent:Landroid/content/Intent;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mStatusBar:Lcom/android/systemui/statusbar/car/CarStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/car/CarStatusBar;->hasDockedTask()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 119
    if-eqz p2, :cond_2

    .line 120
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mStatusBar:Lcom/android/systemui/statusbar/car/CarStatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mPersistentTaskIntent:Landroid/content/Intent;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/car/CarStatusBar;->startActivityOnStack(Landroid/content/Intent;I)I

    .line 122
    :cond_2
    return-void
.end method
