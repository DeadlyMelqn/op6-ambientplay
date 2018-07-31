.class Lcom/ice/box/helpers/ColorPickerDialog$1;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Lcom/ice/box/helpers/ColorPickerDialog$OnColorChangedListener;


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

    .line 64
    iput-object p1, p0, Lcom/ice/box/helpers/ColorPickerDialog$1;->this$0:Lcom/ice/box/helpers/ColorPickerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog$1;->this$0:Lcom/ice/box/helpers/ColorPickerDialog;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/helpers/ColorPickerDialog;->access$000(Lcom/ice/box/helpers/ColorPickerDialog;)Lcom/ice/box/helpers/ColorPickerDialog$OnColorChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ice/box/helpers/ColorPickerDialog$OnColorChangedListener;->colorChanged(I)V

    .line 68
    iget-object p0, p0, Lcom/ice/box/helpers/ColorPickerDialog$1;->this$0:Lcom/ice/box/helpers/ColorPickerDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/helpers/ColorPickerDialog;->dismiss()V

    return-void
.end method

.method public colorUpdate(I)V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/ice/box/helpers/ColorPickerDialog$1;->this$0:Lcom/ice/box/helpers/ColorPickerDialog;

    invoke-static/range {p0 .. p0}, Lcom/ice/box/helpers/ColorPickerDialog;->access$000(Lcom/ice/box/helpers/ColorPickerDialog;)Lcom/ice/box/helpers/ColorPickerDialog$OnColorChangedListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/ice/box/helpers/ColorPickerDialog$OnColorChangedListener;->colorUpdate(I)V

    return-void
.end method
