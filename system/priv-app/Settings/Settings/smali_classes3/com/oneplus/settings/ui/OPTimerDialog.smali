.class public Lcom/oneplus/settings/ui/OPTimerDialog;
.super Ljava/lang/Object;
.source "OPTimerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPTimerDialog$1;
    }
.end annotation


# static fields
.field private static final TYPE_NEGATIVE:I = 0x2

.field private static final TYPE_POSITIVE:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mNegativeCount:I

.field private mPositiveCount:I

.field private n:Landroid/widget/Button;

.field private p:Landroid/widget/Button;

.field private status:Z


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/ui/OPTimerDialog;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/ui/OPTimerDialog;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/settings/ui/OPTimerDialog;)I
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/ui/OPTimerDialog;

    .prologue
    iget v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mNegativeCount:I

    return v0
.end method

.method static synthetic -get3(Lcom/oneplus/settings/ui/OPTimerDialog;)I
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/ui/OPTimerDialog;

    .prologue
    iget v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mPositiveCount:I

    return v0
.end method

.method static synthetic -get4(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/ui/OPTimerDialog;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->n:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get5(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/ui/OPTimerDialog;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->p:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get6(Lcom/oneplus/settings/ui/OPTimerDialog;)Z
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/ui/OPTimerDialog;

    .prologue
    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->status:Z

    return v0
.end method

.method static synthetic -set0(Lcom/oneplus/settings/ui/OPTimerDialog;I)I
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/ui/OPTimerDialog;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mNegativeCount:I

    return p1
.end method

.method static synthetic -set1(Lcom/oneplus/settings/ui/OPTimerDialog;I)I
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/ui/OPTimerDialog;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mPositiveCount:I

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->p:Landroid/widget/Button;

    .line 21
    iput-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->n:Landroid/widget/Button;

    .line 22
    iput v3, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mPositiveCount:I

    .line 23
    iput v3, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mNegativeCount:I

    .line 24
    iput-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    .line 26
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->status:Z

    .line 143
    new-instance v1, Lcom/oneplus/settings/ui/OPTimerDialog$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ui/OPTimerDialog$1;-><init>(Lcom/oneplus/settings/ui/OPTimerDialog;)V

    iput-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mHandler:Landroid/os/Handler;

    .line 29
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mContext:Landroid/content/Context;

    .line 30
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 31
    .local v0, "mBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    .line 32
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 33
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 34
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 35
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/OPTimerDialog;->setStatus(Z)V

    .line 86
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 87
    iput-object v2, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mHandler:Landroid/os/Handler;

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_1
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getNButton()Landroid/widget/Button;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->n:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->n:Landroid/widget/Button;

    return-object v0

    .line 140
    :cond_0
    return-object v1
.end method

.method public getPButton()Landroid/widget/Button;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->p:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->p:Landroid/widget/Button;

    return-object v0

    .line 133
    :cond_0
    return-object v1
.end method

.method public getTimeText(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    const/4 v2, 0x0

    .line 198
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    if-lez p2, :cond_1

    .line 200
    const-string/jumbo v1, "("

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 201
    .local v0, "index":I
    if-lez v0, :cond_0

    .line 202
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 205
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 210
    .end local v0    # "index":I
    :cond_1
    return-object p1
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    return v0

    .line 219
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setButtonType(IIZ)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "count"    # I
    .param p3, "isDisable"    # Z

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 110
    if-gtz p2, :cond_0

    .line 111
    return-void

    .line 114
    :cond_0
    if-ne p1, v2, :cond_2

    .line 115
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->p:Landroid/widget/Button;

    .line 116
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->p:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 117
    iput p2, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mPositiveCount:I

    .line 127
    :cond_1
    :goto_0
    return-void

    .line 120
    :cond_2
    if-ne p1, v1, :cond_1

    .line 121
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->n:Landroid/widget/Button;

    .line 122
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->n:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 123
    iput p2, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mNegativeCount:I

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 39
    return-void
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "count"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/oneplus/settings/ui/OPTimerDialog$2;

    invoke-direct {v1, p0, p2}, Lcom/oneplus/settings/ui/OPTimerDialog$2;-><init>(Lcom/oneplus/settings/ui/OPTimerDialog;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 80
    return-void
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "count"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 66
    return-void
.end method

.method public setStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->status:Z

    .line 59
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 43
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 53
    return-void
.end method
