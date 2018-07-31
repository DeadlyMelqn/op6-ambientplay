.class Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder$2;
.super Ljava/lang/Object;
.source "ColorPaletteAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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


# direct methods
.method constructor <init>(Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder$2;->this$1:Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder$2;->this$1:Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;

    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$ViewHolder;->colorPanelView:Lcom/ice/box/customcolorpicker/ColorPanelView;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPanelView;->showHint()V

    const/4 p0, 0x1

    return p0
.end method
