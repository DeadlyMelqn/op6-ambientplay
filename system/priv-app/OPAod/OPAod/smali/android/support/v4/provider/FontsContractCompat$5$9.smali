.class Landroid/support/v4/provider/FontsContractCompat$5$9;
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

.field final synthetic val$typeface:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>(Landroid/support/v4/provider/FontsContractCompat$5;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/provider/FontsContractCompat$5;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v4/provider/FontsContractCompat$5$9;->this$1:Landroid/support/v4/provider/FontsContractCompat$5;

    iput-object p2, p0, Landroid/support/v4/provider/FontsContractCompat$5$9;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    iput-object p3, p0, Landroid/support/v4/provider/FontsContractCompat$5$9;->val$typeface:Landroid/graphics/Typeface;

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$5$9;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    iget-object v1, p0, Landroid/support/v4/provider/FontsContractCompat$5$9;->val$typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;->onTypefaceRetrieved(Landroid/graphics/Typeface;)V

    .line 585
    return-void
.end method