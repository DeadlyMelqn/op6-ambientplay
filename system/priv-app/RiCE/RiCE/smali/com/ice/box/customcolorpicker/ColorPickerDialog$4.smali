.class Lcom/ice/box/customcolorpicker/ColorPickerDialog$4;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/customcolorpicker/ColorPickerDialog;->createPickerView()Landroid/view/View;
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

    .line 298
    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$4;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 302
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$4;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 304
    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$4;->this$0:Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->hexEditText:Landroid/widget/EditText;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
