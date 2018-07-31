.class Lcom/ice/box/customcolorpicker/ColorPickerDialog$5;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$OnColorSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/customcolorpicker/ColorPickerDialog;->createPresetsView()Landroid/view/View;
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

    .line 443
    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$5;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorSelected(I)V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$5;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget v0, v0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->color:I

    if-ne v0, p1, :cond_0

    .line 447
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$5;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget-object p1, p1, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->colorPickerDialogListener:Lcom/ice/box/customcolorpicker/ColorPickerDialogListener;

    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$5;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget v0, v0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->dialogId:I

    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$5;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget v1, v1, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->color:I

    invoke-interface {p1, v0, v1}, Lcom/ice/box/customcolorpicker/ColorPickerDialogListener;->onColorSelected(II)V

    .line 448
    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$5;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->dismiss()V

    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$5;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iput p1, v0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->color:I

    .line 452
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$5;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget-boolean p1, p1, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->showColorShades:Z

    if-eqz p1, :cond_1

    .line 453
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$5;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$5;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->color:I

    invoke-virtual {p1, p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->createColorShades(I)V

    :cond_1
    return-void
.end method
