.class public Landroid/app/ProgressDialog;
.super Landroid/app/AlertDialog;
.source "ProgressDialog.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I


# instance fields
.field private mHasStarted:Z

.field private mIncrementBy:I

.field private mIncrementSecondaryBy:I

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressNumber:Landroid/widget/TextView;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressStyle:I

.field private mProgressVal:I

.field private mSecondaryProgressVal:I

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Landroid/app/ProgressDialog;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "-this"    # Landroid/app/ProgressDialog;

    .prologue
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic -get1(Landroid/app/ProgressDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "-this"    # Landroid/app/ProgressDialog;

    .prologue
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Landroid/app/ProgressDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Landroid/app/ProgressDialog;

    .prologue
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Landroid/app/ProgressDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "-this"    # Landroid/app/ProgressDialog;

    .prologue
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4(Landroid/app/ProgressDialog;)Ljava/text/NumberFormat;
    .locals 1
    .param p0, "-this"    # Landroid/app/ProgressDialog;

    .prologue
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    .line 95
    invoke-direct {p0}, Landroid/app/ProgressDialog;->initFormats()V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    .line 108
    invoke-direct {p0}, Landroid/app/ProgressDialog;->initFormats()V

    .line 109
    return-void
.end method

.method private initFormats()V
    .locals 2

    .prologue
    .line 112
    const-string/jumbo v0, "%1d/%2d"

    iput-object v0, p0, Landroid/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 113
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 114
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 115
    return-void
.end method

.method private onProgressChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 511
    iget v0, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 512
    iget-object v0, p0, Landroid/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Landroid/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 516
    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z

    .prologue
    .line 142
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z

    .prologue
    .line 159
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z
    .param p5, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 179
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 180
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 182
    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 183
    invoke-virtual {v0, p4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 184
    invoke-virtual {v0, p5}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 185
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 186
    return-object v0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    return v0

    .line 348
    :cond_0
    iget v0, p0, Landroid/app/ProgressDialog;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    return v0

    .line 324
    :cond_0
    iget v0, p0, Landroid/app/ProgressDialog;->mProgressVal:I

    return v0
.end method

.method public getSecondaryProgress()I
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    return v0

    .line 336
    :cond_0
    iget v0, p0, Landroid/app/ProgressDialog;->mSecondaryProgressVal:I

    return v0
.end method

.method public incrementProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 370
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 372
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    iget v0, p0, Landroid/app/ProgressDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/app/ProgressDialog;->mIncrementBy:I

    goto :goto_0
.end method

.method public incrementSecondaryProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 385
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 387
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 391
    :goto_0
    return-void

    .line 389
    :cond_0
    iget v0, p0, Landroid/app/ProgressDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/app/ProgressDialog;->mIncrementSecondaryBy:I

    goto :goto_0
.end method

.method public isIndeterminate()Z
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    return v0

    .line 453
    :cond_0
    iget-boolean v0, p0, Landroid/app/ProgressDialog;->mIndeterminate:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x102000d

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 191
    iget-object v3, p0, Landroid/app/ProgressDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 192
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v3, p0, Landroid/app/ProgressDialog;->mContext:Landroid/content/Context;

    .line 193
    sget-object v4, Lcom/android/internal/R$styleable;->AlertDialog:[I

    .line 194
    const v5, 0x101005d

    .line 192
    invoke-virtual {v3, v7, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 195
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v3, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 200
    new-instance v3, Landroid/app/ProgressDialog$1;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog$1;-><init>(Landroid/app/ProgressDialog;)V

    iput-object v3, p0, Landroid/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 226
    const/16 v3, 0xd

    .line 227
    const v4, 0x109002e

    .line 225
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 228
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 229
    const v3, 0x102037c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/app/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    .line 230
    const v3, 0x102037d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/app/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    .line 231
    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setView(Landroid/view/View;)V

    .line 240
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 241
    iget v3, p0, Landroid/app/ProgressDialog;->mMax:I

    if-lez v3, :cond_0

    .line 242
    iget v3, p0, Landroid/app/ProgressDialog;->mMax:I

    invoke-virtual {p0, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 244
    :cond_0
    iget v3, p0, Landroid/app/ProgressDialog;->mProgressVal:I

    if-lez v3, :cond_1

    .line 245
    iget v3, p0, Landroid/app/ProgressDialog;->mProgressVal:I

    invoke-virtual {p0, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 247
    :cond_1
    iget v3, p0, Landroid/app/ProgressDialog;->mSecondaryProgressVal:I

    if-lez v3, :cond_2

    .line 248
    iget v3, p0, Landroid/app/ProgressDialog;->mSecondaryProgressVal:I

    invoke-virtual {p0, v3}, Landroid/app/ProgressDialog;->setSecondaryProgress(I)V

    .line 250
    :cond_2
    iget v3, p0, Landroid/app/ProgressDialog;->mIncrementBy:I

    if-lez v3, :cond_3

    .line 251
    iget v3, p0, Landroid/app/ProgressDialog;->mIncrementBy:I

    invoke-virtual {p0, v3}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 253
    :cond_3
    iget v3, p0, Landroid/app/ProgressDialog;->mIncrementSecondaryBy:I

    if-lez v3, :cond_4

    .line 254
    iget v3, p0, Landroid/app/ProgressDialog;->mIncrementSecondaryBy:I

    invoke-virtual {p0, v3}, Landroid/app/ProgressDialog;->incrementSecondaryProgressBy(I)V

    .line 256
    :cond_4
    iget-object v3, p0, Landroid/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5

    .line 257
    iget-object v3, p0, Landroid/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Landroid/app/ProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    :cond_5
    iget-object v3, p0, Landroid/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6

    .line 260
    iget-object v3, p0, Landroid/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 262
    :cond_6
    iget-object v3, p0, Landroid/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v3, :cond_7

    .line 263
    iget-object v3, p0, Landroid/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 265
    :cond_7
    iget-boolean v3, p0, Landroid/app/ProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 266
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 267
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 268
    return-void

    .line 234
    .end local v2    # "view":Landroid/view/View;
    :cond_8
    const/16 v3, 0x12

    .line 235
    const v4, 0x10900c1

    .line 233
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 236
    .restart local v2    # "view":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 237
    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 238
    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 272
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ProgressDialog;->mHasStarted:Z

    .line 274
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 278
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ProgressDialog;->mHasStarted:Z

    .line 280
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .prologue
    .line 437
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 442
    :goto_0
    return-void

    .line 440
    :cond_0
    iput-boolean p1, p0, Landroid/app/ProgressDialog;->mIndeterminate:Z

    goto :goto_0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 417
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_0
    iput-object p1, p0, Landroid/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 355
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 357
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 361
    :goto_0
    return-void

    .line 359
    :cond_0
    iput p1, p0, Landroid/app/ProgressDialog;->mMax:I

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 458
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 459
    iget v0, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 460
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 467
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Landroid/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 465
    :cond_1
    iput-object p1, p0, Landroid/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 290
    iget-boolean v0, p0, Landroid/app/ProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 292
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    iput p1, p0, Landroid/app/ProgressDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 401
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 406
    :goto_0
    return-void

    .line 404
    :cond_0
    iput-object p1, p0, Landroid/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 493
    iput-object p1, p0, Landroid/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 494
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 495
    return-void
.end method

.method public setProgressPercentFormat(Ljava/text/NumberFormat;)V
    .locals 0
    .param p1, "format"    # Ljava/text/NumberFormat;

    .prologue
    .line 506
    iput-object p1, p0, Landroid/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 507
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 508
    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 481
    iput p1, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    .line 482
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1
    .param p1, "secondaryProgress"    # I

    .prologue
    .line 307
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 309
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    iput p1, p0, Landroid/app/ProgressDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method
