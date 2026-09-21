.class Lcom/ss/android/vesdk/VECherEffectParam$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VECherEffectParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ss/android/vesdk/VECherEffectParam;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ss/android/vesdk/VECherEffectParam;
    .registers 4

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 108
    new-array v1, p0, [Ljava/lang/String;

    .line 109
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    mul-int/lit8 p0, p0, 0x2

    .line 110
    new-array p0, p0, [D

    .line 111
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readDoubleArray([D)V

    .line 112
    new-array v0, v0, [Z

    .line 113
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 114
    new-instance p1, Lcom/ss/android/vesdk/VECherEffectParam;

    invoke-direct {p1, v1, p0, v0}, Lcom/ss/android/vesdk/VECherEffectParam;-><init>([Ljava/lang/String;[D[Z)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 103
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VECherEffectParam$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ss/android/vesdk/VECherEffectParam;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/ss/android/vesdk/VECherEffectParam;
    .registers 2

    .line 119
    new-array p0, p1, [Lcom/ss/android/vesdk/VECherEffectParam;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 103
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VECherEffectParam$1;->newArray(I)[Lcom/ss/android/vesdk/VECherEffectParam;

    move-result-object p0

    return-object p0
.end method
