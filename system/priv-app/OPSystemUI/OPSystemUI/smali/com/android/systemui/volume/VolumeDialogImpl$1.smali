.class Lcom/android/systemui/volume/VolumeDialogImpl$1;
.super Ljava/lang/Object;
.source "VolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 1240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAccessibilityModeChanged(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "showA11yStream"    # Ljava/lang/Boolean;

    .prologue
    .line 1323
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 1324
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v2, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->-set8(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z

    .line 1325
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap0(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v0

    .line 1326
    .local v0, "activeRow":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get18(Lcom/android/systemui/volume/VolumeDialogImpl;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    const/16 v3, 0xa

    if-ne v3, v2, :cond_1

    .line 1327
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    .line 1332
    :goto_1
    return-void

    .line 1323
    .end local v0    # "activeRow":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .local v1, "show":Z
    goto :goto_0

    .line 1329
    .end local v1    # "show":Z
    .restart local v0    # "activeRow":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v2, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap14(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    goto :goto_1
.end method

.method public onConfigurationChanged()V
    .locals 7

    .prologue
    .line 1268
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get4(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 1269
    .local v3, "newConfig":Landroid/content/res/Configuration;
    iget v0, v3, Landroid/content/res/Configuration;->densityDpi:I

    .line 1271
    .local v0, "density":I
    const/4 v2, 0x0

    .line 1272
    .local v2, "forceUpdateTheme":Z
    iget v1, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 1273
    .local v1, "fontScale":F
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get6(Lcom/android/systemui/volume/VolumeDialogImpl;)I

    move-result v5

    if-ne v0, v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get11(Lcom/android/systemui/volume/VolumeDialogImpl;)F

    move-result v5

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_1

    .line 1274
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v5, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->-set0(Lcom/android/systemui/volume/VolumeDialogImpl;I)I

    .line 1275
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v5, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->-set2(Lcom/android/systemui/volume/VolumeDialogImpl;F)F

    .line 1277
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get7(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->dismiss()V

    .line 1278
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get23(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/ZenFooter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/volume/ZenFooter;->cleanup()V

    .line 1279
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap3(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 1281
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap13(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 1282
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v6}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap0(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap14(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 1283
    const/4 v2, 0x1

    .line 1287
    :cond_1
    iget v5, v3, Landroid/content/res/Configuration;->orientation:I

    int-to-float v4, v5

    .line 1289
    .local v4, "orientation":F
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl;)F

    move-result v5

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_2

    .line 1290
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v5, v4}, Lcom/android/systemui/volume/VolumeDialogImpl;->-set4(Lcom/android/systemui/volume/VolumeDialogImpl;F)F

    .line 1291
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap10(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 1294
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap15(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 1295
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get3(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/ConfigurableTexts;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/volume/ConfigurableTexts;->update()V

    .line 1296
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get23(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/ZenFooter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/volume/ZenFooter;->onConfigurationChanged()V

    .line 1298
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v5, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap2(Lcom/android/systemui/volume/VolumeDialogImpl;Z)V

    .line 1300
    return-void
.end method

.method public onDismissRequested(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    .line 1249
    return-void
.end method

.method public onLayoutDirectionChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get8(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 1264
    return-void
.end method

.method public onScreenOff()V
    .locals 2

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    .line 1254
    return-void
.end method

.method public onShowRequested(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap7(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    .line 1244
    return-void
.end method

.method public onShowSafetyWarning(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap8(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    .line 1319
    return-void
.end method

.method public onShowSilentHint()V
    .locals 3

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get20(Lcom/android/systemui/volume/VolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    .line 1314
    :cond_0
    return-void
.end method

.method public onShowVibrateHint()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1304
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get20(Lcom/android/systemui/volume/VolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    .line 1307
    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/plugins/VolumeDialogController$State;

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap4(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    .line 1259
    return-void
.end method
