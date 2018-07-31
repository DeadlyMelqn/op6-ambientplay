.class Lcom/oneplus/settings/OPFullScreenGestureGuidePage$1;
.super Landroid/os/Handler;
.source "OPFullScreenGestureGuidePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPFullScreenGestureGuidePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPFullScreenGestureGuidePage;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPFullScreenGestureGuidePage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/OPFullScreenGestureGuidePage;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage$1;->this$0:Lcom/oneplus/settings/OPFullScreenGestureGuidePage;

    .line 42
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 48
    return-void
.end method
