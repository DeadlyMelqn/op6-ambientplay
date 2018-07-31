.class Lcom/oneplus/settings/OPFullScreenGestureGuidePage$3;
.super Ljava/lang/Object;
.source "OPFullScreenGestureGuidePage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->delayEnableBackAction()V
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
    iput-object p1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage$3;->this$0:Lcom/oneplus/settings/OPFullScreenGestureGuidePage;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage$3;->this$0:Lcom/oneplus/settings/OPFullScreenGestureGuidePage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->-set0(Lcom/oneplus/settings/OPFullScreenGestureGuidePage;Z)Z

    .line 73
    return-void
.end method
