.class Lcom/android/server/OemSceneModeController$GamePowerSaverConfigUpdater;
.super Ljava/lang/Object;
.source "OemSceneModeController.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemSceneModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GamePowerSaverConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneModeController;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneModeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OemSceneModeController;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/server/OemSceneModeController$GamePowerSaverConfigUpdater;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "configJSONArray"    # Lorg/json/JSONArray;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$GamePowerSaverConfigUpdater;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0, p1}, Lcom/android/server/OemSceneModeController;->-wrap13(Lcom/android/server/OemSceneModeController;Lorg/json/JSONArray;)V

    .line 273
    return-void
.end method
