.class Lcom/ice/box/helpers/TweaksHelper$7;
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

    .line 333
    iput-object p1, p0, Lcom/ice/box/helpers/TweaksHelper$7;->this$0:Lcom/ice/box/helpers/TweaksHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 335
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
