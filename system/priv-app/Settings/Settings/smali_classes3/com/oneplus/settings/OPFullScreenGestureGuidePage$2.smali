.class Lcom/oneplus/settings/OPFullScreenGestureGuidePage$2;
.super Ljava/lang/Object;
.source "OPFullScreenGestureGuidePage.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage$2;->this$0:Lcom/oneplus/settings/OPFullScreenGestureGuidePage;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 249
    iget-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage$2;->this$0:Lcom/oneplus/settings/OPFullScreenGestureGuidePage;

    invoke-static {v0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->-wrap0(Lcom/oneplus/settings/OPFullScreenGestureGuidePage;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage$2;->this$0:Lcom/oneplus/settings/OPFullScreenGestureGuidePage;

    invoke-static {v0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->-wrap3(Lcom/oneplus/settings/OPFullScreenGestureGuidePage;)V

    .line 254
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage$2;->this$0:Lcom/oneplus/settings/OPFullScreenGestureGuidePage;

    invoke-static {v0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->-get0(Lcom/oneplus/settings/OPFullScreenGestureGuidePage;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 255
    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage$2;->this$0:Lcom/oneplus/settings/OPFullScreenGestureGuidePage;

    invoke-static {v0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->-wrap1(Lcom/oneplus/settings/OPFullScreenGestureGuidePage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage$2;->this$0:Lcom/oneplus/settings/OPFullScreenGestureGuidePage;

    invoke-static {v0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->-wrap2(Lcom/oneplus/settings/OPFullScreenGestureGuidePage;)V

    goto :goto_0
.end method
