.class final Lcom/android/server/TextServicesManagerService$SessionRequest;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SessionRequest"
.end annotation


# instance fields
.field public final mBundle:Landroid/os/Bundle;

.field public final mLocale:Ljava/lang/String;

.field public final mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

.field public final mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

.field public final mUserId:I


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "tsListener"    # Lcom/android/internal/textservice/ITextServicesSessionListener;
    .param p4, "scListener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .param p5, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 781
    iput p1, p0, Lcom/android/server/TextServicesManagerService$SessionRequest;->mUserId:I

    .line 782
    iput-object p2, p0, Lcom/android/server/TextServicesManagerService$SessionRequest;->mLocale:Ljava/lang/String;

    .line 783
    iput-object p3, p0, Lcom/android/server/TextServicesManagerService$SessionRequest;->mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

    .line 784
    iput-object p4, p0, Lcom/android/server/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 785
    iput-object p5, p0, Lcom/android/server/TextServicesManagerService$SessionRequest;->mBundle:Landroid/os/Bundle;

    .line 786
    return-void
.end method
