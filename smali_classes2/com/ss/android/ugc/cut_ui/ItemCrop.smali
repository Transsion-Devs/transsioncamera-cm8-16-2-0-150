.class public final Lcom/ss/android/ugc/cut_ui/ItemCrop;
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
            "Lcom/ss/android/ugc/cut_ui/ItemCrop;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final lowerRightX:F

.field private final lowerRightY:F

.field private final upperLeftX:F

.field private final upperLeftY:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ss/android/ugc/cut_ui/ItemCrop$Creator;

    invoke-direct {v0}, Lcom/ss/android/ugc/cut_ui/ItemCrop$Creator;-><init>()V

    sput-object v0, Lcom/ss/android/ugc/cut_ui/ItemCrop;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .registers 5

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput p1, p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;->upperLeftX:F

    .line 140
    iput p2, p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;->upperLeftY:F

    .line 141
    iput p3, p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;->lowerRightX:F

    .line 142
    iput p4, p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;->lowerRightY:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/ss/android/ugc/cut_ui/ItemCrop;FFFFILjava/lang/Object;)Lcom/ss/android/ugc/cut_ui/ItemCrop;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget p1, p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;->upperLeftX:F

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget p2, p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;->upperLeftY:F

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget p3, p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;->lowerRightX:F

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget p4, p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;->lowerRightY:F

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->copy(FFFF)Lcom/ss/android/ugc/cut_ui/ItemCrop;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .registers 1

    iget p0, p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;->upperLeftX:F

    return p0
.end method

.method public final component2()F
    .registers 1

    iget p0, p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;->upperLeftY:F

    return p0
.end method

.method public final component3()F
    .registers 1

    iget p0, p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;->lowerRightX:F

    return p0
.end method

.method public final component4()F
    .registers 1

    iget p0, p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;->lowerRightY:F

    return p0
.end method

.method public final copy(FFFF)Lcom/ss/android/ugc/cut_ui/ItemCrop;
    .registers 5

    new-instance p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/ugc/cut_ui/ItemCrop;-><init>(FFFF)V

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
    instance-of v1, p1, Lcom/ss/android/ugc/cut_ui/ItemCrop;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/ss/android/ugc/cut_ui/ItemCrop;

    iget v1, p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;->upperLeftX:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/ss/android/ugc/cut_ui/ItemCrop;->upperLeftX:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget v1, p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;->upperLeftY:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/ss/android/ugc/cut_ui/ItemCrop;->upperLeftY:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    return v2

    :cond_32
    iget v1, p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;->lowerRightX:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/ss/android/ugc/cut_ui/ItemCrop;->lowerRightX:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    return v2

    :cond_45
    iget p0, p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;->lowerRightY:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iget p1, p1, Lcom/ss/android/ugc/cut_ui/ItemCrop;->lowerRightY:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_58

    return v2

    :cond_58
    return v0
.end method

.method public final getLowerRightX()F
    .registers 1

    .line 141
    iget p0, p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;->lowerRightX:F

    return p0
.end method

.method public final getLowerRightY()F
    .registers 1

    .line 142
    iget p0, p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;->lowerRightY:F

    return p0
.end method

.method public final getUpperLeftX()F
    .registers 1

    .line 139
    iget p0, p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;->upperLeftX:F

    return p0
.end method

.method public final getUpperLeftY()F
    .registers 1

    .line 140
    iget p0, p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;->upperLeftY:F

    return p0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;->upperLeftX:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;->upperLeftY:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;->lowerRightX:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;->lowerRightY:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"upperLeftX\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget v1, p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;->upperLeftX:F

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 146
    const-string v1, "\",\"upperLeftY\":\""

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget v1, p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;->upperLeftY:F

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, "\",\"lowerRightX\":\""

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget v1, p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;->lowerRightX:F

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 148
    const-string v1, "\",\"lowerRightY\":\""

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget p0, p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;->lowerRightY:F

    .line 145
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 149
    const-string p0, "\"}"

    .line 145
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;->upperLeftX:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;->upperLeftY:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;->lowerRightX:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p0, p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;->lowerRightY:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
