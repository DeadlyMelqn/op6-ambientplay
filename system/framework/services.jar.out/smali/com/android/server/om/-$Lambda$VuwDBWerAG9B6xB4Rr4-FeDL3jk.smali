.class final synthetic Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic $INST$0:Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk;

.field public static final synthetic $INST$1:Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk;

.field public static final synthetic $INST$2:Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings;->-com_android_server_om_OverlayManagerSettings-mthref-0(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings;->-com_android_server_om_OverlayManagerSettings-mthref-1(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Landroid/content/om/OverlayInfo;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings;->lambda$-com_android_server_om_OverlayManagerSettings_6314(Landroid/content/om/OverlayInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk;-><init>(B)V

    sput-object v0, Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk;->$INST$0:Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk;

    new-instance v0, Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk;-><init>(B)V

    sput-object v0, Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk;->$INST$1:Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk;

    new-instance v0, Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk;-><init>(B)V

    sput-object v0, Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk;->$INST$2:Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk;->$id:B

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk;->$m$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk;->$m$1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk;->$m$2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method