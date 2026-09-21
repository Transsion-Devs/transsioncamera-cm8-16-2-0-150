.class public final Lcom/cutsame/solution/source/SourceInfo$Creator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cutsame/solution/source/SourceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/cutsame/solution/source/SourceInfo;
    .registers 9

    .line 0
    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cutsame/solution/source/SourceInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    sget-object p0, Lcom/cutsame/solution/source/CacheConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/cutsame/solution/source/CacheConfig;

    invoke-direct/range {v0 .. v6}, Lcom/cutsame/solution/source/SourceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/cutsame/solution/source/CacheConfig;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/cutsame/solution/source/SourceInfo$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/cutsame/solution/source/SourceInfo;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lcom/cutsame/solution/source/SourceInfo;
    .registers 2

    .line 0
    new-array p0, p1, [Lcom/cutsame/solution/source/SourceInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/cutsame/solution/source/SourceInfo$Creator;->newArray(I)[Lcom/cutsame/solution/source/SourceInfo;

    move-result-object p0

    return-object p0
.end method
