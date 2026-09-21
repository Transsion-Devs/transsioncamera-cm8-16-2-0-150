.class Lcom/ss/android/ttvecamera/TEFrameRateRange$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/TEFrameRateRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ss/android/ttvecamera/TEFrameRateRange;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ss/android/ttvecamera/TEFrameRateRange;
    .registers 2

    .line 44
    new-instance p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;

    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TEFrameRateRange;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 41
    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TEFrameRateRange$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ss/android/ttvecamera/TEFrameRateRange;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/ss/android/ttvecamera/TEFrameRateRange;
    .registers 2

    .line 49
    new-array p0, p1, [Lcom/ss/android/ttvecamera/TEFrameRateRange;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 41
    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TEFrameRateRange$1;->newArray(I)[Lcom/ss/android/ttvecamera/TEFrameRateRange;

    move-result-object p0

    return-object p0
.end method
