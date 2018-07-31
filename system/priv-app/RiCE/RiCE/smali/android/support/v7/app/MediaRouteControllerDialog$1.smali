.class Landroid/support/v7/app/MediaRouteControllerDialog$1;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteControllerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteControllerDialog;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V
    .locals 0

    .line 192
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$1;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 195
    iget-object p0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$1;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->startGroupListFadeInAnimation()V

    return-void
.end method
