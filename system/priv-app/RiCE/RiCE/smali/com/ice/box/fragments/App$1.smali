.class Lcom/ice/box/fragments/App$1;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ice/box/fragments/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/fragments/App;


# direct methods
.method constructor <init>(Lcom/ice/box/fragments/App;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/ice/box/fragments/App$1;->this$0:Lcom/ice/box/fragments/App;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 62
    iget-object p1, p0, Lcom/ice/box/fragments/App$1;->this$0:Lcom/ice/box/fragments/App;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/App;->access$000(Lcom/ice/box/fragments/App;)I

    move-result p1

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    .line 63
    iget-object p1, p0, Lcom/ice/box/fragments/App$1;->this$0:Lcom/ice/box/fragments/App;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/App;->access$008(Lcom/ice/box/fragments/App;)I

    .line 64
    iget-object p1, p0, Lcom/ice/box/fragments/App$1;->this$0:Lcom/ice/box/fragments/App;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/App;->access$100(Lcom/ice/box/fragments/App;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ice/box/fragments/App$1;->this$0:Lcom/ice/box/fragments/App;

    invoke-virtual/range {v1 .. v1}, Lcom/ice/box/fragments/App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ice/box/fragments/App$1;->this$0:Lcom/ice/box/fragments/App;

    .line 65
    invoke-static/range {v1 .. v1}, Lcom/ice/box/fragments/App;->access$000(Lcom/ice/box/fragments/App;)I

    move-result v1

    invoke-static/range {v1 .. v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object p1, p0, Lcom/ice/box/fragments/App$1;->this$0:Lcom/ice/box/fragments/App;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/App;->access$200(Lcom/ice/box/fragments/App;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object p0, p0, Lcom/ice/box/fragments/App$1;->this$0:Lcom/ice/box/fragments/App;

    invoke-static/range {p0 .. p0}, Lcom/ice/box/fragments/App;->access$000(Lcom/ice/box/fragments/App;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method
