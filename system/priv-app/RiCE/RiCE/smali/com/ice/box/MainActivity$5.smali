.class Lcom/ice/box/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/MainActivity;->alertMattPiggy()V
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

    .line 540
    iput-object p1, p0, Lcom/ice/box/MainActivity$5;->this$0:Lcom/ice/box/MainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 542
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "http://renovate-ice.com/donation.html"

    invoke-static/range {v1 .. v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 544
    iget-object p0, p0, Lcom/ice/box/MainActivity$5;->this$0:Lcom/ice/box/MainActivity;

    invoke-virtual {p0, p2}, Lcom/ice/box/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 545
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 546
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
