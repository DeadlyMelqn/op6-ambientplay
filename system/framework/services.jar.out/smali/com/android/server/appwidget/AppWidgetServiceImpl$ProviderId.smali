.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderId"
.end annotation


# instance fields
.field final componentName:Landroid/content/ComponentName;

.field final uid:I


# direct methods
.method private constructor <init>(ILandroid/content/ComponentName;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 3991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3992
    iput p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 3993
    iput-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 3994
    return-void
.end method

.method synthetic constructor <init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "-this2"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3998
    if-ne p0, p1, :cond_0

    .line 3999
    return v4

    .line 4001
    :cond_0
    if-nez p1, :cond_1

    .line 4002
    return v3

    .line 4004
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 4005
    return v3

    :cond_2
    move-object v0, p1

    .line 4007
    check-cast v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 4008
    .local v0, "other":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    iget v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    if-eq v1, v2, :cond_3

    .line 4009
    return v3

    .line 4011
    :cond_3
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    if-nez v1, :cond_4

    .line 4012
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_5

    .line 4013
    return v3

    .line 4015
    :cond_4
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 4016
    return v3

    .line 4018
    :cond_5
    return v4
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 4023
    iget v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 4024
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 4025
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->hashCode()I

    move-result v1

    .line 4024
    :goto_0
    add-int v0, v2, v1

    .line 4026
    return v0

    .line 4025
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ProviderId{user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", app:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4032
    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 4031
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4032
    const-string/jumbo v1, ", cmp:"

    .line 4031
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4032
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 4031
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4032
    const/16 v1, 0x7d

    .line 4031
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
