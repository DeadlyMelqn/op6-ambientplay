.class Lcom/android/server/am/OemFossModeManager$FossModeConfigUpdater;
.super Ljava/lang/Object;
.source "OemFossModeManager.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OemFossModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FossModeConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OemFossModeManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OemFossModeManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OemFossModeManager;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/server/am/OemFossModeManager$FossModeConfigUpdater;->this$0:Lcom/android/server/am/OemFossModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "configJSONArray"    # Lorg/json/JSONArray;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/server/am/OemFossModeManager$FossModeConfigUpdater;->this$0:Lcom/android/server/am/OemFossModeManager;

    invoke-static {v0, p1}, Lcom/android/server/am/OemFossModeManager;->-wrap6(Lcom/android/server/am/OemFossModeManager;Lorg/json/JSONArray;)V

    .line 176
    return-void
.end method
