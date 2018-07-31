.class final Lcom/google/android/gms/common/data/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/data/TextFilterable$StringFilter;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
