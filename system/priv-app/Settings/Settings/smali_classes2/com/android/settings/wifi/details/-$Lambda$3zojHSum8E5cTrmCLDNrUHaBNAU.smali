.class final synthetic Lcom/android/settings/wifi/details/-$Lambda$3zojHSum8E5cTrmCLDNrUHaBNAU;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic $INST$0:Lcom/android/settings/wifi/details/-$Lambda$3zojHSum8E5cTrmCLDNrUHaBNAU;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/net/InetAddress;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->-com_android_settings_wifi_details_WifiDetailPreferenceController-mthref-0(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/wifi/details/-$Lambda$3zojHSum8E5cTrmCLDNrUHaBNAU;

    invoke-direct {v0}, Lcom/android/settings/wifi/details/-$Lambda$3zojHSum8E5cTrmCLDNrUHaBNAU;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/details/-$Lambda$3zojHSum8E5cTrmCLDNrUHaBNAU;->$INST$0:Lcom/android/settings/wifi/details/-$Lambda$3zojHSum8E5cTrmCLDNrUHaBNAU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details/-$Lambda$3zojHSum8E5cTrmCLDNrUHaBNAU;->$m$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
