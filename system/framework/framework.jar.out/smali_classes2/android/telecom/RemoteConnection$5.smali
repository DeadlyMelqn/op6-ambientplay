.class Landroid/telecom/RemoteConnection$5;
.super Ljava/lang/Object;
.source "RemoteConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/RemoteConnection;->setConnectionProperties(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/RemoteConnection;

.field final synthetic val$callback:Landroid/telecom/RemoteConnection$Callback;

.field final synthetic val$connection:Landroid/telecom/RemoteConnection;

.field final synthetic val$connectionProperties:I


# direct methods
.method constructor <init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/telecom/RemoteConnection$5;->this$0:Landroid/telecom/RemoteConnection;

    iput-object p2, p0, Landroid/telecom/RemoteConnection$5;->val$callback:Landroid/telecom/RemoteConnection$Callback;

    iput-object p3, p0, Landroid/telecom/RemoteConnection$5;->val$connection:Landroid/telecom/RemoteConnection;

    iput p4, p0, Landroid/telecom/RemoteConnection$5;->val$connectionProperties:I

    .line 1261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1264
    iget-object v0, p0, Landroid/telecom/RemoteConnection$5;->val$callback:Landroid/telecom/RemoteConnection$Callback;

    iget-object v1, p0, Landroid/telecom/RemoteConnection$5;->val$connection:Landroid/telecom/RemoteConnection;

    iget v2, p0, Landroid/telecom/RemoteConnection$5;->val$connectionProperties:I

    invoke-virtual {v0, v1, v2}, Landroid/telecom/RemoteConnection$Callback;->onConnectionPropertiesChanged(Landroid/telecom/RemoteConnection;I)V

    .line 1265
    return-void
.end method
