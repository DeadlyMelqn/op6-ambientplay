.class Lcom/android/server/OnePlusPowerController$ConfigUpdater;
.super Ljava/lang/Object;
.source "OnePlusPowerController.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusPowerController;


# direct methods
.method private constructor <init>(Lcom/android/server/OnePlusPowerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OnePlusPowerController;

    .prologue
    .line 1377
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$ConfigUpdater;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/OnePlusPowerController;Lcom/android/server/OnePlusPowerController$ConfigUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OnePlusPowerController;
    .param p2, "-this1"    # Lcom/android/server/OnePlusPowerController$ConfigUpdater;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/OnePlusPowerController$ConfigUpdater;-><init>(Lcom/android/server/OnePlusPowerController;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "config"    # Lorg/json/JSONArray;

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$ConfigUpdater;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0, p1}, Lcom/android/server/OnePlusPowerController;->-wrap0(Lcom/android/server/OnePlusPowerController;Lorg/json/JSONArray;)V

    .line 1382
    return-void
.end method
