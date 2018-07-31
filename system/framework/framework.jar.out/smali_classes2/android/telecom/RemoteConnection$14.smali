.class Landroid/telecom/RemoteConnection$14;
.super Ljava/lang/Object;
.source "RemoteConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/RemoteConnection;->setCallerDisplayName(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/RemoteConnection;

.field final synthetic val$callback:Landroid/telecom/RemoteConnection$Callback;

.field final synthetic val$callerDisplayName:Ljava/lang/String;

.field final synthetic val$connection:Landroid/telecom/RemoteConnection;

.field final synthetic val$presentation:I


# direct methods
.method constructor <init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/telecom/RemoteConnection$14;->this$0:Landroid/telecom/RemoteConnection;

    iput-object p2, p0, Landroid/telecom/RemoteConnection$14;->val$callback:Landroid/telecom/RemoteConnection$Callback;

    iput-object p3, p0, Landroid/telecom/RemoteConnection$14;->val$connection:Landroid/telecom/RemoteConnection;

    iput-object p4, p0, Landroid/telecom/RemoteConnection$14;->val$callerDisplayName:Ljava/lang/String;

    iput p5, p0, Landroid/telecom/RemoteConnection$14;->val$presentation:I

    .line 1416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1419
    iget-object v0, p0, Landroid/telecom/RemoteConnection$14;->val$callback:Landroid/telecom/RemoteConnection$Callback;

    .line 1420
    iget-object v1, p0, Landroid/telecom/RemoteConnection$14;->val$connection:Landroid/telecom/RemoteConnection;

    iget-object v2, p0, Landroid/telecom/RemoteConnection$14;->val$callerDisplayName:Ljava/lang/String;

    iget v3, p0, Landroid/telecom/RemoteConnection$14;->val$presentation:I

    .line 1419
    invoke-virtual {v0, v1, v2, v3}, Landroid/telecom/RemoteConnection$Callback;->onCallerDisplayNameChanged(Landroid/telecom/RemoteConnection;Ljava/lang/String;I)V

    .line 1421
    return-void
.end method
