.class Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection$1;
.super Ljava/lang/Object;
.source "RegisteredMediaRouteProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->dispose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;


# direct methods
.method constructor <init>(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection$1;->this$1:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection$1;->this$1:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    invoke-virtual {v0}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->failPendingCallbacks()V

    .line 480
    return-void
.end method
