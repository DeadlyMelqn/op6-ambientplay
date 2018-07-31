.class Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;
.super Landroid/widget/BaseAdapter;
.source "ColorPaletteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;,
        Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$OnColorSelectedListener;
    }
.end annotation


# instance fields
.field colorShape:I

.field final colors:[I

.field final listener:Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$OnColorSelectedListener;

.field selectedPosition:I


# direct methods
.method constructor <init>(Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$OnColorSelectedListener;[III)V
    .locals 0
    .param p4    # I
        .annotation build Lcom/ice/box/customcolorpicker/ColorShape;
        .end annotation
    .end param

    .line 38
    invoke-direct/range {p0 .. p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;->listener:Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$OnColorSelectedListener;

    .line 40
    iput-object p2, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;->colors:[I

    .line 41
    iput p3, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;->selectedPosition:I

    .line 42
    iput p4, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;->colorShape:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;->colors:[I

    array-length p0, p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;->colors:[I

    aget p0, p0, p1

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 64
    new-instance p2, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;-><init>(Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;Landroid/content/Context;)V

    .line 65
    iget-object p0, p2, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->view:Landroid/view/View;

    move-object v0, p2

    move-object p2, p0

    move-object p0, v0

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;

    .line 69
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->setup(I)V

    return-object p2
.end method

.method selectNone()V
    .locals 1

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;->selectedPosition:I

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;->notifyDataSetChanged()V

    return-void
.end method
