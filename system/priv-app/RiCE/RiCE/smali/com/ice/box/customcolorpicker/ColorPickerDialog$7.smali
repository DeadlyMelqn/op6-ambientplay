.class Lcom/ice/box/customcolorpicker/ColorPickerDialog$7;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/customcolorpicker/ColorPickerDialog;->createColorShades(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

.field final synthetic val$colorPanelView:Lcom/ice/box/customcolorpicker/ColorPanelView;


# direct methods
.method constructor <init>(Lcom/ice/box/customcolorpicker/ColorPickerDialog;Lcom/ice/box/customcolorpicker/ColorPanelView;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$7;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iput-object p2, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$7;->val$colorPanelView:Lcom/ice/box/customcolorpicker/ColorPanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 540
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$7;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget-object p1, p1, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->colorPickerDialogListener:Lcom/ice/box/customcolorpicker/ColorPickerDialogListener;

    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$7;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget v0, v0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->dialogId:I

    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$7;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget v1, v1, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->color:I

    invoke-interface {p1, v0, v1}, Lcom/ice/box/customcolorpicker/ColorPickerDialogListener;->onColorSelected(II)V

    .line 543
    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$7;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->dismiss()V

    return-void

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$7;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$7;->val$colorPanelView:Lcom/ice/box/customcolorpicker/ColorPanelView;

    invoke-virtual/range {v1 .. v1}, Lcom/ice/box/customcolorpicker/ColorPanelView;->getColor()I

    move-result v1

    iput v1, v0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->color:I

    .line 547
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$7;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget-object v0, v0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->adapter:Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;->selectNone()V

    const/4 v0, 0x0

    move v1, v0

    .line 548
    :goto_0
    iget-object v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$7;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget-object v2, v2, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->shadesLayout:Landroid/widget/LinearLayout;

    invoke-virtual/range {v2 .. v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 549
    iget-object v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$7;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget-object v2, v2, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->shadesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v3, 0x7f090047

    .line 550
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/ice/box/customcolorpicker/ColorPanelView;

    const v4, 0x7f090044

    .line 551
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-ne v3, p1, :cond_1

    const v4, 0x7f080075

    goto :goto_1

    :cond_1
    move v4, v0

    .line 552
    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    if-ne v3, p1, :cond_2

    .line 553
    invoke-virtual/range {v3 .. v3}, Lcom/ice/box/customcolorpicker/ColorPanelView;->getColor()I

    move-result v4

    invoke-static/range {v4 .. v4}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v4

    const-wide v6, 0x3fe4cccccccccccdL    # 0.65

    cmpl-double v4, v4, v6

    if-gez v4, :cond_3

    .line 554
    :cond_2
    invoke-virtual/range {v3 .. v3}, Lcom/ice/box/customcolorpicker/ColorPanelView;->getColor()I

    move-result v4

    .line 553
    invoke-static/range {v4 .. v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    const/16 v5, 0xa5

    if-gt v4, v5, :cond_4

    :cond_3
    const/high16 v4, -0x1000000

    .line 555
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v4, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    .line 557
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_2
    if-ne v3, p1, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    move v2, v0

    .line 559
    :goto_3
    invoke-static/range {v2 .. v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/ice/box/customcolorpicker/ColorPanelView;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method
