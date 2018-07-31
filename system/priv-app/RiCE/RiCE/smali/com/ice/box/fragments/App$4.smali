.class Lcom/ice/box/fragments/App$4;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    .line 103
    iput-object p1, p0, Lcom/ice/box/fragments/App$4;->this$0:Lcom/ice/box/fragments/App;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 107
    iget-object p1, p0, Lcom/ice/box/fragments/App$4;->this$0:Lcom/ice/box/fragments/App;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/App;->access$100(Lcom/ice/box/fragments/App;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct/range {p3 .. p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/ice/box/fragments/App$4;->this$0:Lcom/ice/box/fragments/App;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/fragments/App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 107
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object p0, p0, Lcom/ice/box/fragments/App$4;->this$0:Lcom/ice/box/fragments/App;

    invoke-static {p0, p2}, Lcom/ice/box/fragments/App;->access$002(Lcom/ice/box/fragments/App;I)I

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
