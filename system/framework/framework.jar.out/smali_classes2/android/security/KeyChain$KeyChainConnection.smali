.class public Landroid/security/KeyChain$KeyChainConnection;
.super Ljava/lang/Object;
.source "KeyChain.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/KeyChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyChainConnection"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final service:Landroid/security/IKeyChainService;

.field private final serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceConnection"    # Landroid/content/ServiceConnection;
    .param p3, "service"    # Landroid/security/IKeyChainService;

    .prologue
    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    iput-object p1, p0, Landroid/security/KeyChain$KeyChainConnection;->context:Landroid/content/Context;

    .line 606
    iput-object p2, p0, Landroid/security/KeyChain$KeyChainConnection;->serviceConnection:Landroid/content/ServiceConnection;

    .line 607
    iput-object p3, p0, Landroid/security/KeyChain$KeyChainConnection;->service:Landroid/security/IKeyChainService;

    .line 608
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Landroid/security/KeyChain$KeyChainConnection;->context:Landroid/content/Context;

    iget-object v1, p0, Landroid/security/KeyChain$KeyChainConnection;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 611
    return-void
.end method

.method public getService()Landroid/security/IKeyChainService;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Landroid/security/KeyChain$KeyChainConnection;->service:Landroid/security/IKeyChainService;

    return-object v0
.end method
