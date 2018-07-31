.class Lcom/ice/box/MainActivity$8;
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

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/ice/box/MainActivity;Landroid/content/Intent;)V
    .locals 0

    .line 699
    iput-object p1, p0, Lcom/ice/box/MainActivity$8;->this$0:Lcom/ice/box/MainActivity;

    iput-object p2, p0, Lcom/ice/box/MainActivity$8;->val$intent:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 701
    iget-object p2, p0, Lcom/ice/box/MainActivity$8;->this$0:Lcom/ice/box/MainActivity;

    iget-object p0, p0, Lcom/ice/box/MainActivity$8;->val$intent:Landroid/content/Intent;

    invoke-virtual {p2, p0}, Lcom/ice/box/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 702
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 703
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
