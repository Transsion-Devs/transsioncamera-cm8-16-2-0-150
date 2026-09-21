.class public final Lcom/volcengine/ck/moment/base/CKMomentAssetScore$Creator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/volcengine/ck/moment/base/CKMomentAssetScore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/volcengine/ck/moment/base/CKMomentAssetScore;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/volcengine/ck/moment/base/CKMomentAssetScore;
    .registers 5

    .line 0
    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;-><init>(JFF)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/volcengine/ck/moment/base/CKMomentAssetScore$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/volcengine/ck/moment/base/CKMomentAssetScore;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lcom/volcengine/ck/moment/base/CKMomentAssetScore;
    .registers 2

    .line 0
    new-array p0, p1, [Lcom/volcengine/ck/moment/base/CKMomentAssetScore;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/volcengine/ck/moment/base/CKMomentAssetScore$Creator;->newArray(I)[Lcom/volcengine/ck/moment/base/CKMomentAssetScore;

    move-result-object p0

    return-object p0
.end method
