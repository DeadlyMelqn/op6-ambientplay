.class Lcom/ice/box/helpers/ColorPickerDialog$2;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    .line 76
    iput-object p1, p0, Lcom/ice/box/helpers/ColorPickerDialog$2;->this$0:Lcom/ice/box/helpers/ColorPickerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/ice/box/helpers/ColorPickerDialog$2;->this$0:Lcom/ice/box/helpers/ColorPickerDialog;

    invoke-static/range {p0 .. p0}, Lcom/ice/box/helpers/ColorPickerDialog;->access$100(Lcom/ice/box/helpers/ColorPickerDialog;)Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->setTransparency(I)V

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
