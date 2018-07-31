.class Lcom/ice/box/fragments/ColorsNotification$2;
.super Ljava/lang/Object;
.source "ColorsNotification.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ice/box/fragments/ColorsNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/fragments/ColorsNotification;


# direct methods
.method constructor <init>(Lcom/ice/box/fragments/ColorsNotification;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/ice/box/fragments/ColorsNotification$2;->this$0:Lcom/ice/box/fragments/ColorsNotification;

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

    .line 74
    iget-object p1, p0, Lcom/ice/box/fragments/ColorsNotification$2;->this$0:Lcom/ice/box/fragments/ColorsNotification;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/ColorsNotification;->access$000(Lcom/ice/box/fragments/ColorsNotification;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/ice/box/fragments/ColorsNotification$2;->this$0:Lcom/ice/box/fragments/ColorsNotification;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/ColorsNotification;->access$010(Lcom/ice/box/fragments/ColorsNotification;)I

    .line 76
    iget-object p1, p0, Lcom/ice/box/fragments/ColorsNotification$2;->this$0:Lcom/ice/box/fragments/ColorsNotification;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/ColorsNotification;->access$100(Lcom/ice/box/fragments/ColorsNotification;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ice/box/fragments/ColorsNotification$2;->this$0:Lcom/ice/box/fragments/ColorsNotification;

    invoke-virtual/range {v1 .. v1}, Lcom/ice/box/fragments/ColorsNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10018f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ice/box/fragments/ColorsNotification$2;->this$0:Lcom/ice/box/fragments/ColorsNotification;

    .line 77
    invoke-static/range {v1 .. v1}, Lcom/ice/box/fragments/ColorsNotification;->access$000(Lcom/ice/box/fragments/ColorsNotification;)I

    move-result v1

    invoke-static/range {v1 .. v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object p1, p0, Lcom/ice/box/fragments/ColorsNotification$2;->this$0:Lcom/ice/box/fragments/ColorsNotification;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/ColorsNotification;->access$200(Lcom/ice/box/fragments/ColorsNotification;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object p0, p0, Lcom/ice/box/fragments/ColorsNotification$2;->this$0:Lcom/ice/box/fragments/ColorsNotification;

    invoke-static/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNotification;->access$000(Lcom/ice/box/fragments/ColorsNotification;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method
