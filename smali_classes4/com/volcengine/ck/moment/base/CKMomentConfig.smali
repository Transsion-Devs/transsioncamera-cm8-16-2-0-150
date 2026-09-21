.class public final Lcom/volcengine/ck/moment/base/CKMomentConfig;
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
            "Lcom/volcengine/ck/moment/base/CKMomentConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final extra:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final momentTemplates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/volcengine/ck/moment/base/CKMomentTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private final requirement:Lcom/volcengine/ck/moment/base/CKMomentRequirements;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/volcengine/ck/moment/base/CKMomentConfig$Creator;

    invoke-direct {v0}, Lcom/volcengine/ck/moment/base/CKMomentConfig$Creator;-><init>()V

    sput-object v0, Lcom/volcengine/ck/moment/base/CKMomentConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/volcengine/ck/moment/base/CKMomentRequirements;Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/volcengine/ck/moment/base/CKMomentRequirements;",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/moment/base/CKMomentTemplate;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requirement"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "momentTemplates"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/volcengine/ck/moment/base/CKMomentConfig;->id:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/volcengine/ck/moment/base/CKMomentConfig;->requirement:Lcom/volcengine/ck/moment/base/CKMomentRequirements;

    .line 24
    iput-object p3, p0, Lcom/volcengine/ck/moment/base/CKMomentConfig;->momentTemplates:Ljava/util/List;

    .line 25
    iput-object p4, p0, Lcom/volcengine/ck/moment/base/CKMomentConfig;->extra:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/volcengine/ck/moment/base/CKMomentRequirements;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    const/4 p4, 0x0

    .line 21
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/volcengine/ck/moment/base/CKMomentConfig;-><init>(Ljava/lang/String;Lcom/volcengine/ck/moment/base/CKMomentRequirements;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/volcengine/ck/moment/base/CKMomentConfig;Ljava/lang/String;Lcom/volcengine/ck/moment/base/CKMomentRequirements;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lcom/volcengine/ck/moment/base/CKMomentConfig;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/volcengine/ck/moment/base/CKMomentConfig;->id:Ljava/lang/String;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/volcengine/ck/moment/base/CKMomentConfig;->requirement:Lcom/volcengine/ck/moment/base/CKMomentRequirements;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lcom/volcengine/ck/moment/base/CKMomentConfig;->momentTemplates:Ljava/util/List;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lcom/volcengine/ck/moment/base/CKMomentConfig;->extra:Ljava/lang/String;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/volcengine/ck/moment/base/CKMomentConfig;->copy(Ljava/lang/String;Lcom/volcengine/ck/moment/base/CKMomentRequirements;Ljava/util/List;Ljava/lang/String;)Lcom/volcengine/ck/moment/base/CKMomentConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentConfig;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Lcom/volcengine/ck/moment/base/CKMomentRequirements;
    .registers 1

    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentConfig;->requirement:Lcom/volcengine/ck/moment/base/CKMomentRequirements;

    return-object p0
.end method

.method public final component3()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/moment/base/CKMomentTemplate;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentConfig;->momentTemplates:Ljava/util/List;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentConfig;->extra:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Lcom/volcengine/ck/moment/base/CKMomentRequirements;Ljava/util/List;Ljava/lang/String;)Lcom/volcengine/ck/moment/base/CKMomentConfig;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/volcengine/ck/moment/base/CKMomentRequirements;",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/moment/base/CKMomentTemplate;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/volcengine/ck/moment/base/CKMomentConfig;"
        }
    .end annotation

    const-string p0, "id"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "requirement"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "momentTemplates"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/volcengine/ck/moment/base/CKMomentConfig;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/volcengine/ck/moment/base/CKMomentConfig;-><init>(Ljava/lang/String;Lcom/volcengine/ck/moment/base/CKMomentRequirements;Ljava/util/List;Ljava/lang/String;)V

    return-object p0
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
    instance-of v1, p1, Lcom/volcengine/ck/moment/base/CKMomentConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/volcengine/ck/moment/base/CKMomentConfig;

    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMomentConfig;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/volcengine/ck/moment/base/CKMomentConfig;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMomentConfig;->requirement:Lcom/volcengine/ck/moment/base/CKMomentRequirements;

    iget-object v3, p1, Lcom/volcengine/ck/moment/base/CKMomentConfig;->requirement:Lcom/volcengine/ck/moment/base/CKMomentRequirements;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMomentConfig;->momentTemplates:Ljava/util/List;

    iget-object v3, p1, Lcom/volcengine/ck/moment/base/CKMomentConfig;->momentTemplates:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentConfig;->extra:Ljava/lang/String;

    iget-object p1, p1, Lcom/volcengine/ck/moment/base/CKMomentConfig;->extra:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    return v2

    :cond_38
    return v0
.end method

.method public final getExtra()Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentConfig;->extra:Ljava/lang/String;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentConfig;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getMomentTemplates()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/moment/base/CKMomentTemplate;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentConfig;->momentTemplates:Ljava/util/List;

    return-object p0
.end method

.method public final getRequirement()Lcom/volcengine/ck/moment/base/CKMomentRequirements;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentConfig;->requirement:Lcom/volcengine/ck/moment/base/CKMomentRequirements;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/volcengine/ck/moment/base/CKMomentConfig;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMomentConfig;->requirement:Lcom/volcengine/ck/moment/base/CKMomentRequirements;

    invoke-virtual {v1}, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMomentConfig;->momentTemplates:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentConfig;->extra:Ljava/lang/String;

    if-nez p0, :cond_20

    const/4 p0, 0x0

    goto :goto_24

    :cond_20
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_24
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CKMomentConfig(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMomentConfig;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requirement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMomentConfig;->requirement:Lcom/volcengine/ck/moment/base/CKMomentRequirements;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", momentTemplates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMomentConfig;->momentTemplates:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentConfig;->extra:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/volcengine/ck/moment/base/CKMomentConfig;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/volcengine/ck/moment/base/CKMomentConfig;->requirement:Lcom/volcengine/ck/moment/base/CKMomentRequirements;

    invoke-virtual {v0, p1, p2}, Lcom/volcengine/ck/moment/base/CKMomentRequirements;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/volcengine/ck/moment/base/CKMomentConfig;->momentTemplates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/volcengine/ck/moment/base/CKMomentTemplate;

    invoke-virtual {v1, p1, p2}, Lcom/volcengine/ck/moment/base/CKMomentTemplate;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1c

    :cond_2c
    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentConfig;->extra:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
