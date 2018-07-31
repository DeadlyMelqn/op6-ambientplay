.class Lcom/android/server/vr/Vr2dDisplay$1;
.super Landroid/service/vr/IPersistentVrStateCallbacks$Stub;
.source "Vr2dDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/Vr2dDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/Vr2dDisplay;


# direct methods
.method constructor <init>(Lcom/android/server/vr/Vr2dDisplay;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/vr/Vr2dDisplay;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/vr/Vr2dDisplay$1;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    .line 88
    invoke-direct {p0}, Landroid/service/vr/IPersistentVrStateCallbacks$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPersistentVrStateChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay$1;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    invoke-static {v0}, Lcom/android/server/vr/Vr2dDisplay;->-get0(Lcom/android/server/vr/Vr2dDisplay;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay$1;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    invoke-static {v0, p1}, Lcom/android/server/vr/Vr2dDisplay;->-set0(Lcom/android/server/vr/Vr2dDisplay;Z)Z

    .line 93
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay$1;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    invoke-static {v0}, Lcom/android/server/vr/Vr2dDisplay;->-wrap4(Lcom/android/server/vr/Vr2dDisplay;)V

    .line 95
    :cond_0
    return-void
.end method
