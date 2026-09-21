.class Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;
    .registers 2

    .line 34
    invoke-static {}, Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;->values()[Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    aget-object p0, p0, p1

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;
    .registers 2

    .line 39
    new-array p0, p1, [Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform$1;->newArray(I)[Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;

    move-result-object p0

    return-object p0
.end method
