.class final Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ColorPaletteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewHolder"
.end annotation


# instance fields
.field colorPanelView:Lcom/ice/box/customcolorpicker/ColorPanelView;

.field imageView:Landroid/widget/ImageView;

.field originalBorderColor:I

.field final synthetic this$0:Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;

.field view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;Landroid/content/Context;)V
    .locals 1

    .line 90
    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->this$0:Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iget p1, p1, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;->colorShape:I

    if-nez p1, :cond_0

    const p1, 0x7f0c0023

    goto :goto_0

    :cond_0
    const p1, 0x7f0c0022

    :goto_0
    const/4 v0, 0x0

    .line 97
    invoke-static {p2, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->view:Landroid/view/View;

    .line 98
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->view:Landroid/view/View;

    const p2, 0x7f090047

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ice/box/customcolorpicker/ColorPanelView;

    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->colorPanelView:Lcom/ice/box/customcolorpicker/ColorPanelView;

    .line 99
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->view:Landroid/view/View;

    const p2, 0x7f090044

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 100
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->colorPanelView:Lcom/ice/box/customcolorpicker/ColorPanelView;

    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/customcolorpicker/ColorPanelView;->getBorderColor()I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->originalBorderColor:I

    .line 101
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private setColorFilter(I)V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->this$0:Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;

    iget v0, v0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;->selectedPosition:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->this$0:Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;

    iget-object v0, v0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;->colors:[I

    aget p1, v0, p1

    invoke-static/range {p1 .. p1}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fe4cccccccccccdL    # 0.65

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_0

    .line 145
    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const/high16 p1, -0x1000000

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    return-void
.end method

.method private setOnClickListener(I)V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->colorPanelView:Lcom/ice/box/customcolorpicker/ColorPanelView;

    new-instance v1, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder$1;-><init>(Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;I)V

    invoke-virtual {v0, v1}, Lcom/ice/box/customcolorpicker/ColorPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->colorPanelView:Lcom/ice/box/customcolorpicker/ColorPanelView;

    new-instance v0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder$2;

    invoke-direct {v0, p0}, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder$2;-><init>(Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;)V

    invoke-virtual {p1, v0}, Lcom/ice/box/customcolorpicker/ColorPanelView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method setup(I)V
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->this$0:Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;

    iget-object v0, v0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;->colors:[I

    aget v0, v0, p1

    .line 106
    invoke-static/range {v0 .. v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 107
    iget-object v2, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->colorPanelView:Lcom/ice/box/customcolorpicker/ColorPanelView;

    invoke-virtual {v2, v0}, Lcom/ice/box/customcolorpicker/ColorPanelView;->setColor(I)V

    .line 108
    iget-object v2, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->this$0:Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;

    iget v3, v3, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;->selectedPosition:I

    if-ne v3, p1, :cond_0

    const v3, 0x7f080075

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v2, 0xff

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa5

    if-gt v1, v2, :cond_1

    .line 111
    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->colorPanelView:Lcom/ice/box/customcolorpicker/ColorPanelView;

    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/ice/box/customcolorpicker/ColorPanelView;->setBorderColor(I)V

    .line 112
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->colorPanelView:Lcom/ice/box/customcolorpicker/ColorPanelView;

    iget v1, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->originalBorderColor:I

    invoke-virtual {v0, v1}, Lcom/ice/box/customcolorpicker/ColorPanelView;->setBorderColor(I)V

    .line 115
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const/4 v1, -0x1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 118
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->setColorFilter(I)V

    .line 120
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->setOnClickListener(I)V

    return-void
.end method
