.class Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;
    .registers 2

    .line 306
    new-instance p0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;

    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 303
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;
    .registers 2

    .line 311
    new-array p0, p1, [Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 303
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity$1;->newArray(I)[Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;

    move-result-object p0

    return-object p0
.end method
