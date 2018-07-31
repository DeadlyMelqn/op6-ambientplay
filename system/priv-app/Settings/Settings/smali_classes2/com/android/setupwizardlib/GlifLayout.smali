.class public Lcom/android/setupwizardlib/GlifLayout;
.super Lcom/android/setupwizardlib/TemplateLayout;
.source "GlifLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GlifLayout"


# instance fields
.field private mBackgroundBaseColor:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mBackgroundPatterned:Z

.field private mPrimaryColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0, v0}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;II)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "template"    # I

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;II)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "template"    # I
    .param p3, "containerId"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;II)V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/GlifLayout;->mBackgroundPatterned:Z

    .line 90
    sget v0, Lcom/android/setupwizardlib/R$attr;->suwLayoutTheme:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/setupwizardlib/GlifLayout;->init(Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/GlifLayout;->mBackgroundPatterned:Z

    .line 95
    sget v0, Lcom/android/setupwizardlib/R$attr;->suwLayoutTheme:I

    invoke-direct {p0, p2, v0}, Lcom/android/setupwizardlib/GlifLayout;->init(Landroid/util/AttributeSet;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/GlifLayout;->mBackgroundPatterned:Z

    .line 101
    invoke-direct {p0, p2, p3}, Lcom/android/setupwizardlib/GlifLayout;->init(Landroid/util/AttributeSet;I)V

    .line 102
    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .prologue
    const/4 v9, 0x0

    .line 107
    const-class v7, Lcom/android/setupwizardlib/template/HeaderMixin;

    new-instance v8, Lcom/android/setupwizardlib/template/ColoredHeaderMixin;

    invoke-direct {v8, p0, p1, p2}, Lcom/android/setupwizardlib/template/ColoredHeaderMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v7, v8}, Lcom/android/setupwizardlib/GlifLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 108
    const-class v7, Lcom/android/setupwizardlib/template/IconMixin;

    new-instance v8, Lcom/android/setupwizardlib/template/IconMixin;

    invoke-direct {v8, p0, p1, p2}, Lcom/android/setupwizardlib/template/IconMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v7, v8}, Lcom/android/setupwizardlib/GlifLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 109
    const-class v7, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    new-instance v8, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-direct {v8, p0}, Lcom/android/setupwizardlib/template/ProgressBarMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;)V

    invoke-virtual {p0, v7, v8}, Lcom/android/setupwizardlib/GlifLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 110
    const-class v7, Lcom/android/setupwizardlib/template/ButtonFooterMixin;

    new-instance v8, Lcom/android/setupwizardlib/template/ButtonFooterMixin;

    invoke-direct {v8, p0}, Lcom/android/setupwizardlib/template/ButtonFooterMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;)V

    invoke-virtual {p0, v7, v8}, Lcom/android/setupwizardlib/GlifLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 111
    new-instance v5, Lcom/android/setupwizardlib/template/RequireScrollMixin;

    invoke-direct {v5, p0}, Lcom/android/setupwizardlib/template/RequireScrollMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;)V

    .line 112
    .local v5, "requireScrollMixin":Lcom/android/setupwizardlib/template/RequireScrollMixin;
    const-class v7, Lcom/android/setupwizardlib/template/RequireScrollMixin;

    invoke-virtual {p0, v7, v5}, Lcom/android/setupwizardlib/GlifLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifLayout;->getScrollView()Landroid/widget/ScrollView;

    move-result-object v6

    .line 115
    .local v6, "scrollView":Landroid/widget/ScrollView;
    if-eqz v6, :cond_0

    .line 117
    new-instance v7, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;

    invoke-direct {v7, v5, v6}, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;-><init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Landroid/widget/ScrollView;)V

    .line 116
    invoke-virtual {v5, v7}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->setScrollHandlingDelegate(Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;)V

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 121
    sget-object v8, Lcom/android/setupwizardlib/R$styleable;->SuwGlifLayout:[I

    .line 120
    invoke-virtual {v7, p1, v8, p2, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 124
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v7, Lcom/android/setupwizardlib/R$styleable;->SuwGlifLayout_suwColorPrimary:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 125
    .local v4, "primaryColor":Landroid/content/res/ColorStateList;
    if-eqz v4, :cond_1

    .line 126
    invoke-virtual {p0, v4}, Lcom/android/setupwizardlib/GlifLayout;->setPrimaryColor(Landroid/content/res/ColorStateList;)V

    .line 130
    :cond_1
    sget v7, Lcom/android/setupwizardlib/R$styleable;->SuwGlifLayout_suwBackgroundBaseColor:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 131
    .local v1, "backgroundColor":Landroid/content/res/ColorStateList;
    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/GlifLayout;->setBackgroundBaseColor(Landroid/content/res/ColorStateList;)V

    .line 134
    sget v7, Lcom/android/setupwizardlib/R$styleable;->SuwGlifLayout_suwBackgroundPatterned:I

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 135
    .local v2, "backgroundPatterned":Z
    invoke-virtual {p0, v2}, Lcom/android/setupwizardlib/GlifLayout;->setBackgroundPatterned(Z)V

    .line 137
    sget v7, Lcom/android/setupwizardlib/R$styleable;->SuwGlifLayout_suwFooter:I

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 138
    .local v3, "footer":I
    if-eqz v3, :cond_2

    .line 139
    invoke-virtual {p0, v3}, Lcom/android/setupwizardlib/GlifLayout;->inflateFooter(I)Landroid/view/View;

    .line 142
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    return-void
.end method

.method private updateBackground()V
    .locals 5

    .prologue
    .line 266
    sget v3, Lcom/android/setupwizardlib/R$id;->suw_pattern_bg:I

    invoke-virtual {p0, v3}, Lcom/android/setupwizardlib/GlifLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v2

    .line 267
    .local v2, "patternBg":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 268
    const/4 v1, 0x0

    .line 269
    .local v1, "backgroundColor":I
    iget-object v3, p0, Lcom/android/setupwizardlib/GlifLayout;->mBackgroundBaseColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_3

    .line 270
    iget-object v3, p0, Lcom/android/setupwizardlib/GlifLayout;->mBackgroundBaseColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 274
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/setupwizardlib/GlifLayout;->mBackgroundPatterned:Z

    if-eqz v3, :cond_4

    .line 275
    new-instance v0, Lcom/android/setupwizardlib/GlifPatternDrawable;

    invoke-direct {v0, v1}, Lcom/android/setupwizardlib/GlifPatternDrawable;-><init>(I)V

    .line 277
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    :goto_1
    instance-of v3, v2, Lcom/android/setupwizardlib/view/StatusBarBackgroundLayout;

    if-eqz v3, :cond_5

    .line 278
    check-cast v2, Lcom/android/setupwizardlib/view/StatusBarBackgroundLayout;

    .end local v2    # "patternBg":Landroid/view/View;
    invoke-virtual {v2, v0}, Lcom/android/setupwizardlib/view/StatusBarBackgroundLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 283
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "backgroundColor":I
    :cond_1
    :goto_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_2

    .line 284
    const/16 v3, 0x400

    invoke-virtual {p0, v3}, Lcom/android/setupwizardlib/GlifLayout;->setSystemUiVisibility(I)V

    .line 286
    :cond_2
    return-void

    .line 271
    .restart local v1    # "backgroundColor":I
    .restart local v2    # "patternBg":Landroid/view/View;
    :cond_3
    iget-object v3, p0, Lcom/android/setupwizardlib/GlifLayout;->mPrimaryColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_0

    .line 272
    iget-object v3, p0, Lcom/android/setupwizardlib/GlifLayout;->mPrimaryColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    goto :goto_0

    .line 276
    :cond_4
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v0    # "background":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 280
    :cond_5
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method


# virtual methods
.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "containerId"    # I

    .prologue
    .line 155
    if-nez p1, :cond_0

    .line 156
    sget p1, Lcom/android/setupwizardlib/R$id;->suw_layout_content:I

    .line 158
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/TemplateLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundBaseColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifLayout;->mBackgroundBaseColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getHeaderColor()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 201
    const-class v1, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/ColoredHeaderMixin;

    .line 202
    .local v0, "mixin":Lcom/android/setupwizardlib/template/ColoredHeaderMixin;
    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/ColoredHeaderMixin;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1
.end method

.method public getHeaderText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 192
    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/HeaderMixin;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 180
    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 210
    const-class v0, Lcom/android/setupwizardlib/template/IconMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/IconMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/IconMixin;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifLayout;->mPrimaryColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getScrollView()Landroid/widget/ScrollView;
    .locals 2

    .prologue
    .line 175
    sget v1, Lcom/android/setupwizardlib/R$id;->suw_scroll_view:I

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/GlifLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    .line 176
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/ScrollView;

    .end local v0    # "view":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inflateFooter(I)Landroid/view/View;
    .locals 2
    .param p1, "footer"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 169
    sget v1, Lcom/android/setupwizardlib/R$id;->suw_layout_footer:I

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/GlifLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 170
    .local v0, "footerStub":Landroid/view/ViewStub;
    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 171
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public isBackgroundPatterned()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/android/setupwizardlib/GlifLayout;->mBackgroundPatterned:Z

    return v0
.end method

.method public isProgressBarShown()Z
    .locals 1

    .prologue
    .line 289
    const-class v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->isShown()Z

    move-result v0

    return v0
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "template"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 147
    if-nez p2, :cond_0

    .line 148
    sget p2, Lcom/android/setupwizardlib/R$layout;->suw_glif_template:I

    .line 150
    :cond_0
    sget v0, Lcom/android/setupwizardlib/R$style;->SuwThemeGlif_Light:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/setupwizardlib/GlifLayout;->inflateTemplate(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public peekProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 297
    const-class v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->peekProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    return-object v0
.end method

.method public setBackgroundBaseColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "color"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/setupwizardlib/GlifLayout;->mBackgroundBaseColor:Landroid/content/res/ColorStateList;

    .line 237
    invoke-direct {p0}, Lcom/android/setupwizardlib/GlifLayout;->updateBackground()V

    .line 238
    return-void
.end method

.method public setBackgroundPatterned(Z)V
    .locals 0
    .param p1, "patterned"    # Z

    .prologue
    .line 254
    iput-boolean p1, p0, Lcom/android/setupwizardlib/GlifLayout;->mBackgroundPatterned:Z

    .line 255
    invoke-direct {p0}, Lcom/android/setupwizardlib/GlifLayout;->updateBackground()V

    .line 256
    return-void
.end method

.method public setHeaderColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 196
    const-class v1, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/ColoredHeaderMixin;

    .line 197
    .local v0, "mixin":Lcom/android/setupwizardlib/template/ColoredHeaderMixin;
    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/ColoredHeaderMixin;->setColor(Landroid/content/res/ColorStateList;)V

    .line 198
    return-void
.end method

.method public setHeaderText(I)V
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 184
    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/HeaderMixin;->setText(I)V

    .line 185
    return-void
.end method

.method public setHeaderText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 188
    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/HeaderMixin;->setText(Ljava/lang/CharSequence;)V

    .line 189
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 206
    const-class v0, Lcom/android/setupwizardlib/template/IconMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/IconMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/IconMixin;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 207
    return-void
.end method

.method public setPrimaryColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/setupwizardlib/GlifLayout;->mPrimaryColor:Landroid/content/res/ColorStateList;

    .line 219
    invoke-direct {p0}, Lcom/android/setupwizardlib/GlifLayout;->updateBackground()V

    .line 220
    const-class v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->setColor(Landroid/content/res/ColorStateList;)V

    .line 221
    return-void
.end method

.method public setProgressBarShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 293
    const-class v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->setShown(Z)V

    .line 294
    return-void
.end method
