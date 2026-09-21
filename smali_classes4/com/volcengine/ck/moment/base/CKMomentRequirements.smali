.class public final Lcom/volcengine/ck/moment/base/CKMomentRequirements;
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
            "Lcom/volcengine/ck/moment/base/CKMomentRequirements;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final maxFilterCity:I

.field private final minCount:I

.field private final minScores:F

.field private final pathFilter:Ljava/lang/String;

.field private final requireTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final timeRequirement:Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/volcengine/ck/moment/base/CKMomentRequirements$Creator;

    invoke-direct {v0}, Lcom/volcengine/ck/moment/base/CKMomentRequirements$Creator;-><init>()V

    sput-object v0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 10

    .line 0
    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/volcengine/ck/moment/base/CKMomentRequirements;-><init>(Ljava/util/List;FIILjava/lang/String;Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;FIILjava/lang/String;Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;FII",
            "Ljava/lang/String;",
            "Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;",
            ")V"
        }
    .end annotation

    const-string v0, "requireTags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathFilter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->requireTags:Ljava/util/List;

    .line 31
    iput p2, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->minScores:F

    .line 32
    iput p3, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->minCount:I

    .line 33
    iput p4, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->maxFilterCity:I

    .line 34
    iput-object p5, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->pathFilter:Ljava/lang/String;

    .line 35
    iput-object p6, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->timeRequirement:Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;FIILjava/lang/String;Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 9

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_8

    .line 30
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_8
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_d

    const/4 p2, 0x0

    :cond_d
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_12

    const/4 p3, 0x0

    :cond_12
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_17

    const/4 p4, 0x1

    :cond_17
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_1d

    .line 34
    const-string p5, ""

    :cond_1d
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_22

    const/4 p6, 0x0

    :cond_22
    move-object p7, p5

    move-object p8, p6

    move p5, p3

    move p6, p4

    move-object p3, p1

    move p4, p2

    move-object p2, p0

    .line 29
    invoke-direct/range {p2 .. p8}, Lcom/volcengine/ck/moment/base/CKMomentRequirements;-><init>(Ljava/util/List;FIILjava/lang/String;Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/volcengine/ck/moment/base/CKMomentRequirements;Ljava/util/List;FIILjava/lang/String;Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;ILjava/lang/Object;)Lcom/volcengine/ck/moment/base/CKMomentRequirements;
    .registers 9

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    iget-object p1, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->requireTags:Ljava/util/List;

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_c

    iget p2, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->minScores:F

    :cond_c
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_12

    iget p3, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->minCount:I

    :cond_12
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_18

    iget p4, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->maxFilterCity:I

    :cond_18
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_1e

    iget-object p5, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->pathFilter:Ljava/lang/String;

    :cond_1e
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_24

    iget-object p6, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->timeRequirement:Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;

    :cond_24
    move-object p7, p5

    move-object p8, p6

    move p5, p3

    move p6, p4

    move-object p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->copy(Ljava/util/List;FIILjava/lang/String;Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;)Lcom/volcengine/ck/moment/base/CKMomentRequirements;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->requireTags:Ljava/util/List;

    return-object p0
.end method

.method public final component2()F
    .registers 1

    iget p0, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->minScores:F

    return p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->minCount:I

    return p0
.end method

.method public final component4()I
    .registers 1

    iget p0, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->maxFilterCity:I

    return p0
.end method

.method public final component5()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->pathFilter:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;
    .registers 1

    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->timeRequirement:Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;

    return-object p0
.end method

.method public final copy(Ljava/util/List;FIILjava/lang/String;Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;)Lcom/volcengine/ck/moment/base/CKMomentRequirements;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;FII",
            "Ljava/lang/String;",
            "Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;",
            ")",
            "Lcom/volcengine/ck/moment/base/CKMomentRequirements;"
        }
    .end annotation

    const-string p0, "requireTags"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pathFilter"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/volcengine/ck/moment/base/CKMomentRequirements;-><init>(Ljava/util/List;FIILjava/lang/String;Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;)V

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
    instance-of v1, p1, Lcom/volcengine/ck/moment/base/CKMomentRequirements;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/volcengine/ck/moment/base/CKMomentRequirements;

    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->requireTags:Ljava/util/List;

    iget-object v3, p1, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->requireTags:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->minScores:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->minScores:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v2

    :cond_2a
    iget v1, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->minCount:I

    iget v3, p1, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->minCount:I

    if-eq v1, v3, :cond_31

    return v2

    :cond_31
    iget v1, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->maxFilterCity:I

    iget v3, p1, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->maxFilterCity:I

    if-eq v1, v3, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->pathFilter:Ljava/lang/String;

    iget-object v3, p1, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->pathFilter:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->timeRequirement:Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;

    iget-object p1, p1, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->timeRequirement:Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4e

    return v2

    :cond_4e
    return v0
.end method

.method public final getMaxFilterCity()I
    .registers 1

    .line 33
    iget p0, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->maxFilterCity:I

    return p0
.end method

.method public final getMinCount()I
    .registers 1

    .line 32
    iget p0, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->minCount:I

    return p0
.end method

.method public final getMinScores()F
    .registers 1

    .line 31
    iget p0, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->minScores:F

    return p0
.end method

.method public final getPathFilter()Ljava/lang/String;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->pathFilter:Ljava/lang/String;

    return-object p0
.end method

.method public final getRequireTags()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->requireTags:Ljava/util/List;

    return-object p0
.end method

.method public final getTimeRequirement()Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->timeRequirement:Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->requireTags:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->minScores:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->minCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->maxFilterCity:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->pathFilter:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->timeRequirement:Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;

    if-nez p0, :cond_32

    const/4 p0, 0x0

    goto :goto_36

    :cond_32
    invoke-virtual {p0}, Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;->hashCode()I

    move-result p0

    :goto_36
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CKMomentRequirements(requireTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->requireTags:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minScores="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->minScores:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", minCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->minCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxFilterCity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->maxFilterCity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pathFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->pathFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timeRequirement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->timeRequirement:Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;

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

    iget-object v0, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->requireTags:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget v0, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->minScores:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->minCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->maxFilterCity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->pathFilter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->timeRequirement:Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;

    if-nez p0, :cond_27

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_27
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p1, p2}, Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
