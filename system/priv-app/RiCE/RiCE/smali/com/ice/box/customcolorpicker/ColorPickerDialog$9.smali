.class Lcom/ice/box/customcolorpicker/ColorPickerDialog$9;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/customcolorpicker/ColorPickerDialog;->setupTransparency()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;


# direct methods
.method constructor <init>(Lcom/ice/box/customcolorpicker/ColorPickerDialog;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$9;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 9

    int-to-double v0, p2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    double-to-int p1, v0

    .line 605
    iget-object p3, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$9;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget-object p3, p3, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->transparencyPercText:Landroid/widget/TextView;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%d%%"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    rsub-int p1, p2, 0xff

    move p2, v3

    .line 608
    :goto_0
    iget-object p3, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$9;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget-object p3, p3, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->adapter:Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;

    iget-object p3, p3, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;->colors:[I

    array-length p3, p3

    if-ge p2, p3, :cond_0

    .line 609
    iget-object p3, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$9;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget-object p3, p3, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->adapter:Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;

    iget-object p3, p3, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;->colors:[I

    aget p3, p3, p2

    .line 610
    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 611
    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 612
    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->blue(I)I

    move-result p3

    .line 613
    iget-object v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$9;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget-object v2, v2, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->adapter:Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;

    iget-object v2, v2, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;->colors:[I

    invoke-static {p1, v0, v1, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p3

    aput p3, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 615
    :cond_0
    iget-object p2, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$9;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget-object p2, p2, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->adapter:Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;

    invoke-virtual/range {p2 .. p2}, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;->notifyDataSetChanged()V

    .line 617
    :goto_1
    iget-object p2, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$9;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget-object p2, p2, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->shadesLayout:Landroid/widget/LinearLayout;

    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    if-ge v3, p2, :cond_6

    .line 618
    iget-object p2, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$9;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget-object p2, p2, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->shadesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    const p3, 0x7f090047

    .line 619
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/ice/box/customcolorpicker/ColorPanelView;

    const v0, 0x7f090044

    .line 620
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 621
    invoke-virtual/range {p2 .. p2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 623
    invoke-virtual/range {p3 .. p3}, Lcom/ice/box/customcolorpicker/ColorPanelView;->getBorderColor()I

    move-result v1

    invoke-static/range {v1 .. v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 625
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/ice/box/customcolorpicker/ColorPanelView;->getColor()I

    move-result v1

    .line 626
    invoke-static/range {v1 .. v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static/range {v1 .. v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static/range {v1 .. v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {p1, v2, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    const/16 v2, 0xa5

    const/high16 v4, -0x1000000

    if-gt p1, v2, :cond_2

    or-int p2, v1, v4

    .line 628
    invoke-virtual {p3, p2}, Lcom/ice/box/customcolorpicker/ColorPanelView;->setBorderColor(I)V

    goto :goto_2

    .line 630
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/ice/box/customcolorpicker/ColorPanelView;->setBorderColor(I)V

    .line 632
    :goto_2
    invoke-virtual/range {p3 .. p3}, Lcom/ice/box/customcolorpicker/ColorPanelView;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/ice/box/customcolorpicker/ColorPanelView;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    if-gt p1, v2, :cond_3

    .line 636
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4, p2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    .line 638
    :cond_3
    invoke-static/range {v1 .. v1}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v5

    const-wide v7, 0x3fe4cccccccccccdL    # 0.65

    cmpl-double p2, v5, v7

    if-ltz p2, :cond_4

    .line 639
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4, p2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    :cond_4
    const/4 p2, -0x1

    .line 641
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 645
    :cond_5
    :goto_3
    invoke-virtual {p3, v1}, Lcom/ice/box/customcolorpicker/ColorPanelView;->setColor(I)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 648
    :cond_6
    iget-object p2, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$9;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget p2, p2, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->color:I

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->red(I)I

    move-result p2

    .line 649
    iget-object p3, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$9;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget p3, p3, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->color:I

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->green(I)I

    move-result p3

    .line 650
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$9;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget v0, v0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->color:I

    invoke-static/range {v0 .. v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 651
    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$9;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->color:I

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
