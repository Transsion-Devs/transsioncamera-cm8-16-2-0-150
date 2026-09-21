.class public final Lcom/volcengine/ck/moment/base/CKMomentResultAsset$Creator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/volcengine/ck/moment/base/CKMomentResultAsset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/volcengine/ck/moment/base/CKMomentResultAsset;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/volcengine/ck/moment/base/CKMomentResultAsset;
    .registers 8

    .line 0
    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lkotlin/Pair;

    sget-object p0, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;

    invoke-direct/range {v0 .. v5}, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;-><init>(Ljava/lang/String;IILkotlin/Pair;Lcom/volcengine/ck/moment/base/CKMomentAssetScore;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/volcengine/ck/moment/base/CKMomentResultAsset$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/volcengine/ck/moment/base/CKMomentResultAsset;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lcom/volcengine/ck/moment/base/CKMomentResultAsset;
    .registers 2

    .line 0
    new-array p0, p1, [Lcom/volcengine/ck/moment/base/CKMomentResultAsset;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/volcengine/ck/moment/base/CKMomentResultAsset$Creator;->newArray(I)[Lcom/volcengine/ck/moment/base/CKMomentResultAsset;

    move-result-object p0

    return-object p0
.end method
