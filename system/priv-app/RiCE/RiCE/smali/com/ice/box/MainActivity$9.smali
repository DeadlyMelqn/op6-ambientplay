.class Lcom/ice/box/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/MainActivity;->checkWriteSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/MainActivity;


# direct methods
.method constructor <init>(Lcom/ice/box/MainActivity;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/ice/box/MainActivity$9;->this$0:Lcom/ice/box/MainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 709
    iget-object p2, p0, Lcom/ice/box/MainActivity$9;->this$0:Lcom/ice/box/MainActivity;

    invoke-virtual/range {p2 .. p2}, Lcom/ice/box/MainActivity;->finish()V

    .line 710
    new-instance p2, Landroid/os/Handler;

    invoke-direct/range {p2 .. p2}, Landroid/os/Handler;-><init>()V

    .line 711
    new-instance v0, Lcom/ice/box/MainActivity$9$1;

    invoke-direct {v0, p0}, Lcom/ice/box/MainActivity$9$1;-><init>(Lcom/ice/box/MainActivity$9;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 720
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 721
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
