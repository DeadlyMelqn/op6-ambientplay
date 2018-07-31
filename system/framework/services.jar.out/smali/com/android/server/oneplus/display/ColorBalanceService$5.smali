.class Lcom/android/server/oneplus/display/ColorBalanceService$5;
.super Ljava/lang/Object;
.source "ColorBalanceService.java"

# interfaces
.implements Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/oneplus/display/ColorBalanceService;->colorManagerInit()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oneplus/display/ColorBalanceService;


# direct methods
.method constructor <init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$5;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 1957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 1

    .prologue
    .line 1960
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$5;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->-wrap18(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    .line 1961
    return-void
.end method
