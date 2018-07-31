.class public Lcom/ice/box/customcolorpicker/ColorPickerDialog;
.super Landroid/app/DialogFragment;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/ice/box/customcolorpicker/ColorPickerView$OnColorChangedListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;,
        Lcom/ice/box/customcolorpicker/ColorPickerDialog$DialogType;
    }
.end annotation


# static fields
.field static final ALPHA_THRESHOLD:I = 0xa5

.field private static final ARG_ALLOW_CUSTOM:Ljava/lang/String; = "allowCustom"

.field private static final ARG_ALLOW_PRESETS:Ljava/lang/String; = "allowPresets"

.field private static final ARG_ALPHA:Ljava/lang/String; = "alpha"

.field private static final ARG_COLOR:Ljava/lang/String; = "color"

.field private static final ARG_COLOR_SHAPE:Ljava/lang/String; = "colorShape"

.field private static final ARG_DIALOG_TITLE:Ljava/lang/String; = "dialogTitle"

.field private static final ARG_ID:Ljava/lang/String; = "id"

.field private static final ARG_PRESETS:Ljava/lang/String; = "presets"

.field private static final ARG_SHOW_COLOR_SHADES:Ljava/lang/String; = "showColorShades"

.field private static final ARG_TYPE:Ljava/lang/String; = "dialogType"

.field public static final MATERIAL_COLORS:[I

.field public static final TYPE_CUSTOM:I = 0x0

.field public static final TYPE_PRESETS:I = 0x1


# instance fields
.field adapter:Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;

.field color:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field colorPicker:Lcom/ice/box/customcolorpicker/ColorPickerView;

.field colorPickerDialogListener:Lcom/ice/box/customcolorpicker/ColorPickerDialogListener;

.field colorShape:I

.field dialogId:I

.field dialogType:I

.field private fromEditText:Z

.field hexEditText:Landroid/widget/EditText;

.field newColorPanel:Lcom/ice/box/customcolorpicker/ColorPanelView;

.field presets:[I

.field rootView:Landroid/widget/FrameLayout;

.field shadesLayout:Landroid/widget/LinearLayout;

.field showAlphaSlider:Z

.field showColorShades:Z

.field transparencyPercText:Landroid/widget/TextView;

.field transparencySeekBar:Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x13

    .line 78
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->MATERIAL_COLORS:[I

    return-void

    :array_0
    .array-data 4
        -0xbbcca
        -0x16e19d
        -0xd36d
        -0x63d850
        -0x98c549
        -0xc0ae4b
        -0xde690d
        -0xfc560c
        -0xff432c
        -0xff6978
        -0xb350b0
        -0x743cb6
        -0x3223c7
        -0x14c5
        -0x3ef9
        -0x6800
        -0x86aab8
        -0x9f8275
        -0x616162
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct/range {p0 .. p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private getColorShades(I)[I
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/16 v0, 0xc

    .line 589
    new-array v0, v0, [I

    const-wide v1, 0x3feccccccccccccdL    # 0.9

    invoke-direct {p0, p1, v1, v2}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->shadeColor(ID)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const-wide v1, 0x3fe6666666666666L    # 0.7

    invoke-direct {p0, p1, v1, v2}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->shadeColor(ID)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    invoke-direct {p0, p1, v1, v2}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->shadeColor(ID)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    const-wide v1, 0x3fd54fdf3b645a1dL    # 0.333

    invoke-direct {p0, p1, v1, v2}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->shadeColor(ID)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    const-wide v1, 0x3fc53f7ced916873L    # 0.166

    .line 590
    invoke-direct {p0, p1, v1, v2}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->shadeColor(ID)I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    const-wide/high16 v1, -0x4040000000000000L    # -0.125

    invoke-direct {p0, p1, v1, v2}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->shadeColor(ID)I

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    const-wide/high16 v1, -0x4030000000000000L    # -0.25

    invoke-direct {p0, p1, v1, v2}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->shadeColor(ID)I

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    const-wide/high16 v1, -0x4028000000000000L    # -0.375

    .line 591
    invoke-direct {p0, p1, v1, v2}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->shadeColor(ID)I

    move-result v1

    const/4 v2, 0x7

    aput v1, v0, v2

    const-wide/high16 v1, -0x4020000000000000L    # -0.5

    invoke-direct {p0, p1, v1, v2}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->shadeColor(ID)I

    move-result v1

    const/16 v2, 0x8

    aput v1, v0, v2

    const-wide v1, -0x401a666666666666L    # -0.675

    invoke-direct {p0, p1, v1, v2}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->shadeColor(ID)I

    move-result v1

    const/16 v2, 0x9

    aput v1, v0, v2

    const-wide v1, -0x401999999999999aL    # -0.7

    invoke-direct {p0, p1, v1, v2}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->shadeColor(ID)I

    move-result v1

    const/16 v2, 0xa

    aput v1, v0, v2

    const-wide v1, -0x4017333333333333L    # -0.775

    .line 592
    invoke-direct {p0, p1, v1, v2}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->shadeColor(ID)I

    move-result p0

    const/16 p1, 0xb

    aput p0, v0, p1

    return-object v0
.end method

.method private getSelectedItemPosition()I
    .locals 3

    const/4 v0, 0x0

    .line 701
    :goto_0
    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->presets:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 702
    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->presets:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->color:I

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private loadPresets()V
    .locals 8

    .line 471
    iget v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->color:I

    invoke-static/range {v0 .. v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 472
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "presets"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->presets:[I

    .line 473
    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->presets:[I

    if-nez v1, :cond_0

    sget-object v1, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->MATERIAL_COLORS:[I

    iput-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->presets:[I

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->presets:[I

    sget-object v2, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->MATERIAL_COLORS:[I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 475
    :goto_0
    iget-object v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->presets:[I

    iget-object v4, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->presets:[I

    array-length v4, v4

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->presets:[I

    const/16 v2, 0xff

    if-eq v0, v2, :cond_2

    move v2, v3

    .line 479
    :goto_1
    iget-object v4, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->presets:[I

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 480
    iget-object v4, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->presets:[I

    aget v4, v4, v2

    .line 481
    invoke-static/range {v4 .. v4}, Landroid/graphics/Color;->red(I)I

    move-result v5

    .line 482
    invoke-static/range {v4 .. v4}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 483
    invoke-static/range {v4 .. v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 484
    iget-object v7, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->presets:[I

    invoke-static {v0, v5, v6, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    aput v4, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 487
    :cond_2
    iget-object v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->presets:[I

    iget v4, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->color:I

    invoke-direct {p0, v2, v4}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->unshiftIfNotExists([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->presets:[I

    if-eqz v1, :cond_3

    .line 488
    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->presets:[I

    array-length v1, v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_3

    .line 491
    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->presets:[I

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->pushIfNotExists([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->presets:[I

    :cond_3
    return-void
.end method

.method public static newBuilder()Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;
    .locals 1

    .line 136
    new-instance v0, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;

    invoke-direct/range {v0 .. v0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog$Builder;-><init>()V

    return-object v0
.end method

.method private parseColorString(Ljava/lang/String;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-string p0, "#"

    .line 371
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 372
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 374
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v1, -0x1

    const/16 v2, 0xff

    const/4 v3, 0x0

    if-nez p0, :cond_1

    move p0, v3

    move p1, p0

    move v1, p1

    goto/16 :goto_0

    .line 378
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v4, 0x2

    const/16 v5, 0x10

    if-gt p0, v4, :cond_2

    .line 381
    invoke-static {p1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    move p1, v1

    move p0, v3

    move v1, p0

    goto/16 :goto_0

    .line 383
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v6, 0x3

    if-ne p0, v6, :cond_3

    .line 385
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 386
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    .line 387
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    goto/16 :goto_0

    .line 388
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v7, 0x4

    if-ne p0, v7, :cond_4

    .line 390
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 393
    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    move p1, p0

    move p0, v1

    move v1, v3

    goto/16 :goto_0

    .line 394
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v8, 0x5

    if-ne p0, v8, :cond_5

    .line 396
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 397
    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    .line 398
    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    goto/16 :goto_0

    .line 399
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v9, 0x6

    if-ne p0, v9, :cond_6

    .line 401
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 402
    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    .line 403
    invoke-virtual {p1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    .line 404
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v2, 0x7

    if-ne p0, v2, :cond_7

    .line 405
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 406
    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    .line 407
    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 408
    invoke-virtual {p1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    move v2, v1

    move v1, p0

    move p0, v0

    goto :goto_0

    .line 409
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 410
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 411
    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    .line 412
    invoke-virtual {p1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 413
    invoke-virtual {p1, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    move v10, v1

    move v1, p0

    move p0, v2

    move v2, v10

    goto :goto_0

    :cond_8
    move p0, v1

    move p1, p0

    move v2, p1

    .line 420
    :goto_0
    invoke-static {v2, v1, p0, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private pushIfNotExists([II)[I
    .locals 4

    .line 685
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, p0, :cond_1

    aget v3, p1, v1

    if-ne v3, p2, :cond_0

    move p0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_1
    if-nez p0, :cond_2

    .line 692
    array-length p0, p1

    add-int/2addr p0, v2

    new-array p0, p0, [I

    .line 693
    array-length v1, p0

    sub-int/2addr v1, v2

    aput p2, p0, v1

    .line 694
    array-length p2, p0

    sub-int/2addr p2, v2

    invoke-static {p1, v0, p0, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_2
    return-object p1
.end method

.method private setHex(I)V
    .locals 4

    .line 362
    iget-boolean v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->showAlphaSlider:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 363
    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->hexEditText:Landroid/widget/EditText;

    const-string v0, "%08X"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 365
    :cond_0
    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->hexEditText:Landroid/widget/EditText;

    const-string v0, "%06X"

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0xffffff

    and-int/2addr p1, v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private setupTransparency()V
    .locals 6

    .line 596
    iget v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->color:I

    invoke-static/range {v0 .. v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    rsub-int v0, v0, 0xff

    .line 597
    iget-object v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->transparencySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 598
    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->transparencySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 600
    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->transparencyPercText:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "%d%%"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {v0 .. v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->transparencySeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/ice/box/customcolorpicker/ColorPickerDialog$9;

    invoke-direct {v1, p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog$9;-><init>(Lcom/ice/box/customcolorpicker/ColorPickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private shadeColor(ID)I
    .locals 11
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const-string p0, "#%06X"

    const/4 v0, 0x1

    .line 574
    new-array v1, v0, [Ljava/lang/Object;

    const v2, 0xffffff

    and-int/2addr v2, p1

    invoke-static/range {v2 .. v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 575
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpg-double p0, p2, v3

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide v3, 0x406fe00000000000L    # 255.0

    :goto_0
    if-gez p0, :cond_1

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    mul-double/2addr p2, v5

    :cond_1
    shr-long v5, v1, v0

    const/16 p0, 0x8

    shr-long v7, v1, p0

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    and-long v0, v1, v9

    .line 581
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    long-to-double v9, v5

    sub-double v9, v3, v9

    mul-double/2addr v9, p2

    .line 582
    invoke-static/range {v9 .. v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    add-long/2addr v9, v5

    long-to-int p1, v9

    long-to-double v5, v7

    sub-double v5, v3, v5

    mul-double/2addr v5, p2

    .line 583
    invoke-static/range {v5 .. v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    add-long/2addr v5, v7

    long-to-int v2, v5

    long-to-double v5, v0

    sub-double/2addr v3, v5

    mul-double/2addr v3, p2

    .line 584
    invoke-static/range {v3 .. v4}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    add-long/2addr p2, v0

    long-to-int p2, p2

    .line 585
    invoke-static {p0, p1, v2, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private unshiftIfNotExists([II)[I
    .locals 4

    .line 668
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, p0, :cond_1

    aget v3, p1, v1

    if-ne v3, p2, :cond_0

    move p0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_1
    if-nez p0, :cond_2

    .line 675
    array-length p0, p1

    add-int/2addr p0, v2

    new-array p0, p0, [I

    .line 676
    aput p2, p0, v0

    .line 677
    array-length p2, p0

    sub-int/2addr p2, v2

    invoke-static {p1, v0, p0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_2
    return-object p1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->hexEditText:Landroid/widget/EditText;

    invoke-virtual/range {v0 .. v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->parseColorString(Ljava/lang/String;)I

    move-result p1

    .line 354
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->colorPicker:Lcom/ice/box/customcolorpicker/ColorPickerView;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->getColor()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    .line 355
    iput-boolean v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->fromEditText:Z

    .line 356
    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->colorPicker:Lcom/ice/box/customcolorpicker/ColorPickerView;

    invoke-virtual {p0, p1, v0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->setColor(IZ)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method createColorShades(I)V
    .locals 9
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 496
    invoke-direct/range {p0 .. p1}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->getColorShades(I)[I

    move-result-object p1

    .line 498
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->shadesLayout:Landroid/widget/LinearLayout;

    invoke-virtual/range {v0 .. v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f090047

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    move v0, v3

    .line 499
    :goto_0
    iget-object v4, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->shadesLayout:Landroid/widget/LinearLayout;

    invoke-virtual/range {v4 .. v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 500
    iget-object v4, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->shadesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 501
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/ice/box/customcolorpicker/ColorPanelView;

    const v6, 0x7f090044

    .line 502
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 503
    aget v6, p1, v0

    invoke-virtual {v5, v6}, Lcom/ice/box/customcolorpicker/ColorPanelView;->setColor(I)V

    .line 504
    invoke-static/range {v3 .. v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ice/box/customcolorpicker/ColorPanelView;->setTag(Ljava/lang/Object;)V

    .line 505
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 510
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f070059

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 512
    array-length v4, p1

    :goto_1
    if-ge v3, v4, :cond_3

    aget v5, p1, v3

    .line 514
    iget v6, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->colorShape:I

    if-nez v6, :cond_2

    const v6, 0x7f0c0023

    goto :goto_2

    :cond_2
    const v6, 0x7f0c0022

    .line 520
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v6, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 521
    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/ice/box/customcolorpicker/ColorPanelView;

    .line 523
    invoke-virtual/range {v7 .. v7}, Lcom/ice/box/customcolorpicker/ColorPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 524
    iput v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 525
    invoke-virtual {v7, v8}, Lcom/ice/box/customcolorpicker/ColorPanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    invoke-virtual {v7, v5}, Lcom/ice/box/customcolorpicker/ColorPanelView;->setColor(I)V

    .line 527
    iget-object v8, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->shadesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 529
    new-instance v6, Lcom/ice/box/customcolorpicker/ColorPickerDialog$6;

    invoke-direct {v6, p0, v7, v5}, Lcom/ice/box/customcolorpicker/ColorPickerDialog$6;-><init>(Lcom/ice/box/customcolorpicker/ColorPickerDialog;Lcom/ice/box/customcolorpicker/ColorPanelView;I)V

    invoke-virtual {v7, v6}, Lcom/ice/box/customcolorpicker/ColorPanelView;->post(Ljava/lang/Runnable;)Z

    .line 537
    new-instance v5, Lcom/ice/box/customcolorpicker/ColorPickerDialog$7;

    invoke-direct {v5, p0, v7}, Lcom/ice/box/customcolorpicker/ColorPickerDialog$7;-><init>(Lcom/ice/box/customcolorpicker/ColorPickerDialog;Lcom/ice/box/customcolorpicker/ColorPanelView;)V

    invoke-virtual {v7, v5}, Lcom/ice/box/customcolorpicker/ColorPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    new-instance v5, Lcom/ice/box/customcolorpicker/ColorPickerDialog$8;

    invoke-direct {v5, p0, v7}, Lcom/ice/box/customcolorpicker/ColorPickerDialog$8;-><init>(Lcom/ice/box/customcolorpicker/ColorPickerDialog;Lcom/ice/box/customcolorpicker/ColorPanelView;)V

    invoke-virtual {v7, v5}, Lcom/ice/box/customcolorpicker/ColorPanelView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method createPickerView()Landroid/view/View;
    .locals 9

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0024

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090048

    .line 258
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ice/box/customcolorpicker/ColorPickerView;

    iput-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->colorPicker:Lcom/ice/box/customcolorpicker/ColorPickerView;

    const v1, 0x7f090046

    .line 259
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ice/box/customcolorpicker/ColorPanelView;

    const v2, 0x7f090045

    .line 260
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ice/box/customcolorpicker/ColorPanelView;

    iput-object v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->newColorPanel:Lcom/ice/box/customcolorpicker/ColorPanelView;

    const v2, 0x7f090043

    .line 261
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f090049

    .line 262
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->hexEditText:Landroid/widget/EditText;

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 265
    :try_start_0
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct/range {v5 .. v5}, Landroid/util/TypedValue;-><init>()V

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget v5, v5, Landroid/util/TypedValue;->data:I

    new-array v7, v4, [I

    const v8, 0x1010036

    aput v8, v7, v3

    invoke-virtual {v6, v5, v7}, Landroid/app/Activity;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/high16 v6, -0x1000000

    .line 268
    invoke-virtual {v5, v3, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 269
    invoke-virtual/range {v5 .. v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 270
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setColorFilter(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :catch_0
    iget-object v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->colorPicker:Lcom/ice/box/customcolorpicker/ColorPickerView;

    iget-boolean v5, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->showAlphaSlider:Z

    invoke-virtual {v2, v5}, Lcom/ice/box/customcolorpicker/ColorPickerView;->setAlphaSliderVisible(Z)V

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "color"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ice/box/customcolorpicker/ColorPanelView;->setColor(I)V

    .line 276
    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->colorPicker:Lcom/ice/box/customcolorpicker/ColorPickerView;

    iget v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->color:I

    invoke-virtual {v1, v2, v4}, Lcom/ice/box/customcolorpicker/ColorPickerView;->setColor(IZ)V

    .line 277
    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->newColorPanel:Lcom/ice/box/customcolorpicker/ColorPanelView;

    iget v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->color:I

    invoke-virtual {v1, v2}, Lcom/ice/box/customcolorpicker/ColorPanelView;->setColor(I)V

    .line 278
    iget v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->color:I

    invoke-direct {p0, v1}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->setHex(I)V

    .line 280
    iget-boolean v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->showAlphaSlider:Z

    if-nez v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->hexEditText:Landroid/widget/EditText;

    new-array v2, v4, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/4 v5, 0x6

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->newColorPanel:Lcom/ice/box/customcolorpicker/ColorPanelView;

    new-instance v2, Lcom/ice/box/customcolorpicker/ColorPickerDialog$3;

    invoke-direct {v2, p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog$3;-><init>(Lcom/ice/box/customcolorpicker/ColorPickerDialog;)V

    invoke-virtual {v1, v2}, Lcom/ice/box/customcolorpicker/ColorPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 295
    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->colorPicker:Lcom/ice/box/customcolorpicker/ColorPickerView;

    invoke-virtual {v1, p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->setOnColorChangedListener(Lcom/ice/box/customcolorpicker/ColorPickerView$OnColorChangedListener;)V

    .line 296
    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->hexEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 298
    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->hexEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/ice/box/customcolorpicker/ColorPickerDialog$4;

    invoke-direct {v2, p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog$4;-><init>(Lcom/ice/box/customcolorpicker/ColorPickerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-object v0
.end method

.method createPresetsView()Landroid/view/View;
    .locals 8

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0025

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900db

    .line 429
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->shadesLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f090108

    .line 430
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->transparencySeekBar:Landroid/widget/SeekBar;

    const v1, 0x7f090109

    .line 431
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->transparencyPercText:Landroid/widget/TextView;

    const v1, 0x7f090068

    .line 432
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 434
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->loadPresets()V

    .line 436
    iget-boolean v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->showColorShades:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    .line 437
    iget v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->color:I

    invoke-virtual {p0, v2}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->createColorShades(I)V

    goto :goto_0

    .line 439
    :cond_0
    iget-object v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->shadesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v2, 0x7f0900da

    .line 440
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 443
    :goto_0
    new-instance v2, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;

    new-instance v4, Lcom/ice/box/customcolorpicker/ColorPickerDialog$5;

    invoke-direct {v4, p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog$5;-><init>(Lcom/ice/box/customcolorpicker/ColorPickerDialog;)V

    iget-object v5, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->presets:[I

    .line 456
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->getSelectedItemPosition()I

    move-result v6

    iget v7, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->colorShape:I

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;-><init>(Lcom/ice/box/customcolorpicker/ColorPaletteAdapter$OnColorSelectedListener;[III)V

    iput-object v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->adapter:Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;

    .line 458
    iget-object v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->adapter:Lcom/ice/box/customcolorpicker/ColorPaletteAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 460
    iget-boolean v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->showAlphaSlider:Z

    if-eqz v1, :cond_1

    .line 461
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->setupTransparency()V

    goto :goto_1

    :cond_1
    const p0, 0x7f090107

    .line 463
    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    const p0, 0x7f09010a

    .line 464
    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 141
    invoke-super/range {p0 .. p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 142
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->colorPickerDialogListener:Lcom/ice/box/customcolorpicker/ColorPickerDialogListener;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/ice/box/customcolorpicker/ColorPickerDialogListener;

    if-eqz v0, :cond_0

    .line 143
    check-cast p1, Lcom/ice/box/customcolorpicker/ColorPickerDialogListener;

    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->colorPickerDialogListener:Lcom/ice/box/customcolorpicker/ColorPickerDialogListener;

    :cond_0
    return-void
.end method

.method public onColorChanged(I)V
    .locals 2

    .line 326
    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->color:I

    .line 327
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->newColorPanel:Lcom/ice/box/customcolorpicker/ColorPanelView;

    invoke-virtual {v0, p1}, Lcom/ice/box/customcolorpicker/ColorPanelView;->setColor(I)V

    .line 328
    iget-boolean v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->fromEditText:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 329
    invoke-direct/range {p0 .. p1}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->setHex(I)V

    .line 330
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->hexEditText:Landroid/widget/EditText;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 333
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->hexEditText:Landroid/widget/EditText;

    invoke-virtual/range {v0 .. v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 334
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->hexEditText:Landroid/widget/EditText;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->clearFocus()V

    .line 337
    :cond_0
    iput-boolean v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->fromEditText:Z

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->dialogId:I

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "alpha"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->showAlphaSlider:Z

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "showColorShades"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->showColorShades:Z

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "colorShape"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->colorShape:I

    if-nez p1, :cond_0

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->color:I

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "dialogType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->dialogType:I

    goto :goto_0

    :cond_0
    const-string v0, "color"

    .line 157
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->color:I

    const-string v0, "dialogType"

    .line 158
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->dialogType:I

    .line 161
    :goto_0
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->rootView:Landroid/widget/FrameLayout;

    .line 162
    iget p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->dialogType:I

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 163
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->createPickerView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 164
    :cond_1
    iget p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->dialogType:I

    if-ne p1, v0, :cond_2

    .line 165
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->createPresetsView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 168
    :cond_2
    :goto_1
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f10005a

    new-instance v2, Lcom/ice/box/customcolorpicker/ColorPickerDialog$1;

    invoke-direct {v2, p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog$1;-><init>(Lcom/ice/box/customcolorpicker/ColorPickerDialog;)V

    invoke-virtual {p1, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "dialogTitle"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 178
    invoke-virtual {p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 182
    :cond_3
    iget v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->dialogType:I

    if-nez v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "allowPresets"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const p0, 0x7f100059

    goto :goto_2

    .line 184
    :cond_4
    iget v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->dialogType:I

    if-ne v1, v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "allowCustom"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    const p0, 0x7f100057

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    :goto_2
    if-eqz p0, :cond_6

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p1, p0, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 194
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 233
    invoke-super/range {p0 .. p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 234
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->colorPickerDialogListener:Lcom/ice/box/customcolorpicker/ColorPickerDialogListener;

    iget p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->dialogId:I

    invoke-interface {p1, p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialogListener;->onDialogDismissed(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "color"

    .line 239
    iget v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->color:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "dialogType"

    .line 240
    iget v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->dialogType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    invoke-super/range {p0 .. p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 199
    invoke-super/range {p0 .. p0}, Landroid/app/DialogFragment;->onStart()V

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AlertDialog;

    .line 204
    invoke-virtual/range {v0 .. v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x20008

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 206
    invoke-virtual/range {v0 .. v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 v1, -0x3

    .line 209
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    new-instance v1, Lcom/ice/box/customcolorpicker/ColorPickerDialog$2;

    invoke-direct {v1, p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog$2;-><init>(Lcom/ice/box/customcolorpicker/ColorPickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 314
    iget-object p2, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->hexEditText:Landroid/widget/EditText;

    const/4 v0, 0x0

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->hexEditText:Landroid/widget/EditText;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 315
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->hexEditText:Landroid/widget/EditText;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->clearFocus()V

    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 317
    iget-object p2, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->hexEditText:Landroid/widget/EditText;

    invoke-virtual/range {p2 .. p2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 318
    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->hexEditText:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->clearFocus()V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public setColorPickerDialogListener(Lcom/ice/box/customcolorpicker/ColorPickerDialogListener;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerDialog;->colorPickerDialogListener:Lcom/ice/box/customcolorpicker/ColorPickerDialogListener;

    return-void
.end method
