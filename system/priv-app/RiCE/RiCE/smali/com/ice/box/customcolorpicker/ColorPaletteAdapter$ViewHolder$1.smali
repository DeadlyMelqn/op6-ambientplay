.class Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "ColorPaletteAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->setOnClickListener(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;I)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder$1;->this$1:Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;

    iput p2, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder$1;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 127
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder$1;->this$1:Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;

    iget-object p1, p1, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->this$0:Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;

    iget p1, p1, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;->selectedPosition:I

    iget v0, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder$1;->val$position:I

    if-eq p1, v0, :cond_0

    .line 128
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder$1;->this$1:Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;

    iget-object p1, p1, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->this$0:Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;

    iget v0, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder$1;->val$position:I

    iput v0, p1, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;->selectedPosition:I

    .line 129
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder$1;->this$1:Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;

    iget-object p1, p1, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->this$0:Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;

    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;->notifyDataSetChanged()V

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder$1;->this$1:Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;

    iget-object p1, p1, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->this$0:Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;

    iget-object p1, p1, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;->listener:Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$OnColorSelectedListener;

    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder$1;->this$1:Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;

    iget-object v0, v0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->this$0:Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;

    iget-object v0, v0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;->colors:[I

    iget p0, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder$1;->val$position:I

    aget p0, v0, p0

    invoke-interface {p1, p0}, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$OnColorSelectedListener;->onColorSelected(I)V

    return-void
.end method
