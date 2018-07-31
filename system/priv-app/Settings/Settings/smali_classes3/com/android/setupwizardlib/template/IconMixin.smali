.class public Lcom/android/setupwizardlib/template/IconMixin;
.super Ljava/lang/Object;
.source "IconMixin.java"

# interfaces
.implements Lcom/android/setupwizardlib/template/Mixin;


# instance fields
.field private mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "layout"    # Lcom/android/setupwizardlib/TemplateLayout;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/setupwizardlib/template/IconMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    .line 42
    invoke-virtual {p1}, Lcom/android/setupwizardlib/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 45
    .local v1, "context":Landroid/content/Context;
    sget-object v3, Lcom/android/setupwizardlib/R$styleable;->SuwIconMixin:[I

    const/4 v4, 0x0

    invoke-virtual {v1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/android/setupwizardlib/R$styleable;->SuwIconMixin_android_icon:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 48
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 49
    invoke-virtual {p0, v2}, Lcom/android/setupwizardlib/template/IconMixin;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 52
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/IconMixin;->getView()Landroid/widget/ImageView;

    move-result-object v0

    .line 72
    .local v0, "iconView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method protected getView()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/setupwizardlib/template/IconMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    sget v1, Lcom/android/setupwizardlib/R$id;->suw_layout_icon:I

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/IconMixin;->getView()Landroid/widget/ImageView;

    move-result-object v0

    .line 62
    .local v0, "iconView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    :cond_0
    return-void
.end method
