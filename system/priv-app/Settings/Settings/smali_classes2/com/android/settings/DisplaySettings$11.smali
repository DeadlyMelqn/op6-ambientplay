.class Lcom/android/settings/DisplaySettings$11;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DisplaySettings;->onOPBrightValueChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplaySettings;

.field final synthetic val$adj:F


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/DisplaySettings$11;->this$0:Lcom/android/settings/DisplaySettings;

    iput p2, p0, Lcom/android/settings/DisplaySettings$11;->val$adj:F

    .line 1259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$11;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->-get3(Lcom/android/settings/DisplaySettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1262
    const-string/jumbo v1, "screen_auto_brightness_adj"

    iget v2, p0, Lcom/android/settings/DisplaySettings$11;->val$adj:F

    .line 1263
    const/4 v3, -0x2

    .line 1261
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 1264
    return-void
.end method
