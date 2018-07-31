.class public Lcom/ice/box/helpers/NonRootHelper;
.super Ljava/lang/Object;
.source "NonRootHelper.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/ice/box/helpers/NonRootHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public MakeToast(Ljava/lang/String;)V
    .locals 1

    .line 20
    iget-object p0, p0, Lcom/ice/box/helpers/NonRootHelper;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public MakeToastLong(Ljava/lang/String;)V
    .locals 1

    .line 24
    iget-object p0, p0, Lcom/ice/box/helpers/NonRootHelper;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
