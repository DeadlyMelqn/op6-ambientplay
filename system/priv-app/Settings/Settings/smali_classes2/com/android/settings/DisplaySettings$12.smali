.class Lcom/android/settings/DisplaySettings$12;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DisplaySettings;->saveBrightnessDataBase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplaySettings;

.field final synthetic val$val:I


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/DisplaySettings$12;->this$0:Lcom/android/settings/DisplaySettings;

    iput p2, p0, Lcom/android/settings/DisplaySettings$12;->val$val:I

    .line 1284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 1287
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$12;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->-get3(Lcom/android/settings/DisplaySettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1288
    const-string/jumbo v1, "screen_brightness"

    iget v2, p0, Lcom/android/settings/DisplaySettings$12;->val$val:I

    .line 1286
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1291
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$12;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->-get3(Lcom/android/settings/DisplaySettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1292
    const-string/jumbo v1, "screen_auto_brightness_adj"

    .line 1293
    iget v2, p0, Lcom/android/settings/DisplaySettings$12;->val$val:I

    int-to-float v2, v2

    .line 1290
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 1294
    return-void
.end method
