.class public Lcom/google/android/gms/common/server/converter/ConverterWrapperCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/common/server/converter/ConverterWrapper;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_DESCRIPTION:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/common/server/converter/ConverterWrapper;
    .locals 4

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, p0, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v2

    invoke-static/range {v2 .. v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    sget-object v1, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p1, p0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance p0, Lcom/google/android/gms/common/server/converter/ConverterWrapper;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/server/converter/ConverterWrapper;-><init>(ILcom/google/android/gms/common/server/converter/StringToIntConverter;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/common/server/converter/ConverterWrapperCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/common/server/converter/ConverterWrapper;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/google/android/gms/common/server/converter/ConverterWrapper;
    .locals 0

    new-array p0, p1, [Lcom/google/android/gms/common/server/converter/ConverterWrapper;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/common/server/converter/ConverterWrapperCreator;->newArray(I)[Lcom/google/android/gms/common/server/converter/ConverterWrapper;

    move-result-object p0

    return-object p0
.end method