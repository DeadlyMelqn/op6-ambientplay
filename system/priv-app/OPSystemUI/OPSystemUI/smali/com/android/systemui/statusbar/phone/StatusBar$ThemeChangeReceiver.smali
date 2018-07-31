.class final Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThemeChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 8970
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p2, "-this1"    # Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 8973
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 8974
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8975
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 8976
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v5, 0x7f060343

    .line 8984
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/util/Utils;->getThemeColor(Landroid/content/Context;)I

    move-result v2

    .line 8985
    .local v2, "themeColor":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/systemui/util/Utils;->getThemeWhiteAccentColor(Landroid/content/Context;I)I

    move-result v3

    .line 8986
    .local v3, "whiteAccentColor":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/systemui/util/Utils;->getThemeBlackAccentColor(Landroid/content/Context;I)I

    move-result v0

    .line 8988
    .local v0, "blackAccentColor":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/util/Utils;->isSpecialTheme(Landroid/content/Context;)Z

    move-result v1

    .line 8991
    .local v1, "specialTheme":Z
    const-string/jumbo v4, "StatusBar"

    const-string/jumbo v5, "mThemeColor=0x%x, themeColor=0x%x, mWhiteAccentColor=0x%x, whiteAccentColor=0x%x, mBlackAccentColor=0x%x, blackAccentColor=0x%x, mSpecialTheme=%b, specialTheme=%b"

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    .line 8993
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get26(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get32(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get2(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v6, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x5

    aput-object v7, v6, v8

    .line 8994
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get24(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x6

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x7

    aput-object v7, v6, v8

    .line 8991
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8995
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get26(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 8996
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get32(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v4

    if-eq v4, v3, :cond_2

    .line 9001
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set15(Lcom/android/systemui/statusbar/phone/StatusBar;I)I

    .line 9003
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set13(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 9005
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set20(Lcom/android/systemui/statusbar/phone/StatusBar;I)I

    .line 9006
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v4, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set0(Lcom/android/systemui/statusbar/phone/StatusBar;I)I

    .line 9007
    invoke-static {p1}, Lcom/android/systemui/util/ThemeColorUtils;->init(Landroid/content/Context;)V

    .line 9008
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {v4}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/fragments/FragmentHostManager;->onThemeColorUpdate()V

    .line 9010
    :cond_1
    return-void

    .line 8997
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get2(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 8999
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get24(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v4

    if-eq v4, v1, :cond_1

    goto :goto_0
.end method
