.class Lcom/android/server/oneplus/display/ColorBalanceService$4;
.super Landroid/database/ContentObserver;
.source "ColorBalanceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/oneplus/display/ColorBalanceService;->onUserChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iput-object p3, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->val$cr:Landroid/content/ContentResolver;

    .line 415
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->val$cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get6(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->-wrap1(Landroid/content/ContentResolver;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->val$cr:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 420
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->-set18(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;

    .line 422
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get1(Lcom/android/server/oneplus/display/ColorBalanceService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->-wrap17(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    .line 427
    :cond_0
    return-void
.end method
