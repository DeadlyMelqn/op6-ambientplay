.class final synthetic Lcom/oneplus/doze/-$Lambda$Ui9NJ_mYzmvoKQditpmvul44yEs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/oneplus/doze/-$Lambda$Ui9NJ_mYzmvoKQditpmvul44yEs;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/doze/DozeService;

    invoke-virtual {v0}, Lcom/oneplus/doze/DozeService;->lambda$-com_oneplus_doze_DozeService_8629()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/doze/-$Lambda$Ui9NJ_mYzmvoKQditpmvul44yEs;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/oneplus/doze/-$Lambda$Ui9NJ_mYzmvoKQditpmvul44yEs;->$m$0()V

    return-void
.end method
