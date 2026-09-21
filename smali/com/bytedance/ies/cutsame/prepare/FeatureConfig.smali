.class public final Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/cutsame/prepare/FeatureConfig$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/bytedance/ies/cutsame/prepare/FeatureConfig$CREATOR;

.field public static final DEFAULT_FPS:I = 0x28

.field public static final DEFAULT_RESOLUTION:I = 0x384000


# instance fields
.field private final importFps:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "import_fps"
    .end annotation
.end field

.field private final importResolutionRatio:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "import_resolution_threshold"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;->CREATOR:Lcom/bytedance/ies/cutsame/prepare/FeatureConfig$CREATOR;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 0
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;->importFps:I

    .line 15
    iput p2, p0, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;->importResolutionRatio:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    const/16 p1, 0x28

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_d

    const p2, 0x384000

    .line 12
    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 39
    invoke-direct {p0, v0, p1}, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;-><init>(II)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;IIILjava/lang/Object;)Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget p1, p0, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;->importFps:I

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget p2, p0, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;->importResolutionRatio:I

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;->copy(II)Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;->importFps:I

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;->importResolutionRatio:I

    return p0
.end method

.method public final copy(II)Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;
    .registers 3

    new-instance p0, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;

    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;-><init>(II)V

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
    instance-of v1, p1, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;

    iget v1, p0, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;->importFps:I

    iget v3, p1, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;->importFps:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget p0, p0, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;->importResolutionRatio:I

    iget p1, p1, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;->importResolutionRatio:I

    if-eq p0, p1, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public final getImportFps()I
    .registers 1

    .line 14
    iget p0, p0, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;->importFps:I

    return p0
.end method

.method public final getImportResolutionRatio()I
    .registers 1

    .line 16
    iget p0, p0, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;->importResolutionRatio:I

    return p0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;->importFps:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;->importResolutionRatio:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FeatureConfig(importFps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;->importFps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", importResolutionRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;->importResolutionRatio:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 34
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;->getImportFps()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;->getImportResolutionRatio()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
