.class Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggleHoneycomb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SetIndicatorInfo"
.end annotation


# instance fields
.field public setHomeActionContentDescription:Ljava/lang/reflect/Method;

.field public setHomeAsUpIndicator:Ljava/lang/reflect/Method;

.field public upIndicatorView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    :try_start_0
    const-class v7, Landroid/app/ActionBar;

    const-string/jumbo v8, "setHomeAsUpIndicator"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    .line 108
    const-class v10, Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 107
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    .line 109
    const-class v7, Landroid/app/ActionBar;

    .line 110
    const-string/jumbo v8, "setHomeActionContentDescription"

    .line 109
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    .line 110
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 109
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    return-void

    .line 114
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const v7, 0x102002c

    invoke-virtual {p1, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 119
    .local v3, "home":Landroid/view/View;
    if-nez v3, :cond_0

    .line 121
    return-void

    .line 124
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 125
    .local v4, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 126
    .local v0, "childCount":I
    const/4 v7, 0x2

    if-eq v0, v7, :cond_1

    .line 128
    return-void

    .line 131
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 132
    .local v2, "first":Landroid/view/View;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 133
    .local v5, "second":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v7

    const v8, 0x102002c

    if-ne v7, v8, :cond_3

    move-object v6, v5

    .line 135
    .local v6, "up":Landroid/view/View;
    :goto_0
    instance-of v7, v6, Landroid/widget/ImageView;

    if-eqz v7, :cond_2

    .line 137
    check-cast v6, Landroid/widget/ImageView;

    .end local v6    # "up":Landroid/view/View;
    iput-object v6, p0, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->upIndicatorView:Landroid/widget/ImageView;

    .line 139
    :cond_2
    return-void

    .line 133
    :cond_3
    move-object v6, v2

    .restart local v6    # "up":Landroid/view/View;
    goto :goto_0
.end method
