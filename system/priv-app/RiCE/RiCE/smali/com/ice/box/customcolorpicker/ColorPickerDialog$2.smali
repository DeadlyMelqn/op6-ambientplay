.class Lcom/ice/box/customcolorpicker/ColorPickerDialog$2;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/customcolorpicker/ColorPickerDialog;->onStart()V
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

    .line 211
    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$2;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$2;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget-object v0, v0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual/range {v0 .. v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 215
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$2;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget v0, v0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->dialogType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 222
    :pswitch_0
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$2;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    const/4 v1, 0x0

    iput v1, v0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->dialogType:I

    .line 223
    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f100059

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 224
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$2;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget-object p1, p1, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->rootView:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$2;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->createPickerView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 217
    :pswitch_1
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$2;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    const/4 v1, 0x1

    iput v1, v0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->dialogType:I

    .line 218
    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f100057

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 219
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$2;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget-object p1, p1, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->rootView:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$2;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->createPresetsView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
