.class Lcom/oneplus/aod/AodUpdateMonitor$3;
.super Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;
.source "AodUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/AodUpdateMonitor;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/AodUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/AodUpdateMonitor;Lcom/oneplus/aod/AodUpdateMonitor;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/aod/AodUpdateMonitor;
    .param p2, "this$0_1"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    .line 1
    iput-object p2, p0, Lcom/oneplus/aod/AodUpdateMonitor$3;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;-><init>(Lcom/oneplus/aod/AodUpdateMonitor;Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;)V

    .line 1
    return-void
.end method
