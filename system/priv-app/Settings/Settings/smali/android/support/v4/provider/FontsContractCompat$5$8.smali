.class Landroid/support/v4/provider/FontsContractCompat$5$8;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/provider/FontsContractCompat$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/provider/FontsContractCompat$5;

.field final synthetic val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;


# direct methods
.method constructor <init>(Landroid/support/v4/provider/FontsContractCompat$5;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/provider/FontsContractCompat$5;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v4/provider/FontsContractCompat$5$8;->this$1:Landroid/support/v4/provider/FontsContractCompat$5;

    iput-object p2, p0, Landroid/support/v4/provider/FontsContractCompat$5$8;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$5$8;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    .line 575
    const/4 v1, -0x3

    .line 574
    invoke-virtual {v0, v1}, Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;->onTypefaceRequestFailed(I)V

    .line 576
    return-void
.end method
