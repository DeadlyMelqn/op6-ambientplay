.class Lcom/ice/box/customcolorpicker/ColorPickerDialog$3;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/customcolorpicker/ColorPickerDialog;->createPickerView()Landroid/view/View;
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

    .line 284
    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$3;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 287
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$3;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget-object p1, p1, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->newColorPanel:Lcom/ice/box/customcolorpicker/ColorPanelView;

    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/customcolorpicker/ColorPanelView;->getColor()I

    move-result p1

    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$3;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget v0, v0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->color:I

    if-ne p1, v0, :cond_0

    .line 288
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$3;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget-object p1, p1, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->colorPickerDialogListener:Lcom/ice/box/customcolorpicker/ColorPickerDialogListener;

    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$3;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget v0, v0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->dialogId:I

    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$3;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget v1, v1, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->color:I

    invoke-interface {p1, v0, v1}, Lcom/ice/box/customcolorpicker/ColorPickerDialogListener;->onColorSelected(II)V

    .line 289
    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$3;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->dismiss()V

    :cond_0
    return-void
.end method
