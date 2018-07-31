.class public Lcom/android/settings/dashboard/DashboardAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DashboardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;,
        Lcom/android/settings/dashboard/DashboardAdapter$IconCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SUGGESTION_COUNT:I = 0x2

.field public static final HAS_NEW_VERSION_TO_UPDATE:Ljava/lang/String; = "has_new_version_to_update"

.field private static final LTE_4G_ACTIVITY:Ljava/lang/String; = "Lte4GEnableActivity"

.field private static final NS_CONDITION:I = 0xbb8

.field private static final NS_ITEMS:I = 0x7d0

.field private static final NS_SPACER:I = 0x0

.field private static final NS_SUGGESTION:I = 0x3e8

.field private static SUGGESTION_MODE_COLLAPSED:I = 0x0

.field private static SUGGESTION_MODE_DEFAULT:I = 0x0

.field private static SUGGESTION_MODE_EXPANDED:I = 0x0

.field private static final SYSTEM_UPDATE_INTENT:Ljava/lang/String; = "android.settings.SYSTEM_UPDATE_SETTINGS"

.field public static final TAG:Ljava/lang/String; = "DashboardAdapter"


# instance fields
.field private final ALL_DOWNLOAD_FILES_URI:Landroid/net/Uri;

.field private final mCache:Lcom/android/settings/dashboard/DashboardAdapter$IconCache;

.field private mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mConditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mExpandedCondition:Lcom/android/settings/dashboard/conditional/Condition;

.field private mId:I

.field private final mIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsShowingAll:Z

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLte4GEnabler:Lcom/android/settings/Lte4GEnabler;

.field private mLte4GEnablerHolder:Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

.field private mShowSystemUpgrade:Z

.field private mSuggestionMode:I

.field private mSuggestionParser:Lcom/android/settingslib/SuggestionParser;

.field private mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field

.field private mSw:Landroid/widget/Switch;

.field private final mTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/settings/dashboard/DashboardAdapter;->SUGGESTION_MODE_COLLAPSED:I

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/android/settings/dashboard/DashboardAdapter;->SUGGESTION_MODE_EXPANDED:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/dashboard/DashboardAdapter;

    .prologue
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/dashboard/DashboardAdapter;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/dashboard/DashboardAdapter;

    .prologue
    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIsShowingAll:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/settings/dashboard/DashboardAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/dashboard/DashboardAdapter;

    .prologue
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/widget/Switch;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/dashboard/DashboardAdapter;

    .prologue
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSw:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/dashboard/DashboardAdapter;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/dashboard/DashboardAdapter;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionMode:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/dashboard/DashboardAdapter;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/dashboard/DashboardAdapter;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->hasMoreSuggestions()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/dashboard/DashboardAdapter;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/dashboard/DashboardAdapter;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->recountItems()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/dashboard/DashboardAdapter;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/dashboard/DashboardAdapter;
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardAdapter;->set4GEnableSummary(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/dashboard/DashboardAdapter;->SUGGESTION_MODE_DEFAULT:I

    .line 68
    const/4 v0, 0x1

    sput v0, Lcom/android/settings/dashboard/DashboardAdapter;->SUGGESTION_MODE_COLLAPSED:I

    .line 69
    const/4 v0, 0x2

    sput v0, Lcom/android/settings/dashboard/DashboardAdapter;->SUGGESTION_MODE_EXPANDED:I

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/SuggestionParser;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lcom/android/settingslib/SuggestionParser;

    .prologue
    const/4 v4, 0x1

    .line 111
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mTypes:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    .line 93
    sget v0, Lcom/android/settings/dashboard/DashboardAdapter;->SUGGESTION_MODE_DEFAULT:I

    iput v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionMode:I

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings/dashboard/conditional/Condition;

    .line 99
    const-string/jumbo v0, "content://com.oneplus.ap.upgrader.provider/all_download_files"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->ALL_DOWNLOAD_FILES_URI:Landroid/net/Uri;

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mShowSystemUpgrade:Z

    .line 112
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    .line 113
    new-instance v0, Lcom/android/settings/dashboard/DashboardAdapter$IconCache;

    invoke-direct {v0, p1}, Lcom/android/settings/dashboard/DashboardAdapter$IconCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCache:Lcom/android/settings/dashboard/DashboardAdapter$IconCache;

    .line 114
    new-instance v0, Lcom/android/settings/Lte4GEnabler;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/android/settings/Lte4GEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mLte4GEnabler:Lcom/android/settings/Lte4GEnabler;

    .line 115
    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionParser:Lcom/android/settingslib/SuggestionParser;

    .line 117
    invoke-virtual {p0, v4}, Lcom/android/settings/dashboard/DashboardAdapter;->setHasStableIds(Z)V

    .line 118
    invoke-virtual {p0, v4}, Lcom/android/settings/dashboard/DashboardAdapter;->setShowingAll(Z)V

    .line 119
    return-void
.end method

.method private countItem(Ljava/lang/Object;IZI)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "type"    # I
    .param p3, "add"    # Z
    .param p4, "nameSpace"    # I

    .prologue
    .line 284
    if-eqz p3, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mTypes:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    iget v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mId:I

    add-int/2addr v1, p4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_0
    iget v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mId:I

    .line 291
    return-void
.end method

.method public static getSuggestionIdentifier(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "suggestion"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    .line 592
    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 598
    :cond_0
    return-object v0
.end method

.method private hasMoreSuggestions()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 420
    iget v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionMode:I

    sget v3, Lcom/android/settings/dashboard/DashboardAdapter;->SUGGESTION_MODE_COLLAPSED:I

    if-eq v2, v3, :cond_0

    .line 421
    iget v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionMode:I

    sget v3, Lcom/android/settings/dashboard/DashboardAdapter;->SUGGESTION_MODE_DEFAULT:I

    if-ne v2, v3, :cond_2

    .line 422
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    .line 420
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 422
    goto :goto_0

    :cond_2
    move v0, v1

    .line 421
    goto :goto_0
.end method

.method private isAPMAndSimStateEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 166
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 167
    const-string/jumbo v2, "airplane_mode_on"

    .line 166
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mLte4GEnabler:Lcom/android/settings/Lte4GEnabler;

    invoke-virtual {v0}, Lcom/android/settings/Lte4GEnabler;->isThereSimReady()Z

    move-result v0

    .line 166
    :cond_0
    return v0
.end method

.method private onBindCategory(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/settingslib/drawer/DashboardCategory;)V
    .locals 3
    .param p1, "holder"    # Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;
    .param p2, "category"    # Lcom/android/settingslib/drawer/DashboardCategory;

    .prologue
    .line 494
    iget-object v0, p2, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f05f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->divider:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 500
    :goto_0
    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    return-void

    .line 498
    :cond_0
    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->divider:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private onBindSeeAll(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    .prologue
    .line 504
    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIsShowingAll:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0f10eb

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 506
    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/settings/dashboard/DashboardAdapter$5;

    invoke-direct {v1, p0}, Lcom/android/settings/dashboard/DashboardAdapter$5;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    return-void

    .line 505
    :cond_0
    const v0, 0x7f0f10ea

    goto :goto_0
.end method

.method private onBindSuggestionHeader(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;)V
    .locals 5
    .param p1, "holder"    # Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    .prologue
    .line 403
    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->icon:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->hasMoreSuggestions()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0201e2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 405
    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0f1112

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/settings/dashboard/DashboardAdapter$4;

    invoke-direct {v1, p0}, Lcom/android/settings/dashboard/DashboardAdapter$4;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    return-void

    .line 404
    :cond_0
    const v0, 0x7f0201e1

    goto :goto_0
.end method

.method private onBindTile(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/settingslib/drawer/Tile;)V
    .locals 6
    .param p1, "holder"    # Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;
    .param p2, "tile"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 426
    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCache:Lcom/android/settings/dashboard/DashboardAdapter$IconCache;

    iget-object v3, p2, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v2, v3}, Lcom/android/settings/dashboard/DashboardAdapter$IconCache;->getIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 427
    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v1, p2, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 429
    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 445
    :goto_0
    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->newverison:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 447
    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 448
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0572

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 447
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 448
    iget-boolean v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mShowSystemUpgrade:Z

    .line 447
    if-eqz v1, :cond_3

    .line 450
    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->newverison:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 456
    :cond_0
    :goto_1
    return-void

    .line 436
    :cond_1
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0810

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "wifiTitle":Ljava/lang/String;
    iget-object v1, p2, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 438
    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0028

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 441
    :cond_2
    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 452
    .end local v0    # "wifiTitle":Ljava/lang/String;
    :cond_3
    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->newverison:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private recountItems()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/16 v10, 0x7d0

    .line 227
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->reset()V

    .line 228
    const/4 v1, 0x0

    .line 229
    .local v1, "hasConditions":Z
    const/4 v2, 0x0

    .end local v1    # "hasConditions":Z
    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mConditions:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mConditions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 230
    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mConditions:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v6}, Lcom/android/settings/dashboard/conditional/Condition;->shouldShow()Z

    move-result v4

    .line 231
    .local v4, "shouldShow":Z
    or-int/2addr v1, v4

    .line 232
    .local v1, "hasConditions":Z
    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mConditions:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const v8, 0x7f040048

    const/16 v9, 0xbb8

    invoke-direct {p0, v6, v8, v4, v9}, Lcom/android/settings/dashboard/DashboardAdapter;->countItem(Ljava/lang/Object;IZI)V

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    .end local v1    # "hasConditions":Z
    .end local v4    # "shouldShow":Z
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->resetCount()V

    .line 253
    const/4 v2, 0x0

    :goto_1
    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 254
    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 255
    .local v0, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    iget-boolean v6, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIsShowingAll:Z

    const v8, 0x7f040063

    invoke-direct {p0, v0, v8, v6, v10}, Lcom/android/settings/dashboard/DashboardAdapter;->countItem(Ljava/lang/Object;IZI)V

    .line 256
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    iget-object v6, v0, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 257
    iget-object v6, v0, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/drawer/Tile;

    .line 258
    .local v5, "tile":Lcom/android/settingslib/drawer/Tile;
    iget-object v6, v5, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "Lte4GEnableActivity"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 259
    iget-boolean v6, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIsShowingAll:Z

    if-nez v6, :cond_1

    .line 260
    sget-object v6, Lcom/android/settings/dashboard/DashboardSummary;->INITIAL_ITEMS:[Ljava/lang/String;

    .line 261
    iget-object v8, v5, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 260
    invoke-static {v6, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 259
    :goto_3
    const v8, 0x7f040066

    invoke-direct {p0, v5, v8, v6, v10}, Lcom/android/settings/dashboard/DashboardAdapter;->countItem(Ljava/lang/Object;IZI)V

    .line 256
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    move v6, v7

    .line 259
    goto :goto_3

    .line 263
    :cond_2
    iget-boolean v6, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIsShowingAll:Z

    if-nez v6, :cond_3

    .line 264
    sget-object v6, Lcom/android/settings/dashboard/DashboardSummary;->INITIAL_ITEMS:[Ljava/lang/String;

    .line 265
    iget-object v8, v5, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 264
    invoke-static {v6, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 263
    :goto_5
    const v8, 0x7f040065

    invoke-direct {p0, v5, v8, v6, v10}, Lcom/android/settings/dashboard/DashboardAdapter;->countItem(Ljava/lang/Object;IZI)V

    goto :goto_4

    :cond_3
    move v6, v7

    goto :goto_5

    .line 253
    .end local v5    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 269
    .end local v0    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    .end local v3    # "j":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyDataSetChanged()V

    .line 270
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 278
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 279
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 280
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mId:I

    .line 281
    return-void
.end method

.method private resetCount()V
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mId:I

    .line 274
    return-void
.end method

.method private set4GEnableSummary(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 172
    if-eqz p1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mLte4GEnablerHolder:Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    .line 174
    const v1, 0x7f0f11ac

    .line 173
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 179
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mLte4GEnablerHolder:Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    .line 177
    const v1, 0x7f0f11ad

    .line 176
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private showRemoveOption(Landroid/view/View;Lcom/android/settingslib/drawer/Tile;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "suggestion"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    .line 369
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f10032b

    const v4, 0x7f10032a

    invoke-static {v2, v3, v4}, Lcom/oneplus/settings/utils/OPUtils;->getRightTheme(Landroid/content/Context;II)I

    move-result v1

    .line 372
    .local v1, "themeId":I
    new-instance v0, Landroid/support/v7/widget/PopupMenu;

    .line 373
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 372
    invoke-direct {v0, v2, p1}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 374
    .local v0, "popup":Landroid/support/v7/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0f1114

    invoke-interface {v2, v3}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 375
    new-instance v3, Lcom/android/settings/dashboard/DashboardAdapter$3;

    invoke-direct {v3, p0, p2}, Lcom/android/settings/dashboard/DashboardAdapter$3;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;Lcom/android/settingslib/drawer/Tile;)V

    .line 374
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 386
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->show()V

    .line 387
    return-void
.end method


# virtual methods
.method public disableSuggestion(Lcom/android/settingslib/drawer/Tile;)V
    .locals 4
    .param p1, "suggestion"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionParser:Lcom/android/settingslib/SuggestionParser;

    if-nez v0, :cond_0

    .line 391
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionParser:Lcom/android/settingslib/SuggestionParser;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/SuggestionParser;->dismissSuggestion(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 395
    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 396
    const/4 v2, 0x2

    .line 397
    const/4 v3, 0x1

    .line 394
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 398
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionParser:Lcom/android/settingslib/SuggestionParser;

    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SuggestionParser;->markCategoryDone(Ljava/lang/String;)V

    .line 400
    :cond_1
    return-void
.end method

.method public getItem(J)Ljava/lang/Object;
    .locals 5
    .param p1, "itemId"    # J

    .prologue
    .line 583
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 584
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 585
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 583
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 588
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLte4GEnabler()Lcom/android/settings/Lte4GEnabler;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mLte4GEnabler:Lcom/android/settings/Lte4GEnabler;

    return-object v0
.end method

.method public getSuggestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    return-object v0
.end method

.method public getTile(Landroid/content/ComponentName;)Lcom/android/settingslib/drawer/Tile;
    .locals 4
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 132
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/drawer/DashboardCategory;

    iget-object v3, v3, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 133
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/drawer/DashboardCategory;

    iget-object v3, v3, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/Tile;

    .line 134
    .local v2, "tile":Lcom/android/settingslib/drawer/Tile;
    iget-object v3, v2, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    return-object v2

    .line 132
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 131
    .end local v2    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "j":I
    :cond_2
    const/4 v3, 0x0

    return-object v3
.end method

.method public isShowingAll()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIsShowingAll:Z

    return v0
.end method

.method public notifyChanged(Lcom/android/settingslib/drawer/Tile;)V
    .locals 0
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyDataSetChanged()V

    .line 219
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 299
    check-cast p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardAdapter;->onBindViewHolder(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;I)V
    .locals 5
    .param p1, "holder"    # Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;
    .param p2, "position"    # I

    .prologue
    .line 301
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mTypes:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 365
    :goto_0
    return-void

    .line 303
    :sswitch_0
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-direct {p0, p1, v2}, Lcom/android/settings/dashboard/DashboardAdapter;->onBindCategory(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/settingslib/drawer/DashboardCategory;)V

    goto :goto_0

    .line 306
    :sswitch_1
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/Tile;

    .line 307
    .local v0, "tile":Lcom/android/settingslib/drawer/Tile;
    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/DashboardAdapter;->onBindTile(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/settingslib/drawer/Tile;)V

    .line 308
    iget-object v2, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 309
    iget-object v2, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 312
    .end local v0    # "tile":Lcom/android/settingslib/drawer/Tile;
    :sswitch_2
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    .line 313
    .local v1, "tileSitch":Lcom/android/settingslib/drawer/Tile;
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mLte4GEnablerHolder:Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    .line 314
    invoke-direct {p0, p1, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->onBindTile(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/settingslib/drawer/Tile;)V

    .line 315
    iget-object v2, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object v2, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v3, 0x7f0a00bf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSw:Landroid/widget/Switch;

    .line 317
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mLte4GEnabler:Lcom/android/settings/Lte4GEnabler;

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSw:Landroid/widget/Switch;

    invoke-virtual {v2, v3}, Lcom/android/settings/Lte4GEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 318
    iget-object v2, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/android/settings/dashboard/DashboardAdapter$1;

    invoke-direct {v3, p0}, Lcom/android/settings/dashboard/DashboardAdapter$1;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->updateLte4GEnabler()V

    goto :goto_0

    .line 352
    .end local v1    # "tileSitch":Lcom/android/settingslib/drawer/Tile;
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardAdapter;->onBindSeeAll(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;)V

    goto :goto_0

    .line 355
    :sswitch_4
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/conditional/Condition;

    .line 356
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings/dashboard/conditional/Condition;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    .line 357
    :goto_1
    new-instance v4, Lcom/android/settings/dashboard/DashboardAdapter$2;

    invoke-direct {v4, p0}, Lcom/android/settings/dashboard/DashboardAdapter$2;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;)V

    .line 355
    invoke-static {v2, p1, v3, p0, v4}, Lcom/android/settings/dashboard/conditional/ConditionAdapterUtils;->bindViews(Lcom/android/settings/dashboard/conditional/Condition;Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 356
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 301
    :sswitch_data_0
    .sparse-switch
        0x7f040048 -> :sswitch_4
        0x7f040063 -> :sswitch_0
        0x7f040065 -> :sswitch_1
        0x7f040066 -> :sswitch_2
        0x7f0401a5 -> :sswitch_3
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 531
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0a0133

    if-ne v4, v5, :cond_0

    .line 532
    return-void

    .line 534
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0a0131

    if-ne v4, v5, :cond_2

    .line 535
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 536
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/drawer/Tile;

    iget-object v4, v4, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 537
    const v6, 0x7f0f0969

    .line 536
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 535
    if-eqz v4, :cond_1

    .line 538
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.SYSTEM_UPDATE_SETTINGS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 539
    .local v2, "newIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 541
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 540
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 542
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 543
    .local v1, "listSize":I
    const/4 v4, 0x1

    if-ge v1, v4, :cond_1

    .line 544
    return-void

    .line 547
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "listSize":I
    .end local v2    # "newIntent":Landroid/content/Intent;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/drawer/Tile;

    invoke-virtual {v4, v5}, Lcom/android/settings/SettingsActivity;->openTile(Lcom/android/settingslib/drawer/Tile;)Z

    .line 548
    return-void

    .line 550
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings/dashboard/conditional/Condition;

    if-ne v4, v5, :cond_3

    .line 551
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    .line 552
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v5}, Lcom/android/settings/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v5

    .line 551
    const/16 v6, 0x177

    invoke-static {v4, v6, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 553
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v4}, Lcom/android/settings/dashboard/conditional/Condition;->onPrimaryClick()V

    .line 567
    :goto_0
    return-void

    .line 555
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/dashboard/conditional/Condition;

    iput-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings/dashboard/conditional/Condition;

    .line 557
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0f042d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v5}, Lcom/android/settings/dashboard/conditional/Condition;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 558
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    .line 559
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "oneplus.intent.action.CheckUpdate"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 565
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 561
    :cond_4
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    .line 562
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v5}, Lcom/android/settings/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v5

    .line 561
    const/16 v6, 0x175

    invoke-static {v4, v6, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 293
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v0, 0x0

    .line 295
    new-instance v1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 296
    const v3, 0x7f040066

    if-ne p2, v3, :cond_0

    const/4 v0, 0x1

    .line 295
    :cond_0
    invoke-direct {v1, v2, v0}, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;-><init>(Landroid/view/View;Z)V

    return-object v1
.end method

.method public onExpandClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 570
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings/dashboard/conditional/Condition;

    if-ne v0, v1, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    .line 572
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v1

    .line 571
    const/16 v2, 0x176

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 573
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings/dashboard/conditional/Condition;

    .line 579
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyDataSetChanged()V

    .line 580
    return-void

    .line 575
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/conditional/Condition;

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings/dashboard/conditional/Condition;

    .line 576
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    .line 577
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v1

    .line 576
    const/16 v2, 0x175

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public setCategories(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    .line 185
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 186
    .local v3, "tintColor":Landroid/util/TypedValue;
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010435

    .line 187
    const/4 v6, 0x1

    .line 186
    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 189
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/drawer/DashboardCategory;

    iget-object v4, v4, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 190
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/drawer/DashboardCategory;

    iget-object v4, v4, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/Tile;

    .line 192
    .local v2, "tile":Lcom/android/settingslib/drawer/Tile;
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 193
    iget-object v5, v2, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 192
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 196
    iget-object v4, v2, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    iget v5, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    .line 199
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSocTriState()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f02a7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 200
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f04b4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    .line 189
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 188
    .end local v2    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    .end local v1    # "j":I
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->recountItems()V

    .line 206
    return-void
.end method

.method public setConditions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/conditional/Condition;>;"
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mConditions:Ljava/util/List;

    .line 210
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->recountItems()V

    .line 211
    return-void
.end method

.method public setShowSystemUpgradeIcon(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mShowSystemUpgrade:Z

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyDataSetChanged()V

    .line 108
    return-void
.end method

.method public setShowingAll(Z)V
    .locals 0
    .param p1, "showingAll"    # Z

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIsShowingAll:Z

    .line 223
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->recountItems()V

    .line 224
    return-void
.end method

.method public setSuggestions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    .line 127
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->recountItems()V

    .line 128
    return-void
.end method

.method public updateLte4GEnabler()V
    .locals 3

    .prologue
    .line 146
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mLte4GEnablerHolder:Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    if-nez v1, :cond_0

    .line 147
    return-void

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->isAPMAndSimStateEnable()Z

    move-result v0

    .line 150
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mLte4GEnablerHolder:Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    iget-object v1, v1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 151
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mLte4GEnablerHolder:Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    iget-object v1, v1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 152
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mLte4GEnablerHolder:Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    iget-object v1, v1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 153
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mLte4GEnablerHolder:Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    iget-object v1, v1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->sw:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 154
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mLte4GEnablerHolder:Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    iget-object v1, v1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mLte4GEnablerHolder:Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    iget-object v2, v1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const v1, 0x7f020227

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    if-nez v0, :cond_2

    .line 158
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mLte4GEnablerHolder:Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    iget-object v1, v1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    const v2, 0x7f0f11ae

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 163
    :goto_1
    return-void

    .line 156
    :cond_1
    const v1, 0x7f020228

    goto :goto_0

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSw:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSw:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 161
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSw:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->set4GEnableSummary(Z)V

    goto :goto_1
.end method
