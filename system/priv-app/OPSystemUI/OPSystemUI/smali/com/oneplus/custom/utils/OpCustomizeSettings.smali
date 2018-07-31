.class public Lcom/oneplus/custom/utils/OpCustomizeSettings;
.super Ljava/lang/Object;
.source "OpCustomizeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;,
        Lcom/oneplus/custom/utils/OpCustomizeSettings$MyLog;
    }
.end annotation


# static fields
.field protected static final DBG:Z

.field private static sOpCustomizeSettings:Lcom/oneplus/custom/utils/OpCustomizeSettings;

.field private static final sProjectName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "persist.sys.assert.panic"

    invoke-static {v1}, Lcom/oneplus/custom/utils/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->DBG:Z

    .line 16
    const-string/jumbo v0, "ro.boot.project_name"

    invoke-static {v0}, Lcom/oneplus/custom/utils/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sProjectName:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getInstance()Lcom/oneplus/custom/utils/OpCustomizeSettings;

    move-result-object v0

    .line 110
    .local v0, "ocs":Lcom/oneplus/custom/utils/OpCustomizeSettings;
    invoke-virtual {v0}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomization()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v1

    return-object v1
.end method

.method private static getInstance()Lcom/oneplus/custom/utils/OpCustomizeSettings;
    .locals 3

    .prologue
    .line 139
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sOpCustomizeSettings:Lcom/oneplus/custom/utils/OpCustomizeSettings;

    if-nez v0, :cond_1

    .line 140
    const-string/jumbo v0, "OpCustomizeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sProjectName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sProjectName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/custom/utils/OpCustomizeSettings$MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string/jumbo v0, "16859"

    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sProjectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "17801"

    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sProjectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    :cond_0
    new-instance v0, Lcom/oneplus/custom/utils/OpCustomizeSettingsG1;

    invoke-direct {v0}, Lcom/oneplus/custom/utils/OpCustomizeSettingsG1;-><init>()V

    sput-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sOpCustomizeSettings:Lcom/oneplus/custom/utils/OpCustomizeSettings;

    .line 149
    :cond_1
    :goto_0
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sOpCustomizeSettings:Lcom/oneplus/custom/utils/OpCustomizeSettings;

    return-object v0

    .line 143
    :cond_2
    const-string/jumbo v0, "17819"

    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sProjectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    new-instance v0, Lcom/oneplus/custom/utils/OpCustomizeSettingsG2;

    invoke-direct {v0}, Lcom/oneplus/custom/utils/OpCustomizeSettingsG2;-><init>()V

    sput-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sOpCustomizeSettings:Lcom/oneplus/custom/utils/OpCustomizeSettings;

    goto :goto_0

    .line 146
    :cond_3
    new-instance v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;

    invoke-direct {v0}, Lcom/oneplus/custom/utils/OpCustomizeSettings;-><init>()V

    sput-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sOpCustomizeSettings:Lcom/oneplus/custom/utils/OpCustomizeSettings;

    goto :goto_0
.end method


# virtual methods
.method protected getCustomization()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->NONE:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    return-object v0
.end method
