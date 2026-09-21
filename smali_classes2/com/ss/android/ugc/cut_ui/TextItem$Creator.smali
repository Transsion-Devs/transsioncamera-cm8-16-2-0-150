.class public final Lcom/ss/android/ugc/cut_ui/TextItem$Creator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ugc/cut_ui/TextItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ss/android/ugc/cut_ui/TextItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/ss/android/ugc/cut_ui/TextItem;
    .registers 12

    .line 0
    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ss/android/ugc/cut_ui/TextItem;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    :goto_12
    move v3, p0

    goto :goto_16

    :cond_14
    const/4 p0, 0x0

    goto :goto_12

    :goto_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/ss/android/ugc/cut_ui/TextItem;-><init>(JZLjava/lang/String;DJLjava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/ss/android/ugc/cut_ui/TextItem$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/ss/android/ugc/cut_ui/TextItem;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lcom/ss/android/ugc/cut_ui/TextItem;
    .registers 2

    .line 0
    new-array p0, p1, [Lcom/ss/android/ugc/cut_ui/TextItem;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/ss/android/ugc/cut_ui/TextItem$Creator;->newArray(I)[Lcom/ss/android/ugc/cut_ui/TextItem;

    move-result-object p0

    return-object p0
.end method
