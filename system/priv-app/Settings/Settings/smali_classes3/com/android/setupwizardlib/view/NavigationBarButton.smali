.class public Lcom/android/setupwizardlib/view/NavigationBarButton;
.super Landroid/widget/Button;
.source "NavigationBarButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->init()V

    .line 43
    return-void
.end method

.method private getAllCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 100
    const/4 v3, 0x6

    new-array v2, v3, [Landroid/graphics/drawable/Drawable;

    .line 101
    .local v2, "drawables":[Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 102
    .local v0, "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    aget-object v3, v0, v5

    aput-object v3, v2, v5

    .line 103
    aget-object v3, v0, v4

    aput-object v3, v2, v4

    .line 104
    aget-object v3, v0, v6

    aput-object v3, v2, v6

    .line 105
    aget-object v3, v0, v7

    aput-object v3, v2, v7

    .line 106
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 108
    .local v1, "compoundDrawablesRelative":[Landroid/graphics/drawable/Drawable;
    aget-object v3, v1, v5

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 109
    aget-object v3, v1, v6

    const/4 v4, 0x5

    aput-object v3, v2, v4

    .line 111
    .end local v1    # "compoundDrawablesRelative":[Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v2
.end method

.method private init()V
    .locals 6

    .prologue
    .line 48
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_2

    .line 49
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 50
    .local v0, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 51
    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 52
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->wrap(Landroid/graphics/drawable/Drawable;)Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 50
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :cond_1
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    .line 56
    const/4 v4, 0x2

    aget-object v4, v0, v4

    const/4 v5, 0x3

    aget-object v5, v0, v5

    .line 55
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/setupwizardlib/view/NavigationBarButton;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 58
    .end local v0    # "drawables":[Landroid/graphics/drawable/Drawable;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private tintDrawables()V
    .locals 6

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 89
    .local v1, "textColors":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_2

    .line 90
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->getAllCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 91
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v5, v0, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;

    if-eqz v5, :cond_0

    .line 92
    check-cast v0, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->setTintListCompat(Landroid/content/res/ColorStateList;)V

    .line 90
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->invalidate()V

    .line 97
    :cond_2
    return-void
.end method


# virtual methods
.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "left"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "right"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 62
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->wrap(Landroid/graphics/drawable/Drawable;)Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;

    move-result-object p1

    .line 63
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->wrap(Landroid/graphics/drawable/Drawable;)Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;

    move-result-object p2

    .line 64
    :cond_1
    if-eqz p3, :cond_2

    invoke-static {p3}, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->wrap(Landroid/graphics/drawable/Drawable;)Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;

    move-result-object p3

    .line 65
    :cond_2
    if-eqz p4, :cond_3

    invoke-static {p4}, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->wrap(Landroid/graphics/drawable/Drawable;)Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;

    move-result-object p4

    .line 66
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 67
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->tintDrawables()V

    .line 68
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 73
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->wrap(Landroid/graphics/drawable/Drawable;)Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;

    move-result-object p1

    .line 74
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->wrap(Landroid/graphics/drawable/Drawable;)Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;

    move-result-object p2

    .line 75
    :cond_1
    if-eqz p3, :cond_2

    invoke-static {p3}, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->wrap(Landroid/graphics/drawable/Drawable;)Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;

    move-result-object p3

    .line 76
    :cond_2
    if-eqz p4, :cond_3

    invoke-static {p4}, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->wrap(Landroid/graphics/drawable/Drawable;)Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;

    move-result-object p4

    .line 77
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 78
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->tintDrawables()V

    .line 79
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 84
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->tintDrawables()V

    .line 85
    return-void
.end method
