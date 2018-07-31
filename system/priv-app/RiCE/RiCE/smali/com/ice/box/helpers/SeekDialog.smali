.class public Lcom/ice/box/helpers/SeekDialog;
.super Ljava/lang/Object;
.source "SeekDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ice/box/helpers/SeekDialog$SeekEnum;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ice/box/helpers/SeekDialog;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getSeekDialog(Lcom/ice/box/helpers/SeekDialog$SeekEnum;)Landroid/app/AlertDialog;
    .locals 3

    .line 19
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ice/box/helpers/SeekDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 20
    iget-object v1, p0, Lcom/ice/box/helpers/SeekDialog;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 23
    sget-object v2, Lcom/ice/box/helpers/SeekDialog$1;->$SwitchMap$com$ice$box$helpers$SeekDialog$SeekEnum:[I

    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/helpers/SeekDialog$SeekEnum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    packed-switch p1, :pswitch_data_0

    const-string p0, "DEFAULT"

    goto :goto_0

    .line 38
    :pswitch_0
    iget-object p0, p0, Lcom/ice/box/helpers/SeekDialog;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f100088

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 34
    :pswitch_1
    iget-object p0, p0, Lcom/ice/box/helpers/SeekDialog;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f10018f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 30
    :pswitch_2
    iget-object p0, p0, Lcom/ice/box/helpers/SeekDialog;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f100183

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 26
    :pswitch_3
    iget-object p0, p0, Lcom/ice/box/helpers/SeekDialog;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f100035

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const p1, 0x7f0c0055

    const/4 v2, 0x0

    .line 45
    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 46
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 47
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 54
    invoke-virtual/range {v0 .. v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
