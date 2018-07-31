.class public Lcom/oneplus/custom/utils/OpCustomizeSettings$MyLog;
.super Ljava/lang/Object;
.source "OpCustomizeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/custom/utils/OpCustomizeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MyLog"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 168
    sget-boolean v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->DBG:Z

    if-eqz v0, :cond_0

    .line 169
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    return-void
.end method

.method protected static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 180
    sget-boolean v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->DBG:Z

    if-eqz v0, :cond_0

    .line 181
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    return-void
.end method

.method protected static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 172
    sget-boolean v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->DBG:Z

    if-eqz v0, :cond_0

    .line 173
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    return-void
.end method

.method protected static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 164
    sget-boolean v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->DBG:Z

    if-eqz v0, :cond_0

    .line 165
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    return-void
.end method

.method protected static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 176
    sget-boolean v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->DBG:Z

    if-eqz v0, :cond_0

    .line 177
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    return-void
.end method
