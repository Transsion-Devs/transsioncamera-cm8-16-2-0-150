.class public final Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig$CREATOR;


# instance fields
.field private final bpsFor1080p:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bps_for_1080p"
    .end annotation
.end field

.field private final bpsFor720p:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bps_for_720p"
    .end annotation
.end field

.field private final useMaterialBps:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "use_material_bps"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;->CREATOR:Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig$CREATOR;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .line 0
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;-><init>(IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .registers 4

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;->bpsFor1080p:I

    .line 15
    iput p2, p0, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;->bpsFor720p:I

    .line 17
    iput-boolean p3, p0, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;->useMaterialBps:Z

    return-void
.end method

.method public synthetic constructor <init>(IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    const/high16 p1, 0x1000000

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    const/high16 p2, 0xa00000

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_11

    const/4 p3, 0x0

    .line 12
    :cond_11
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;-><init>(IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_15

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    .line 28
    :goto_16
    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;-><init>(IIZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;IIZILjava/lang/Object;)Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget p1, p0, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;->bpsFor1080p:I

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget p2, p0, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;->bpsFor720p:I

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-boolean p3, p0, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;->useMaterialBps:Z

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;->copy(IIZ)Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;->bpsFor1080p:I

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;->bpsFor720p:I

    return p0
.end method

.method public final component3()Z
    .registers 1

    iget-boolean p0, p0, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;->useMaterialBps:Z

    return p0
.end method

.method public final copy(IIZ)Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;
    .registers 4

    new-instance p0, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;-><init>(IIZ)V

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
    instance-of v1, p1, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;

    iget v1, p0, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;->bpsFor1080p:I

    iget v3, p1, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;->bpsFor1080p:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;->bpsFor720p:I

    iget v3, p1, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;->bpsFor720p:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-boolean p0, p0, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;->useMaterialBps:Z

    iget-boolean p1, p1, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;->useMaterialBps:Z

    if-eq p0, p1, :cond_21

    return v2

    :cond_21
    return v0
.end method

.method public final getBpsFor1080p()I
    .registers 1

    .line 14
    iget p0, p0, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;->bpsFor1080p:I

    return p0
.end method

.method public final getBpsFor720p()I
    .registers 1

    .line 16
    iget p0, p0, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;->bpsFor720p:I

    return p0
.end method

.method public final getUseMaterialBps()Z
    .registers 1

    .line 18
    iget-boolean p0, p0, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;->useMaterialBps:Z

    return p0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;->bpsFor1080p:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;->bpsFor720p:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;->useMaterialBps:Z

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    :cond_16
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VECompileBpsConfig(bpsFor1080p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;->bpsFor1080p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bpsFor720p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;->bpsFor720p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", useMaterialBps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;->useMaterialBps:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 22
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;->getBpsFor1080p()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;->getBpsFor720p()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;->getUseMaterialBps()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
