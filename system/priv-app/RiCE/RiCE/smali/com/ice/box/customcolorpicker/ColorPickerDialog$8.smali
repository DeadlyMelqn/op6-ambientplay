.class Lcom/ice/box/customcolorpicker/ColorPickerDialog$8;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 563
    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$8;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iput-object p2, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$8;->val$colorPanelView:Lcom/ice/box/customcolorpicker/ColorPanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 566
    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$8;->val$colorPanelView:Lcom/ice/box/customcolorpicker/ColorPanelView;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPanelView;->showHint()V

    const/4 p0, 0x1

    return p0
.end method
