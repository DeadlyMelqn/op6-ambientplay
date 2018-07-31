.class Lcom/oneplus/settings/AodClockPreviewActivity$2;
.super Ljava/lang/Object;
.source "AodClockPreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/AodClockPreviewActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/AodClockPreviewActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/AodClockPreviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/AodClockPreviewActivity;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/AodClockPreviewActivity$2;->this$0:Lcom/oneplus/settings/AodClockPreviewActivity;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity$2;->this$0:Lcom/oneplus/settings/AodClockPreviewActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/settings/AodClockPreviewActivity;->-wrap0(Lcom/oneplus/settings/AodClockPreviewActivity;Z)V

    .line 87
    return-void
.end method
