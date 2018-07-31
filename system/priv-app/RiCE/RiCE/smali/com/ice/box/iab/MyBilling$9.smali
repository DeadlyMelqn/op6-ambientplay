.class Lcom/ice/box/iab/MyBilling$9;
.super Ljava/lang/Object;
.source "MyBilling.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/iab/MyBilling;->restartSelfOnLicenseOK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/iab/MyBilling;


# direct methods
.method constructor <init>(Lcom/ice/box/iab/MyBilling;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/ice/box/iab/MyBilling$9;->this$0:Lcom/ice/box/iab/MyBilling;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 344
    iget-object p1, p0, Lcom/ice/box/iab/MyBilling$9;->this$0:Lcom/ice/box/iab/MyBilling;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/iab/MyBilling;->access$500(Lcom/ice/box/iab/MyBilling;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object p2, p0, Lcom/ice/box/iab/MyBilling$9;->this$0:Lcom/ice/box/iab/MyBilling;

    invoke-static/range {p2 .. p2}, Lcom/ice/box/iab/MyBilling;->access$500(Lcom/ice/box/iab/MyBilling;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x4000000

    .line 345
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 346
    iget-object p0, p0, Lcom/ice/box/iab/MyBilling$9;->this$0:Lcom/ice/box/iab/MyBilling;

    invoke-static/range {p0 .. p0}, Lcom/ice/box/iab/MyBilling;->access$500(Lcom/ice/box/iab/MyBilling;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
