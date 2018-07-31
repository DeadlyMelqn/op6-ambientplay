.class Lcom/android/settings/DisplaySettings$8;
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

.field final synthetic val$val:I


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/DisplaySettings$8;->this$0:Lcom/android/settings/DisplaySettings;

    iput p2, p0, Lcom/android/settings/DisplaySettings$8;->val$val:I

    .line 1235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$8;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->-get3(Lcom/android/settings/DisplaySettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1238
    const-string/jumbo v1, "screen_brightness"

    iget v2, p0, Lcom/android/settings/DisplaySettings$8;->val$val:I

    .line 1239
    const/4 v3, -0x2

    .line 1237
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1240
    return-void
.end method
