.class Lcom/ice/box/fragments/UI$1;
.super Ljava/lang/Object;
.source "UI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ice/box/fragments/UI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/fragments/UI;


# direct methods
.method constructor <init>(Lcom/ice/box/fragments/UI;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/ice/box/fragments/UI$1;->this$0:Lcom/ice/box/fragments/UI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 79
    iget-object p1, p0, Lcom/ice/box/fragments/UI$1;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/UI;->access$000(Lcom/ice/box/fragments/UI;)I

    move-result p1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    .line 80
    iget-object p1, p0, Lcom/ice/box/fragments/UI$1;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/UI;->access$008(Lcom/ice/box/fragments/UI;)I

    .line 81
    iget-object p1, p0, Lcom/ice/box/fragments/UI$1;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/UI;->access$100(Lcom/ice/box/fragments/UI;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ice/box/fragments/UI$1;->this$0:Lcom/ice/box/fragments/UI;

    invoke-virtual/range {v1 .. v1}, Lcom/ice/box/fragments/UI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100183

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ice/box/fragments/UI$1;->this$0:Lcom/ice/box/fragments/UI;

    .line 82
    invoke-static/range {v1 .. v1}, Lcom/ice/box/fragments/UI;->access$000(Lcom/ice/box/fragments/UI;)I

    move-result v1

    invoke-static/range {v1 .. v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object p1, p0, Lcom/ice/box/fragments/UI$1;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/UI;->access$200(Lcom/ice/box/fragments/UI;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object p0, p0, Lcom/ice/box/fragments/UI$1;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->access$000(Lcom/ice/box/fragments/UI;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method
