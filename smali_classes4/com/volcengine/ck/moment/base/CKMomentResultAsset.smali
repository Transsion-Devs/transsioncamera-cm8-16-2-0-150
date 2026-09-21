.class public final Lcom/volcengine/ck/moment/base/CKMomentResultAsset;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lkotlinx/parcelize/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/volcengine/ck/moment/base/CKMomentResultAsset;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final duration:I

.field private final path:Ljava/lang/String;

.field private final score:Lcom/volcengine/ck/moment/base/CKMomentAssetScore;

.field private time:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset$Creator;

    invoke-direct {v0}, Lcom/volcengine/ck/moment/base/CKMomentResultAsset$Creator;-><init>()V

    sput-object v0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILkotlin/Pair;Lcom/volcengine/ck/moment/base/CKMomentAssetScore;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/volcengine/ck/moment/base/CKMomentAssetScore;",
            ")V"
        }
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "time"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "score"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->path:Ljava/lang/String;

    .line 13
    iput p2, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->duration:I

    .line 14
    iput p3, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->type:I

    .line 15
    iput-object p4, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->time:Lkotlin/Pair;

    .line 16
    iput-object p5, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->score:Lcom/volcengine/ck/moment/base/CKMomentAssetScore;

    return-void
.end method

.method public static synthetic copy$default(Lcom/volcengine/ck/moment/base/CKMomentResultAsset;Ljava/lang/String;IILkotlin/Pair;Lcom/volcengine/ck/moment/base/CKMomentAssetScore;ILjava/lang/Object;)Lcom/volcengine/ck/moment/base/CKMomentResultAsset;
    .registers 8

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-object p1, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->path:Ljava/lang/String;

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget p2, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->duration:I

    :cond_c
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_12

    iget p3, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->type:I

    :cond_12
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_18

    iget-object p4, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->time:Lkotlin/Pair;

    :cond_18
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_1e

    iget-object p5, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->score:Lcom/volcengine/ck/moment/base/CKMomentAssetScore;

    :cond_1e
    move-object p6, p4

    move-object p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->copy(Ljava/lang/String;IILkotlin/Pair;Lcom/volcengine/ck/moment/base/CKMomentAssetScore;)Lcom/volcengine/ck/moment/base/CKMomentResultAsset;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->path:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->duration:I

    return p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->type:I

    return p0
.end method

.method public final component4()Lkotlin/Pair;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->time:Lkotlin/Pair;

    return-object p0
.end method

.method public final component5()Lcom/volcengine/ck/moment/base/CKMomentAssetScore;
    .registers 1

    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->score:Lcom/volcengine/ck/moment/base/CKMomentAssetScore;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;IILkotlin/Pair;Lcom/volcengine/ck/moment/base/CKMomentAssetScore;)Lcom/volcengine/ck/moment/base/CKMomentResultAsset;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/volcengine/ck/moment/base/CKMomentAssetScore;",
            ")",
            "Lcom/volcengine/ck/moment/base/CKMomentResultAsset;"
        }
    .end annotation

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "time"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "score"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;-><init>(Ljava/lang/String;IILkotlin/Pair;Lcom/volcengine/ck/moment/base/CKMomentAssetScore;)V

    return-object v0
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;

    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->path:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->duration:I

    iget v3, p1, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->duration:I

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget v1, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->type:I

    iget v3, p1, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->type:I

    if-eq v1, v3, :cond_25

    return v2

    :cond_25
    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->time:Lkotlin/Pair;

    iget-object v3, p1, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->time:Lkotlin/Pair;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    :cond_30
    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->score:Lcom/volcengine/ck/moment/base/CKMomentAssetScore;

    iget-object p1, p1, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->score:Lcom/volcengine/ck/moment/base/CKMomentAssetScore;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b

    return v2

    :cond_3b
    return v0
.end method

.method public final getDuration()I
    .registers 1

    .line 13
    iget p0, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->duration:I

    return p0
.end method

.method public final getPath()Ljava/lang/String;
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->path:Ljava/lang/String;

    return-object p0
.end method

.method public final getScore()Lcom/volcengine/ck/moment/base/CKMomentAssetScore;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->score:Lcom/volcengine/ck/moment/base/CKMomentAssetScore;

    return-object p0
.end method

.method public final getTime()Lkotlin/Pair;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->time:Lkotlin/Pair;

    return-object p0
.end method

.method public final getType()I
    .registers 1

    .line 14
    iget p0, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->type:I

    return p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->duration:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->time:Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->score:Lcom/volcengine/ck/moment/base/CKMomentAssetScore;

    invoke-virtual {p0}, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isImage()Z
    .registers 1

    .line 18
    iget p0, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->type:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final isVideo()Z
    .registers 2

    .line 19
    iget p0, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->type:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final setTime(Lkotlin/Pair;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->time:Lkotlin/Pair;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CKMomentResultAsset(path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->time:Lkotlin/Pair;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->score:Lcom/volcengine/ck/moment/base/CKMomentAssetScore;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->time:Lkotlin/Pair;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentResultAsset;->score:Lcom/volcengine/ck/moment/base/CKMomentAssetScore;

    invoke-virtual {p0, p1, p2}, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
