.class public final Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ice/box/customcolorpicker/ColorPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field allowCustom:Z

.field allowPresets:Z

.field color:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field colorShape:I
    .annotation build Lcom/ice/box/customcolorpicker/ColorShape;
    .end annotation
.end field

.field dialogId:I

.field dialogTitle:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field dialogType:I
    .annotation build Lcom/ice/box/customcolorpicker/ColorPickerDialog$DialogType;
    .end annotation
.end field

.field presets:[I

.field showAlphaSlider:Z

.field showColorShades:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .line 735
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f100058

    .line 720
    iput v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->dialogTitle:I

    const/4 v0, 0x1

    .line 722
    iput v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->dialogType:I

    .line 724
    sget-object v1, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->MATERIAL_COLORS:[I

    iput-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->presets:[I

    const/high16 v1, -0x1000000

    .line 725
    iput v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->color:I

    const/4 v1, 0x0

    .line 727
    iput v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->dialogId:I

    .line 728
    iput-boolean v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->showAlphaSlider:Z

    .line 729
    iput-boolean v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->allowPresets:Z

    .line 730
    iput-boolean v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->allowCustom:Z

    .line 731
    iput-boolean v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->showColorShades:Z

    .line 732
    iput v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->colorShape:I

    return-void
.end method


# virtual methods
.method public create()Lcom/ice/box/customcolorpicker/ColorPickerDialog;
    .locals 4

    .line 858
    new-instance v0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    invoke-direct/range {v0 .. v0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;-><init>()V

    .line 859
    new-instance v1, Landroid/os/Bundle;

    invoke-direct/range {v1 .. v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "id"

    .line 860
    iget v3, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->dialogId:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "dialogType"

    .line 861
    iget v3, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->dialogType:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "color"

    .line 862
    iget v3, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->color:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "presets"

    .line 863
    iget-object v3, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->presets:[I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v2, "alpha"

    .line 864
    iget-boolean v3, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->showAlphaSlider:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "allowCustom"

    .line 865
    iget-boolean v3, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->allowCustom:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "allowPresets"

    .line 866
    iget-boolean v3, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->allowPresets:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "dialogTitle"

    .line 867
    iget v3, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->dialogTitle:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "showColorShades"

    .line 868
    iget-boolean v3, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->showColorShades:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "colorShape"

    .line 869
    iget p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->colorShape:I

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 870
    invoke-virtual {v0, v1}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public setAllowCustom(Z)Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;
    .locals 0

    .line 825
    iput-boolean p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->allowCustom:Z

    return-object p0
.end method

.method public setAllowPresets(Z)Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;
    .locals 0

    .line 814
    iput-boolean p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->allowPresets:Z

    return-object p0
.end method

.method public setColor(I)Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;
    .locals 0

    .line 780
    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->color:I

    return-object p0
.end method

.method public setColorShape(I)Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;
    .locals 0

    .line 847
    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->colorShape:I

    return-object p0
.end method

.method public setDialogId(I)Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;
    .locals 0

    .line 791
    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->dialogId:I

    return-object p0
.end method

.method public setDialogTitle(I)Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 746
    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->dialogTitle:I

    return-object p0
.end method

.method public setDialogType(I)Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Lcom/ice/box/customcolorpicker/ColorPickerDialog$DialogType;
        .end annotation
    .end param

    .line 758
    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->dialogType:I

    return-object p0
.end method

.method public setPresets([I)Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;
    .locals 0
    .param p1    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 769
    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->presets:[I

    return-object p0
.end method

.method public setShowAlphaSlider(Z)Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;
    .locals 0

    .line 803
    iput-boolean p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->showAlphaSlider:Z

    return-object p0
.end method

.method public setShowColorShades(Z)Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;
    .locals 0

    .line 836
    iput-boolean p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->showColorShades:Z

    return-object p0
.end method

.method public show(Landroid/app/Activity;)V
    .locals 1

    .line 880
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->create()Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    move-result-object p0

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string v0, "color-picker-dialog"

    invoke-virtual {p0, p1, v0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
