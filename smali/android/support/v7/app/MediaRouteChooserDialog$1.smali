.class Landroid/support/v7/app/MediaRouteChooserDialog$1;
.super Landroid/os/Handler;
.source "MediaRouteChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteChooserDialog;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteChooserDialog;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/app/MediaRouteChooserDialog;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialog$1;->this$0:Landroid/support/v7/app/MediaRouteChooserDialog;

    .line 79
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 84
    :pswitch_0
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteChooserDialog$1;->this$0:Landroid/support/v7/app/MediaRouteChooserDialog;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/MediaRouteChooserDialog;->updateRoutes(Ljava/util/List;)V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
