.class Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;
.super Ljava/lang/Object;
.source "ColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ice/box/customcolorpicker/ColorPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapCache"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public canvas:Landroid/graphics/Canvas;

.field final synthetic this$0:Lcom/ice/box/customcolorpicker/ColorPickerView;

.field public value:F


# direct methods
.method private constructor <init>(Lcom/ice/box/customcolorpicker/ColorPickerView;)V
    .locals 0

    .line 981
    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ice/box/customcolorpicker/ColorPickerView;Lcom/ice/box/customcolorpicker/ColorPickerView$1;)V
    .locals 0

    .line 981
    invoke-direct/range {p0 .. p1}, Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;-><init>(Lcom/ice/box/customcolorpicker/ColorPickerView;)V

    return-void
.end method
