.class public Lcom/ice/box/customcolorpicker/ColorPreference;
.super Landroid/preference/Preference;
.source "ColorPreference.java"

# interfaces
.implements Lcom/ice/box/customcolorpicker/ColorPickerDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ice/box/customcolorpicker/ColorPreference$OnShowDialogListener;
    }
.end annotation


# static fields
.field private static final SIZE_LARGE:I = 0x1

.field private static final SIZE_NORMAL:I


# instance fields
.field private allowCustom:Z

.field private allowPresets:Z

.field private color:I

.field private colorShape:I

.field private dialogTitle:I

.field private dialogType:I
    .annotation build Lcom/ice/box/customcolorpicker/ColorPickerDialog$DialogType;
    .end annotation
.end field

.field newColor:I

.field private onShowDialogListener:Lcom/ice/box/customcolorpicker/ColorPreference$OnShowDialogListener;

.field private presets:[I

.field private previewSize:I

.field private showAlphaSlider:Z

.field private showColorShades:Z

.field private showDialog:Z

.field systemKey:Ljava/lang/String;

.field tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 141
    invoke-direct/range {p0 .. p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 122
    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->newColor:I

    const-string p1, ""

    .line 123
    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->systemKey:Ljava/lang/String;

    const/high16 p1, -0x1000000

    .line 126
    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 142
    invoke-direct {p0, p2}, Lcom/ice/box/customcolorpicker/ColorPreference;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 146
    invoke-direct/range {p0 .. p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 122
    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->newColor:I

    const-string p1, ""

    .line 123
    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->systemKey:Ljava/lang/String;

    const/high16 p1, -0x1000000

    .line 126
    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 147
    invoke-direct {p0, p2}, Lcom/ice/box/customcolorpicker/ColorPreference;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, v0}, Lcom/ice/box/customcolorpicker/ColorPreference;->setPersistent(Z)V

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/ice/box/R$styleable;->ColorPreference:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v1, 0x1

    const/16 v2, 0x9

    .line 153
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->showDialog:Z

    const/4 v2, 0x5

    .line 155
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->dialogType:I

    const/4 v2, 0x3

    .line 156
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->colorShape:I

    .line 157
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->allowPresets:Z

    .line 158
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->allowCustom:Z

    const/4 v2, 0x7

    .line 159
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->showAlphaSlider:Z

    const/16 v2, 0x8

    .line 160
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->showColorShades:Z

    const/4 v2, 0x6

    .line 161
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->previewSize:I

    const/4 v2, 0x2

    .line 162
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    const/4 v2, 0x4

    const v3, 0x7f100058

    .line 163
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->dialogTitle:I

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->presets:[I

    goto :goto_0

    .line 167
    :cond_0
    sget-object v0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->MATERIAL_COLORS:[I

    iput-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->presets:[I

    .line 169
    :goto_0
    iget v0, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->colorShape:I

    if-ne v0, v1, :cond_2

    .line 170
    iget v0, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->previewSize:I

    if-ne v0, v1, :cond_1

    const v0, 0x7f0c0027

    goto :goto_1

    :cond_1
    const v0, 0x7f0c0026

    :goto_1
    invoke-virtual {p0, v0}, Lcom/ice/box/customcolorpicker/ColorPreference;->setWidgetLayoutResource(I)V

    goto :goto_3

    .line 173
    :cond_2
    iget v0, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->previewSize:I

    if-ne v0, v1, :cond_3

    const v0, 0x7f0c0029

    goto :goto_2

    :cond_3
    const v0, 0x7f0c0028

    :goto_2
    invoke-virtual {p0, v0}, Lcom/ice/box/customcolorpicker/ColorPreference;->setWidgetLayoutResource(I)V

    .line 176
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public exportValue(I)I
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 592
    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 593
    iget p0, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    return p0
.end method

.method public getFragmentTag()Ljava/lang/String;
    .locals 2

    .line 632
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->systemKey:Ljava/lang/String;

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "color_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPresets()[I
    .locals 0

    .line 602
    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->presets:[I

    return-object p0
.end method

.method protected onAttachedToActivity()V
    .locals 2

    .line 197
    invoke-super/range {p0 .. p0}, Landroid/preference/Preference;->onAttachedToActivity()V

    .line 199
    iget-boolean v0, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->showDialog:Z

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 201
    invoke-virtual/range {v0 .. v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0, p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->setColorPickerDialogListener(Lcom/ice/box/customcolorpicker/ColorPickerDialogListener;)V

    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1

    .line 212
    invoke-super/range {p0 .. p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f09004a

    .line 213
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ice/box/customcolorpicker/ColorPanelView;

    if-eqz p1, :cond_0

    .line 215
    iget p0, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    invoke-virtual {p1, p0}, Lcom/ice/box/customcolorpicker/ColorPanelView;->setColor(I)V

    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 2

    .line 181
    invoke-super/range {p0 .. p0}, Landroid/preference/Preference;->onClick()V

    .line 182
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->onShowDialogListener:Lcom/ice/box/customcolorpicker/ColorPreference$OnShowDialogListener;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->onShowDialogListener:Lcom/ice/box/customcolorpicker/ColorPreference$OnShowDialogListener;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget p0, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    invoke-interface {v0, v1, p0}, Lcom/ice/box/customcolorpicker/ColorPreference$OnShowDialogListener;->onShowColorPickerDialog(Ljava/lang/String;I)V

    goto :goto_0

    .line 184
    :cond_0
    iget-boolean v0, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->showDialog:Z

    if-eqz v0, :cond_1

    .line 185
    invoke-static {}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->newBuilder()Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;

    move-result-object v0

    iget v1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->dialogType:I

    invoke-virtual {v0, v1}, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->setDialogType(I)Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;

    move-result-object v0

    iget v1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->dialogTitle:I

    .line 186
    invoke-virtual {v0, v1}, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->setDialogTitle(I)Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;

    move-result-object v0

    iget v1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->colorShape:I

    invoke-virtual {v0, v1}, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->setColorShape(I)Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->presets:[I

    invoke-virtual {v0, v1}, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->setPresets([I)Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->allowPresets:Z

    invoke-virtual {v0, v1}, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->setAllowPresets(Z)Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->allowCustom:Z

    .line 187
    invoke-virtual {v0, v1}, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->setAllowCustom(Z)Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->showAlphaSlider:Z

    invoke-virtual {v0, v1}, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->setShowAlphaSlider(Z)Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->showColorShades:Z

    .line 188
    invoke-virtual {v0, v1}, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->setShowColorShades(Z)Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;

    move-result-object v0

    iget v1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    invoke-virtual {v0, v1}, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->setColor(I)Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;->create()Lcom/ice/box/customcolorpicker/ColorPickerDialog;

    move-result-object v0

    .line 189
    invoke-virtual {v0, p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->setColorPickerDialogListener(Lcom/ice/box/customcolorpicker/ColorPickerDialogListener;)V

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 191
    invoke-virtual/range {v1 .. v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getFragmentTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onColorSelected(II)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 545
    invoke-virtual {p0, p2}, Lcom/ice/box/customcolorpicker/ColorPreference;->saveValue(I)V

    return-void
.end method

.method public onDialogDismissed(I)V
    .locals 0

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/high16 p0, -0x1000000

    .line 540
    invoke-virtual {p1, p2, p0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 5

    if-eqz p1, :cond_0

    const/high16 p1, -0x1000000

    .line 222
    invoke-virtual {p0, p1}, Lcom/ice/box/customcolorpicker/ColorPreference;->getPersistedInt(I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    goto/16 :goto_c

    .line 224
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 225
    iget p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    invoke-virtual {p0, p1}, Lcom/ice/box/customcolorpicker/ColorPreference;->persistInt(I)Z

    .line 226
    sget-boolean p1, Lcom/ice/box/MainActivity;->isOP6:Z

    const/4 p2, -0x1

    const v0, -0x42000001    # -0.12499999f

    if-eqz p1, :cond_1

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_statusbar_icon_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_statusbar_icon_color"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_statusbar_icon_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_statusbar_icon_color"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 237
    :cond_2
    :goto_0
    sget-boolean p1, Lcom/ice/box/MainActivity;->isOP6:Z

    if-eqz p1, :cond_3

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_bluetooth_icon_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_bluetooth_icon_color"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    goto :goto_1

    .line 243
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_bluetooth_icon_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_bluetooth_icon_color"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 248
    :cond_4
    :goto_1
    sget-boolean p1, Lcom/ice/box/MainActivity;->isOP6:Z

    if-eqz p1, :cond_5

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_volume_icon_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_volume_icon_color"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    goto :goto_2

    .line 254
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_volume_icon_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_volume_icon_color"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 259
    :cond_6
    :goto_2
    sget-boolean p1, Lcom/ice/box/MainActivity;->isOP6:Z

    if-eqz p1, :cond_7

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_location_icon_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_location_icon_color"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    goto :goto_3

    .line 265
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_location_icon_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_location_icon_color"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 270
    :cond_8
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_alarm_icon_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_alarm_icon_color"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 274
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_powersaver_icon_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_powersaver_icon_color"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 278
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_dark_icon_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_dark_icon_color"

    const/high16 v2, -0x67000000

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 282
    :cond_b
    sget-boolean p1, Lcom/ice/box/MainActivity;->isOP6:Z

    if-eqz p1, :cond_c

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_statusbar_clock_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_statusbar_clock_color"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    goto :goto_4

    .line 288
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_statusbar_clock_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_statusbar_clock_color"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 293
    :cond_d
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_netspeed_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_netspeed_color"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 297
    :cond_e
    sget-boolean p1, Lcom/ice/box/MainActivity;->isOP6:Z

    if-eqz p1, :cond_f

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_netspeed_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_netspeed_color"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    goto :goto_5

    .line 303
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_netspeed_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_netspeed_color"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 308
    :cond_10
    :goto_5
    sget-boolean p1, Lcom/ice/box/MainActivity;->isOP6:Z

    if-eqz p1, :cond_11

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_notification_icon_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_notification_icon_color"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    goto :goto_6

    .line 314
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_notification_icon_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_notification_icon_color"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 319
    :cond_12
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_statusbar_battery_percent_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_statusbar_battery_percent_color"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 323
    :cond_13
    sget-boolean p1, Lcom/ice/box/MainActivity;->isOP6:Z

    if-eqz p1, :cond_14

    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_wifi_signal_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_wifi_signal_color"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    goto :goto_7

    .line 329
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_wifi_signal_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_wifi_signal_color"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 334
    :cond_15
    :goto_7
    sget-boolean p1, Lcom/ice/box/MainActivity;->isOP6:Z

    if-eqz p1, :cond_16

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_wifi_activity_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_wifi_activity_color"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    goto :goto_8

    .line 340
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_wifi_activity_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_wifi_activity_color"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 345
    :cond_17
    :goto_8
    sget-boolean p1, Lcom/ice/box/MainActivity;->isOP6:Z

    if-eqz p1, :cond_18

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_mobile_signal_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_mobile_signal_color"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    goto :goto_9

    .line 351
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_mobile_signal_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_mobile_signal_color"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 356
    :cond_19
    :goto_9
    sget-boolean p1, Lcom/ice/box/MainActivity;->isOP6:Z

    if-eqz p1, :cond_1a

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_mobile_type_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_mobile_type_color"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    goto :goto_a

    .line 362
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_mobile_type_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_mobile_type_color"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 367
    :cond_1b
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_mobile_roaming_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_mobile_roaming_color"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 371
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_airplane_mode_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_airplane_mode_color"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 375
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_battery_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_battery_color"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 379
    :cond_1e
    sget-boolean p1, Lcom/ice/box/MainActivity;->isOP6:Z

    if-eqz p1, :cond_1f

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tweaks_carrier_text_color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_carrier_text_color"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    goto :goto_b

    .line 385
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_carrier_text_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_carrier_text_color"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 390
    :cond_20
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tweaks_navbar_icon_color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v0, -0x50506

    if-eqz p1, :cond_21

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_navbar_icon_color"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 394
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "navigationbar_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "navigationbar_color"

    const v2, -0xf0f10

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 398
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_header_text_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v1, -0xdadadb

    if-eqz p1, :cond_23

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "tweaks_header_text_color"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 402
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v2, "tweaks_header_icon_color"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v2, -0x4cdadadb

    if-eqz p1, :cond_24

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "tweaks_header_icon_color"

    invoke-static {p1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 406
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v3, "tweaks_header_menu_icon_color"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 407
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "tweaks_header_menu_icon_color"

    invoke-static {p1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 410
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v3, "tweaks_header_settings_icon_color"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 411
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "tweaks_header_settings_icon_color"

    invoke-static {p1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 414
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v2, "tweaks_header_clock_color"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "tweaks_header_clock_color"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 418
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v2, "tweaks_header_date_color"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 419
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "tweaks_header_date_color"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 422
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v2, "tweaks_header_divider_color"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "tweaks_header_divider_color"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 426
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v2, "tweaks_qs_background_color"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 427
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "tweaks_qs_background_color"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 430
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v2, "tweaks_qs_text_color"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "tweaks_qs_text_color"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 434
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v2, "tweaks_qs_icon_on_color"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "tweaks_qs_icon_on_color"

    const v3, -0xdd3b01

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 438
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v2, "tweaks_qs_icon_off_color"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v2, 0x4d252525    # 1.73167184E8f

    if-eqz p1, :cond_2d

    .line 439
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "tweaks_qs_icon_off_color"

    invoke-static {p1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 442
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v3, "tweaks_qs_divider_color"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 443
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "tweaks_qs_divider_color"

    const v4, 0x33252525

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 446
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v3, "tweaks_qs_slider_color"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v3, -0xa93f1b

    if-eqz p1, :cond_2f

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v4, "tweaks_qs_slider_color"

    invoke-static {p1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 450
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v4, "tweaks_qs_slider_thumb_color"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 451
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v4, "tweaks_qs_slider_thumb_color"

    invoke-static {p1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 454
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v3, "tweaks_qs_slider_icon_color"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "tweaks_qs_slider_icon_color"

    invoke-static {p1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 458
    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v2, "tweaks_qs_page_indicator_color"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "tweaks_qs_page_indicator_color"

    const v3, -0xbbbbbc

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 462
    :cond_32
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v2, "tweaks_qs_drag_handle_background_color"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "tweaks_qs_drag_handle_background_color"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 466
    :cond_33
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v2, "tweaks_qs_drag_handle_icon_color"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 467
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "tweaks_qs_drag_handle_icon_color"

    const v3, -0x33dadadb    # -4.3291796E7f

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 470
    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v2, "tweaks_data_usage_text_color"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 471
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "tweaks_data_usage_text_color"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 475
    :cond_35
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_notification_background_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_notification_background_color"

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000e

    .line 478
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 476
    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 480
    :cond_36
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_notif_footer_text_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 481
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_notif_footer_text_color"

    const v2, -0x26dadadb

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 485
    :cond_37
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_notif_footer_background_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_notif_footer_background_color"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 490
    :cond_38
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_notification_summary_text_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_notification_summary_text_color"

    const v2, -0xaeaeaf

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 495
    :cond_39
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_notification_title_text_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 496
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_notification_title_text_color"

    const v2, -0xdedede

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 499
    :cond_3a
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "battery_bar_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 500
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "battery_bar_color"

    const v2, -0xcc4a1b

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 503
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_navbar_pin_icon_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_navbar_pin_icon_color"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 507
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_navbar_recents_icon_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_navbar_recents_icon_color"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 511
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_navbar_home_icon_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 512
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_navbar_home_icon_color"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 515
    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_navbar_back_icon_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 516
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_navbar_back_icon_color"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 519
    :cond_3f
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_navbar_menu_icon_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 520
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_navbar_menu_icon_color"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 523
    :cond_40
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tweaks_navbar_ime_icon_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 524
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_navbar_ime_icon_color"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 527
    :cond_41
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tweaks_notification_carrier_text_color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 528
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_notification_carrier_text_color"

    const v1, -0x33050506    # -1.31586E8f

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 531
    :cond_42
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tweaks_global_statusbar_icon_color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_global_statusbar_icon_color"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    :cond_43
    :goto_c
    return-void
.end method

.method public saveValue(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 559
    new-instance v0, Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ice/box/helpers/TweaksHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    .line 560
    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    .line 562
    iget v0, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    invoke-virtual {p0, v0}, Lcom/ice/box/customcolorpicker/ColorPreference;->persistInt(I)Z

    .line 563
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->notifyChanged()V

    .line 564
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ice/box/customcolorpicker/ColorPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 567
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->systemKey:Ljava/lang/String;

    const-string v0, "navigationbar_color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v0, 0x7f10006e

    if-eqz p1, :cond_0

    .line 569
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->systemKey:Ljava/lang/String;

    iget v2, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 570
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {v1 .. v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0x4000000

    .line 571
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 572
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 574
    :catch_0
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 578
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->systemKey:Ljava/lang/String;

    iget v2, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->color:I

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 579
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->systemKey:Ljava/lang/String;

    const-string v1, "tweaks_navbar_icon_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 580
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/helpers/TweaksHelper;->createRebootNotification()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 584
    :catch_1
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnShowDialogListener(Lcom/ice/box/customcolorpicker/ColorPreference$OnShowDialogListener;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->onShowDialogListener:Lcom/ice/box/customcolorpicker/ColorPreference$OnShowDialogListener;

    return-void
.end method

.method public setPresets([I)V
    .locals 0
    .param p1    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 611
    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPreference;->presets:[I

    return-void
.end method
