.class Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;
.super Ljava/lang/Object;
.source "StatusBarWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field backdropShowing:Z

.field bouncerShowing:Z

.field dozing:Z

.field forceCollapsed:Z

.field forceDozeBrightness:Z

.field forcePluginOpen:Z

.field forceStatusBarVisible:Z

.field forceUserActivity:Z

.field headsUpShowing:Z

.field keyguardFadingAway:Z

.field keyguardNeedsInput:Z

.field keyguardOccluded:Z

.field keyguardShowing:Z

.field panelExpanded:Z

.field panelVisible:Z

.field qsExpanded:Z

.field remoteInputActive:Z

.field scrimsVisible:Z

.field statusBarFocusable:Z

.field statusBarState:I


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    return v0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 0
    .param p1, "-this0"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;-><init>()V

    return-void
.end method

.method private isKeyguardShowingAndNotOccluded()Z
    .locals 1

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardOccluded:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 451
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 452
    .local v4, "result":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "\n"

    .line 453
    .local v3, "newLine":Ljava/lang/String;
    const-string/jumbo v5, "Window State {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 459
    .local v2, "fields":[Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    array-length v6, v2

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v2, v5

    .line 460
    .local v1, "field":Ljava/lang/reflect/Field;
    const-string/jumbo v7, "  "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const-string/jumbo v7, ": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 470
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_0
    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 466
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/IllegalAccessException;
    goto :goto_1
.end method
