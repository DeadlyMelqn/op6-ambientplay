.class Lcom/android/server/am/GraphManager$1;
.super Ljava/lang/Object;
.source "GraphManager.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/GraphManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/GraphManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/GraphManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/GraphManager;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/am/GraphManager$1;->this$0:Lcom/android/server/am/GraphManager;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/am/GraphManager$1;->this$0:Lcom/android/server/am/GraphManager;

    invoke-static {v0, p1}, Lcom/android/server/am/GraphManager;->-wrap0(Lcom/android/server/am/GraphManager;Lorg/json/JSONArray;)V

    .line 59
    return-void
.end method
