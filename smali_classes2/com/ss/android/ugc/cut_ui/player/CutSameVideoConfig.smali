.class public final Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lkotlinx/android/parcel/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bitRateJsonStr:Ljava/lang/String;

.field private final minInWidthAndHeight:I

.field private final supportHwEncoder:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig$Creator;

    invoke-direct {v0}, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig$Creator;-><init>()V

    sput-object v0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .registers 5

    const-string v0, "bitRateJsonStr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;->minInWidthAndHeight:I

    .line 19
    iput-object p2, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;->bitRateJsonStr:Ljava/lang/String;

    .line 20
    iput-boolean p3, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;->supportHwEncoder:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;ILjava/lang/String;ZILjava/lang/Object;)Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget p1, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;->minInWidthAndHeight:I

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;->bitRateJsonStr:Ljava/lang/String;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-boolean p3, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;->supportHwEncoder:Z

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;->copy(ILjava/lang/String;Z)Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;->minInWidthAndHeight:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;->bitRateJsonStr:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Z
    .registers 1

    iget-boolean p0, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;->supportHwEncoder:Z

    return p0
.end method

.method public final copy(ILjava/lang/String;Z)Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;
    .registers 4

    const-string p0, "bitRateJsonStr"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;

    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;-><init>(ILjava/lang/String;Z)V

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
    instance-of v1, p1, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;

    iget v1, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;->minInWidthAndHeight:I

    iget v3, p1, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;->minInWidthAndHeight:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;->bitRateJsonStr:Ljava/lang/String;

    iget-object v3, p1, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;->bitRateJsonStr:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-boolean p0, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;->supportHwEncoder:Z

    iget-boolean p1, p1, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;->supportHwEncoder:Z

    if-eq p0, p1, :cond_25

    return v2

    :cond_25
    return v0
.end method

.method public final getBitRateJsonStr()Ljava/lang/String;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;->bitRateJsonStr:Ljava/lang/String;

    return-object p0
.end method

.method public final getMinInWidthAndHeight()I
    .registers 1

    .line 18
    iget p0, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;->minInWidthAndHeight:I

    return p0
.end method

.method public final getSupportHwEncoder()Z
    .registers 1

    .line 20
    iget-boolean p0, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;->supportHwEncoder:Z

    return p0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;->minInWidthAndHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;->bitRateJsonStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;->supportHwEncoder:Z

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

    const-string v1, "CutSameVideoConfig(minInWidthAndHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;->minInWidthAndHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bitRateJsonStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;->bitRateJsonStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", supportHwEncoder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;->supportHwEncoder:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;->minInWidthAndHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;->bitRateJsonStr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;->supportHwEncoder:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
