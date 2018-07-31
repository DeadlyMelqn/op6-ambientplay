.class public Lcom/ice/box/helpers/ColorPickerDialog;
.super Landroid/app/Dialog;
.source "ColorPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;,
        Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;,
        Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;,
        Lcom/ice/box/helpers/ColorPickerDialog$OnColorChangedListener;
    }
.end annotation


# static fields
.field static final STATE_FOCUSED:[I

.field static final STATE_PRESSED:[I


# instance fields
.field private mColorPickerView:Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;

.field private mContext:Landroid/content/Context;

.field private mEditText:Landroid/widget/EditText;

.field private mEditTextListener:Landroid/text/TextWatcher;

.field private mInitialColor:I

.field private mListener:Lcom/ice/box/helpers/ColorPickerDialog$OnColorChangedListener;

.field private mTransparencyBar:Landroid/widget/SeekBar;

.field private onColorChangedListener:Lcom/ice/box/helpers/ColorPickerDialog$OnColorChangedListener;

.field private onTransparencyChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field rectF:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 55
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x101009c

    aput v3, v1, v2

    sput-object v1, Lcom/ice/box/helpers/ColorPickerDialog;->STATE_FOCUSED:[I

    .line 56
    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/ice/box/helpers/ColorPickerDialog;->STATE_PRESSED:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ice/box/helpers/ColorPickerDialog$OnColorChangedListener;I)V
    .locals 1

    .line 114
    invoke-direct/range {p0 .. p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct/range {v0 .. v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog;->rectF:Landroid/graphics/RectF;

    .line 64
    new-instance v0, Lcom/ice/box/helpers/ColorPickerDialog$1;

    invoke-direct {v0, p0}, Lcom/ice/box/helpers/ColorPickerDialog$1;-><init>(Lcom/ice/box/helpers/ColorPickerDialog;)V

    iput-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog;->onColorChangedListener:Lcom/ice/box/helpers/ColorPickerDialog$OnColorChangedListener;

    .line 76
    new-instance v0, Lcom/ice/box/helpers/ColorPickerDialog$2;

    invoke-direct {v0, p0}, Lcom/ice/box/helpers/ColorPickerDialog$2;-><init>(Lcom/ice/box/helpers/ColorPickerDialog;)V

    iput-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog;->onTransparencyChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 90
    new-instance v0, Lcom/ice/box/helpers/ColorPickerDialog$3;

    invoke-direct {v0, p0}, Lcom/ice/box/helpers/ColorPickerDialog$3;-><init>(Lcom/ice/box/helpers/ColorPickerDialog;)V

    iput-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog;->mEditTextListener:Landroid/text/TextWatcher;

    .line 115
    iput-object p1, p0, Lcom/ice/box/helpers/ColorPickerDialog;->mContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Lcom/ice/box/helpers/ColorPickerDialog;->mListener:Lcom/ice/box/helpers/ColorPickerDialog$OnColorChangedListener;

    .line 117
    iput p3, p0, Lcom/ice/box/helpers/ColorPickerDialog;->mInitialColor:I

    return-void
.end method

.method static synthetic access$000(Lcom/ice/box/helpers/ColorPickerDialog;)Lcom/ice/box/helpers/ColorPickerDialog$OnColorChangedListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/ice/box/helpers/ColorPickerDialog;->mListener:Lcom/ice/box/helpers/ColorPickerDialog$OnColorChangedListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ice/box/helpers/ColorPickerDialog;)Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/ice/box/helpers/ColorPickerDialog;->mColorPickerView:Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ice/box/helpers/ColorPickerDialog;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 53
    invoke-direct/range {p0 .. p1}, Lcom/ice/box/helpers/ColorPickerDialog;->convertToColorInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/ice/box/helpers/ColorPickerDialog;)Landroid/widget/SeekBar;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/ice/box/helpers/ColorPickerDialog;->mTransparencyBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ice/box/helpers/ColorPickerDialog;I)Ljava/lang/String;
    .locals 0

    .line 53
    invoke-direct/range {p0 .. p1}, Lcom/ice/box/helpers/ColorPickerDialog;->convertToARGB(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/ice/box/helpers/ColorPickerDialog;)Landroid/widget/EditText;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/ice/box/helpers/ColorPickerDialog;->mEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method private convertToARGB(I)Ljava/lang/String;
    .locals 5

    .line 121
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 122
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static/range {v0 .. v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static/range {v1 .. v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct/range {v2 .. v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v2 .. v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 128
    :cond_0
    invoke-virtual/range {v0 .. v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct/range {v2 .. v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v2 .. v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_1
    invoke-virtual/range {v1 .. v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct/range {v2 .. v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v2 .. v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct/range {v2 .. v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v2 .. v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 137
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct/range {v2 .. v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v2 .. v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private convertToColorInt(Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 142
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/16 v6, 0x10

    if-ne p0, v1, :cond_0

    .line 143
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 144
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    .line 145
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 146
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result p0

    if-ne p0, v2, :cond_1

    const/16 v5, 0xff

    .line 149
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    .line 150
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 151
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    :cond_1
    move p0, v5

    move p1, p0

    move v0, p1

    .line 153
    :goto_0
    invoke-static {v5, p0, v0, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 158
    invoke-super/range {p0 .. p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 159
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 160
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    .line 161
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 162
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x14

    const/16 v3, 0xa

    const/16 v4, 0xf

    .line 164
    invoke-virtual {v1, v2, v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 165
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ice/box/helpers/ColorPickerDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "     Tap the center color to confirm.\n             Or press back to cancel"

    .line 166
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {p1, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    new-instance v2, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/helpers/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/ice/box/helpers/ColorPickerDialog;->onColorChangedListener:Lcom/ice/box/helpers/ColorPickerDialog$OnColorChangedListener;

    iget v5, p0, Lcom/ice/box/helpers/ColorPickerDialog;->mInitialColor:I

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;-><init>(Lcom/ice/box/helpers/ColorPickerDialog;Landroid/content/Context;Lcom/ice/box/helpers/ColorPickerDialog$OnColorChangedListener;I)V

    iput-object v2, p0, Lcom/ice/box/helpers/ColorPickerDialog;->mColorPickerView:Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;

    .line 169
    iget-object v2, p0, Lcom/ice/box/helpers/ColorPickerDialog;->mColorPickerView:Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;

    invoke-virtual {p1, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    new-instance v2, Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/ice/box/helpers/ColorPickerDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ice/box/helpers/ColorPickerDialog;->mTransparencyBar:Landroid/widget/SeekBar;

    .line 171
    iget-object v2, p0, Lcom/ice/box/helpers/ColorPickerDialog;->mTransparencyBar:Landroid/widget/SeekBar;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 172
    iget-object v2, p0, Lcom/ice/box/helpers/ColorPickerDialog;->mTransparencyBar:Landroid/widget/SeekBar;

    new-instance v3, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;

    iget-object v4, p0, Lcom/ice/box/helpers/ColorPickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "alpha"

    invoke-direct {v3, v4, v5, v0}, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    iget-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog;->mTransparencyBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/ice/box/helpers/ColorPickerDialog;->mInitialColor:I

    invoke-static/range {v2 .. v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 174
    iget-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog;->mTransparencyBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/ice/box/helpers/ColorPickerDialog;->onTransparencyChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 175
    iget-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog;->mTransparencyBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    new-instance v0, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ice/box/helpers/ColorPickerDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog;->mEditText:Landroid/widget/EditText;

    .line 177
    iget-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ice/box/helpers/ColorPickerDialog;->mEditTextListener:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 178
    iget-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog;->mEditText:Landroid/widget/EditText;

    iget v2, p0, Lcom/ice/box/helpers/ColorPickerDialog;->mInitialColor:I

    invoke-direct {p0, v2}, Lcom/ice/box/helpers/ColorPickerDialog;->convertToARGB(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    invoke-virtual {p0, p1}, Lcom/ice/box/helpers/ColorPickerDialog;->setContentView(Landroid/view/View;)V

    const-string p1, "  Choose Your Colour"

    .line 181
    invoke-virtual {p0, p1}, Lcom/ice/box/helpers/ColorPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
