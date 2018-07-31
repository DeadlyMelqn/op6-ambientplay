.class Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;
.super Lcom/android/internal/textservice/ISpellCheckerService$Stub;
.source "SpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textservice/SpellCheckerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpellCheckerServiceBinder"
.end annotation


# instance fields
.field private final mInternalServiceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/service/textservice/SpellCheckerService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/service/textservice/SpellCheckerService;)V
    .locals 1
    .param p1, "service"    # Landroid/service/textservice/SpellCheckerService;

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/android/internal/textservice/ISpellCheckerService$Stub;-><init>()V

    .line 312
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;->mInternalServiceRef:Ljava/lang/ref/WeakReference;

    .line 313
    return-void
.end method


# virtual methods
.method public getISpellCheckerSession(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;Lcom/android/internal/textservice/ISpellCheckerServiceCallback;)V
    .locals 5
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "callback"    # Lcom/android/internal/textservice/ISpellCheckerServiceCallback;

    .prologue
    .line 332
    iget-object v4, p0, Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;->mInternalServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/textservice/SpellCheckerService;

    .line 334
    .local v2, "service":Landroid/service/textservice/SpellCheckerService;
    if-nez v2, :cond_0

    .line 337
    const/4 v1, 0x0

    .line 345
    :goto_0
    :try_start_0
    invoke-interface {p4, v1}, Lcom/android/internal/textservice/ISpellCheckerServiceCallback;->onSessionCreated(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_1
    return-void

    .line 339
    :cond_0
    invoke-virtual {v2}, Landroid/service/textservice/SpellCheckerService;->createSession()Landroid/service/textservice/SpellCheckerService$Session;

    move-result-object v3

    .line 341
    .local v3, "session":Landroid/service/textservice/SpellCheckerService$Session;
    new-instance v1, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;

    invoke-direct {v1, p1, p2, p3, v3}, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;-><init>(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;Landroid/service/textservice/SpellCheckerService$Session;)V

    .line 342
    .local v1, "internalSession":Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;
    invoke-virtual {v3}, Landroid/service/textservice/SpellCheckerService$Session;->onCreate()V

    goto :goto_0

    .line 346
    .end local v1    # "internalSession":Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;
    .end local v3    # "session":Landroid/service/textservice/SpellCheckerService$Session;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method
