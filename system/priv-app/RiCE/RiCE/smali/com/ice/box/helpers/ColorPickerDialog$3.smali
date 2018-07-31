.class Lcom/ice/box/helpers/ColorPickerDialog$3;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ice/box/helpers/ColorPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/helpers/ColorPickerDialog;


# direct methods
.method constructor <init>(Lcom/ice/box/helpers/ColorPickerDialog;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/ice/box/helpers/ColorPickerDialog$3;->this$0:Lcom/ice/box/helpers/ColorPickerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 102
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "#"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, 0x6

    if-eq p2, p3, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0x8

    if-ne p2, p3, :cond_1

    .line 104
    :cond_0
    iget-object p2, p0, Lcom/ice/box/helpers/ColorPickerDialog$3;->this$0:Lcom/ice/box/helpers/ColorPickerDialog;

    invoke-static {p2, p1}, Lcom/ice/box/helpers/ColorPickerDialog;->access$200(Lcom/ice/box/helpers/ColorPickerDialog;Ljava/lang/String;)I

    move-result p1

    .line 105
    iget-object p2, p0, Lcom/ice/box/helpers/ColorPickerDialog$3;->this$0:Lcom/ice/box/helpers/ColorPickerDialog;

    invoke-static/range {p2 .. p2}, Lcom/ice/box/helpers/ColorPickerDialog;->access$100(Lcom/ice/box/helpers/ColorPickerDialog;)Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->setCenterColor(I)V

    .line 106
    iget-object p0, p0, Lcom/ice/box/helpers/ColorPickerDialog$3;->this$0:Lcom/ice/box/helpers/ColorPickerDialog;

    invoke-static/range {p0 .. p0}, Lcom/ice/box/helpers/ColorPickerDialog;->access$300(Lcom/ice/box/helpers/ColorPickerDialog;)Landroid/widget/SeekBar;

    move-result-object p0

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
