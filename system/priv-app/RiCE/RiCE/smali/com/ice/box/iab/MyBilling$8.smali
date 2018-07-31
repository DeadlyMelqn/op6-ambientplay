.class Lcom/ice/box/iab/MyBilling$8;
.super Ljava/lang/Object;
.source "MyBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/iab/MyBilling;->alert(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/iab/MyBilling;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ice/box/iab/MyBilling;Ljava/lang/String;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/ice/box/iab/MyBilling$8;->this$0:Lcom/ice/box/iab/MyBilling;

    iput-object p2, p0, Lcom/ice/box/iab/MyBilling$8;->val$message:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 321
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ice/box/iab/MyBilling$8;->this$0:Lcom/ice/box/iab/MyBilling;

    invoke-static/range {v1 .. v1}, Lcom/ice/box/iab/MyBilling;->access$500(Lcom/ice/box/iab/MyBilling;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 322
    iget-object p0, p0, Lcom/ice/box/iab/MyBilling$8;->val$message:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p0, 0x104000a

    const/4 v1, 0x0

    .line 323
    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 324
    invoke-virtual/range {v0 .. v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
