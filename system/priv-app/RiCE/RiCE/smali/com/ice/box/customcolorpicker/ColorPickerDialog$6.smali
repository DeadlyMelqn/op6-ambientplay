.class Lcom/ice/box/customcolorpicker/ColorPickerDialog$6;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$colorShade:I


# direct methods
.method constructor <init>(Lcom/ice/box/customcolorpicker/ColorPickerDialog;Lcom/ice/box/customcolorpicker/ColorPanelView;I)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$6;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iput-object p2, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$6;->val$colorPanelView:Lcom/ice/box/customcolorpicker/ColorPanelView;

    iput p3, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$6;->val$colorShade:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$6;->val$colorPanelView:Lcom/ice/box/customcolorpicker/ColorPanelView;

    iget p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$6;->val$colorShade:I

    invoke-virtual {v0, p0}, Lcom/ice/box/customcolorpicker/ColorPanelView;->setColor(I)V

    return-void
.end method
