.class public final enum Lcom/android/settings/applications/EnterpriseDefaultApps;
.super Ljava/lang/Enum;
.source "EnterpriseDefaultApps.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/applications/EnterpriseDefaultApps;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/applications/EnterpriseDefaultApps;

.field public static final enum BROWSER:Lcom/android/settings/applications/EnterpriseDefaultApps;

.field public static final enum CALENDAR:Lcom/android/settings/applications/EnterpriseDefaultApps;

.field public static final enum CAMERA:Lcom/android/settings/applications/EnterpriseDefaultApps;

.field public static final enum CONTACTS:Lcom/android/settings/applications/EnterpriseDefaultApps;

.field public static final enum EMAIL:Lcom/android/settings/applications/EnterpriseDefaultApps;

.field public static final enum MAP:Lcom/android/settings/applications/EnterpriseDefaultApps;

.field public static final enum PHONE:Lcom/android/settings/applications/EnterpriseDefaultApps;


# instance fields
.field private final mIntents:[Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 28
    new-instance v0, Lcom/android/settings/applications/EnterpriseDefaultApps;

    const-string/jumbo v1, "BROWSER"

    new-array v2, v7, [Landroid/content/Intent;

    .line 29
    const-string/jumbo v3, "android.intent.action.VIEW"

    const-string/jumbo v4, "android.intent.category.BROWSABLE"

    const-string/jumbo v5, "http:"

    invoke-static {v3, v4, v5, v8}, Lcom/android/settings/applications/EnterpriseDefaultApps;->buildIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v2, v6

    .line 28
    invoke-direct {v0, v1, v6, v2}, Lcom/android/settings/applications/EnterpriseDefaultApps;-><init>(Ljava/lang/String;I[Landroid/content/Intent;)V

    sput-object v0, Lcom/android/settings/applications/EnterpriseDefaultApps;->BROWSER:Lcom/android/settings/applications/EnterpriseDefaultApps;

    .line 30
    new-instance v0, Lcom/android/settings/applications/EnterpriseDefaultApps;

    const-string/jumbo v1, "CALENDAR"

    new-array v2, v7, [Landroid/content/Intent;

    .line 31
    const-string/jumbo v3, "android.intent.action.INSERT"

    const-string/jumbo v4, "vnd.android.cursor.dir/event"

    invoke-static {v3, v8, v8, v4}, Lcom/android/settings/applications/EnterpriseDefaultApps;->buildIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v2, v6

    .line 30
    invoke-direct {v0, v1, v7, v2}, Lcom/android/settings/applications/EnterpriseDefaultApps;-><init>(Ljava/lang/String;I[Landroid/content/Intent;)V

    sput-object v0, Lcom/android/settings/applications/EnterpriseDefaultApps;->CALENDAR:Lcom/android/settings/applications/EnterpriseDefaultApps;

    .line 32
    new-instance v0, Lcom/android/settings/applications/EnterpriseDefaultApps;

    const-string/jumbo v1, "CAMERA"

    new-array v2, v9, [Landroid/content/Intent;

    .line 33
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v6

    .line 34
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v7

    .line 32
    invoke-direct {v0, v1, v9, v2}, Lcom/android/settings/applications/EnterpriseDefaultApps;-><init>(Ljava/lang/String;I[Landroid/content/Intent;)V

    sput-object v0, Lcom/android/settings/applications/EnterpriseDefaultApps;->CAMERA:Lcom/android/settings/applications/EnterpriseDefaultApps;

    .line 35
    new-instance v0, Lcom/android/settings/applications/EnterpriseDefaultApps;

    const-string/jumbo v1, "CONTACTS"

    new-array v2, v7, [Landroid/content/Intent;

    .line 36
    const-string/jumbo v3, "android.intent.action.PICK"

    const-string/jumbo v4, "vnd.android.cursor.dir/contact"

    invoke-static {v3, v8, v8, v4}, Lcom/android/settings/applications/EnterpriseDefaultApps;->buildIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v2, v6

    .line 35
    invoke-direct {v0, v1, v10, v2}, Lcom/android/settings/applications/EnterpriseDefaultApps;-><init>(Ljava/lang/String;I[Landroid/content/Intent;)V

    sput-object v0, Lcom/android/settings/applications/EnterpriseDefaultApps;->CONTACTS:Lcom/android/settings/applications/EnterpriseDefaultApps;

    .line 37
    new-instance v0, Lcom/android/settings/applications/EnterpriseDefaultApps;

    const-string/jumbo v1, "EMAIL"

    new-array v2, v10, [Landroid/content/Intent;

    .line 38
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SENDTO"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v7

    .line 39
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v9

    .line 37
    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/android/settings/applications/EnterpriseDefaultApps;-><init>(Ljava/lang/String;I[Landroid/content/Intent;)V

    sput-object v0, Lcom/android/settings/applications/EnterpriseDefaultApps;->EMAIL:Lcom/android/settings/applications/EnterpriseDefaultApps;

    .line 40
    new-instance v0, Lcom/android/settings/applications/EnterpriseDefaultApps;

    const-string/jumbo v1, "MAP"

    new-array v2, v7, [Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    const-string/jumbo v4, "geo:"

    invoke-static {v3, v8, v4, v8}, Lcom/android/settings/applications/EnterpriseDefaultApps;->buildIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/android/settings/applications/EnterpriseDefaultApps;-><init>(Ljava/lang/String;I[Landroid/content/Intent;)V

    sput-object v0, Lcom/android/settings/applications/EnterpriseDefaultApps;->MAP:Lcom/android/settings/applications/EnterpriseDefaultApps;

    .line 41
    new-instance v0, Lcom/android/settings/applications/EnterpriseDefaultApps;

    const-string/jumbo v1, "PHONE"

    new-array v2, v9, [Landroid/content/Intent;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.DIAL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.CALL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v7

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/android/settings/applications/EnterpriseDefaultApps;-><init>(Ljava/lang/String;I[Landroid/content/Intent;)V

    sput-object v0, Lcom/android/settings/applications/EnterpriseDefaultApps;->PHONE:Lcom/android/settings/applications/EnterpriseDefaultApps;

    .line 27
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings/applications/EnterpriseDefaultApps;

    sget-object v1, Lcom/android/settings/applications/EnterpriseDefaultApps;->BROWSER:Lcom/android/settings/applications/EnterpriseDefaultApps;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/applications/EnterpriseDefaultApps;->CALENDAR:Lcom/android/settings/applications/EnterpriseDefaultApps;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/settings/applications/EnterpriseDefaultApps;->CAMERA:Lcom/android/settings/applications/EnterpriseDefaultApps;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/settings/applications/EnterpriseDefaultApps;->CONTACTS:Lcom/android/settings/applications/EnterpriseDefaultApps;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/settings/applications/EnterpriseDefaultApps;->EMAIL:Lcom/android/settings/applications/EnterpriseDefaultApps;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/applications/EnterpriseDefaultApps;->MAP:Lcom/android/settings/applications/EnterpriseDefaultApps;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/applications/EnterpriseDefaultApps;->PHONE:Lcom/android/settings/applications/EnterpriseDefaultApps;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/applications/EnterpriseDefaultApps;->$VALUES:[Lcom/android/settings/applications/EnterpriseDefaultApps;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Landroid/content/Intent;)V
    .locals 0
    .param p3, "intents"    # [Landroid/content/Intent;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lcom/android/settings/applications/EnterpriseDefaultApps;->mIntents:[Landroid/content/Intent;

    .line 46
    return-void
.end method

.method private static buildIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    :cond_0
    if-eqz p2, :cond_1

    .line 59
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 61
    :cond_1
    if-eqz p3, :cond_2

    .line 62
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    :cond_2
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/applications/EnterpriseDefaultApps;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/android/settings/applications/EnterpriseDefaultApps;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/EnterpriseDefaultApps;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/applications/EnterpriseDefaultApps;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/settings/applications/EnterpriseDefaultApps;->$VALUES:[Lcom/android/settings/applications/EnterpriseDefaultApps;

    return-object v0
.end method


# virtual methods
.method public getIntents()[Landroid/content/Intent;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/applications/EnterpriseDefaultApps;->mIntents:[Landroid/content/Intent;

    return-object v0
.end method
