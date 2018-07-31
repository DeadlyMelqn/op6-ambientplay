.class Lcom/ice/box/helpers/TweaksHelper$6;
.super Ljava/lang/Object;
.source "TweaksHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/helpers/TweaksHelper;->createRestoreSuccessNotification()V
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

    .line 325
    iput-object p1, p0, Lcom/ice/box/helpers/TweaksHelper$6;->this$0:Lcom/ice/box/helpers/TweaksHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 327
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/ice/box/helpers/TweaksHelper$6;->this$0:Lcom/ice/box/helpers/TweaksHelper;

    invoke-static/range {p2 .. p2}, Lcom/ice/box/helpers/TweaksHelper;->access$000(Lcom/ice/box/helpers/TweaksHelper;)Landroid/content/Context;

    move-result-object p2

    const-class v0, Lcom/ice/box/helpers/RestartSystemUI;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 328
    iget-object p0, p0, Lcom/ice/box/helpers/TweaksHelper$6;->this$0:Lcom/ice/box/helpers/TweaksHelper;

    invoke-static/range {p0 .. p0}, Lcom/ice/box/helpers/TweaksHelper;->access$000(Lcom/ice/box/helpers/TweaksHelper;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
