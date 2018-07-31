.class Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiDetailPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/details/WifiDetailPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    .line 165
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 1
    return-void
.end method

.method private hasCapabilityChanged(Landroid/net/NetworkCapabilities;I)Z
    .locals 3
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;
    .param p2, "cap"    # I

    .prologue
    const/4 v0, 0x1

    .line 176
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->-get2(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->-get2(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eq v1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->-get1(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->-get2(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 188
    const/16 v0, 0x10

    invoke-direct {p0, p2, v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->hasCapabilityChanged(Landroid/net/NetworkCapabilities;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    const/16 v0, 0x11

    invoke-direct {p0, p2, v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->hasCapabilityChanged(Landroid/net/NetworkCapabilities;I)Z

    move-result v0

    .line 188
    if-eqz v0, :cond_1

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->-wrap1(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0, p2}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->-set1(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    .line 193
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->-wrap3(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    .line 195
    :cond_2
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "lp"    # Landroid/net/LinkProperties;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->-get1(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->-get0(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/LinkProperties;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0, p2}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->-set0(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 170
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->-wrap3(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    .line 172
    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->-get1(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->-wrap0(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    .line 202
    :cond_0
    return-void
.end method
