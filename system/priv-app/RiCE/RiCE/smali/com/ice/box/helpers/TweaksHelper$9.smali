.class Lcom/ice/box/helpers/TweaksHelper$9;
.super Ljava/lang/Object;
.source "TweaksHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/helpers/TweaksHelper;->restartSelfOnLicenseOK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/helpers/TweaksHelper;


# direct methods
.method constructor <init>(Lcom/ice/box/helpers/TweaksHelper;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/ice/box/helpers/TweaksHelper$9;->this$0:Lcom/ice/box/helpers/TweaksHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 385
    iget-object p1, p0, Lcom/ice/box/helpers/TweaksHelper$9;->this$0:Lcom/ice/box/helpers/TweaksHelper;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/helpers/TweaksHelper;->access$000(Lcom/ice/box/helpers/TweaksHelper;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "alarm"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    .line 391
    iget-object p1, p0, Lcom/ice/box/helpers/TweaksHelper$9;->this$0:Lcom/ice/box/helpers/TweaksHelper;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/helpers/TweaksHelper;->access$000(Lcom/ice/box/helpers/TweaksHelper;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object p2, p0, Lcom/ice/box/helpers/TweaksHelper$9;->this$0:Lcom/ice/box/helpers/TweaksHelper;

    invoke-static/range {p2 .. p2}, Lcom/ice/box/helpers/TweaksHelper;->access$000(Lcom/ice/box/helpers/TweaksHelper;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x4000000

    .line 392
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 393
    iget-object p0, p0, Lcom/ice/box/helpers/TweaksHelper$9;->this$0:Lcom/ice/box/helpers/TweaksHelper;

    invoke-static/range {p0 .. p0}, Lcom/ice/box/helpers/TweaksHelper;->access$000(Lcom/ice/box/helpers/TweaksHelper;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
