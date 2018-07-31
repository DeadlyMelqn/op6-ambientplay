.class Lcom/ice/box/MainActivity$6$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/MainActivity$6;->onAdFailedToLoad(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ice/box/MainActivity$6;


# direct methods
.method constructor <init>(Lcom/ice/box/MainActivity$6;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/ice/box/MainActivity$6$1;->this$1:Lcom/ice/box/MainActivity$6;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x1

    .line 594
    sput-boolean p1, Lcom/ice/box/MainActivity;->isFragmentOpen:Z

    .line 595
    iget-object p1, p0, Lcom/ice/box/MainActivity$6$1;->this$1:Lcom/ice/box/MainActivity$6;

    iget-object p1, p1, Lcom/ice/box/MainActivity$6;->this$0:Lcom/ice/box/MainActivity;

    const-string v0, "License"

    iget-object p0, p0, Lcom/ice/box/MainActivity$6$1;->this$1:Lcom/ice/box/MainActivity$6;

    iget-object p0, p0, Lcom/ice/box/MainActivity$6;->this$0:Lcom/ice/box/MainActivity;

    const v1, 0x7f100108

    invoke-virtual {p0, v1}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/ice/box/MainActivity;->access$400(Lcom/ice/box/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
