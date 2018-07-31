.class Lcom/ice/box/customcolorpicker/ColorPickerDialog$1;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/customcolorpicker/ColorPickerDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
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

    .line 169
    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$1;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 172
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$1;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget-object p1, p1, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->colorPickerDialogListener:Lcom/ice/box/customcolorpicker/ColorPickerDialogListener;

    iget-object p2, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$1;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget p2, p2, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->dialogId:I

    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$1;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->color:I

    invoke-interface {p1, p2, p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialogListener;->onColorSelected(II)V

    return-void
.end method
