.class public final Lcom/volcengine/ck/highlight/data/HLCategory;
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
            "Lcom/volcengine/ck/highlight/data/HLCategory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I

.field private final name:Ljava/lang/String;

.field private final prob:F

.field private final satisfied:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/volcengine/ck/highlight/data/HLCategory$Creator;

    invoke-direct {v0}, Lcom/volcengine/ck/highlight/data/HLCategory$Creator;-><init>()V

    sput-object v0, Lcom/volcengine/ck/highlight/data/HLCategory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZF)V
    .registers 6

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/volcengine/ck/highlight/data/HLCategory;->id:I

    .line 46
    iput-object p2, p0, Lcom/volcengine/ck/highlight/data/HLCategory;->name:Ljava/lang/String;

    .line 47
    iput-boolean p3, p0, Lcom/volcengine/ck/highlight/data/HLCategory;->satisfied:Z

    .line 48
    iput p4, p0, Lcom/volcengine/ck/highlight/data/HLCategory;->prob:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/volcengine/ck/highlight/data/HLCategory;ILjava/lang/String;ZFILjava/lang/Object;)Lcom/volcengine/ck/highlight/data/HLCategory;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget p1, p0, Lcom/volcengine/ck/highlight/data/HLCategory;->id:I

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/volcengine/ck/highlight/data/HLCategory;->name:Ljava/lang/String;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-boolean p3, p0, Lcom/volcengine/ck/highlight/data/HLCategory;->satisfied:Z

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget p4, p0, Lcom/volcengine/ck/highlight/data/HLCategory;->prob:F

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/volcengine/ck/highlight/data/HLCategory;->copy(ILjava/lang/String;ZF)Lcom/volcengine/ck/highlight/data/HLCategory;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLCategory;->id:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/HLCategory;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Z
    .registers 1

    iget-boolean p0, p0, Lcom/volcengine/ck/highlight/data/HLCategory;->satisfied:Z

    return p0
.end method

.method public final component4()F
    .registers 1

    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLCategory;->prob:F

    return p0
.end method

.method public final copy(ILjava/lang/String;ZF)Lcom/volcengine/ck/highlight/data/HLCategory;
    .registers 5

    const-string p0, "name"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/volcengine/ck/highlight/data/HLCategory;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/volcengine/ck/highlight/data/HLCategory;-><init>(ILjava/lang/String;ZF)V

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
    instance-of v1, p1, Lcom/volcengine/ck/highlight/data/HLCategory;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/volcengine/ck/highlight/data/HLCategory;

    iget v1, p0, Lcom/volcengine/ck/highlight/data/HLCategory;->id:I

    iget v3, p1, Lcom/volcengine/ck/highlight/data/HLCategory;->id:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/volcengine/ck/highlight/data/HLCategory;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/volcengine/ck/highlight/data/HLCategory;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-boolean v1, p0, Lcom/volcengine/ck/highlight/data/HLCategory;->satisfied:Z

    iget-boolean v3, p1, Lcom/volcengine/ck/highlight/data/HLCategory;->satisfied:Z

    if-eq v1, v3, :cond_25

    return v2

    :cond_25
    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLCategory;->prob:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iget p1, p1, Lcom/volcengine/ck/highlight/data/HLCategory;->prob:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    return v2

    :cond_38
    return v0
.end method

.method public final getId()I
    .registers 1

    .line 45
    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLCategory;->id:I

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/HLCategory;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getProb()F
    .registers 1

    .line 48
    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLCategory;->prob:F

    return p0
.end method

.method public final getSatisfied()Z
    .registers 1

    .line 47
    iget-boolean p0, p0, Lcom/volcengine/ck/highlight/data/HLCategory;->satisfied:Z

    return p0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/volcengine/ck/highlight/data/HLCategory;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/volcengine/ck/highlight/data/HLCategory;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/volcengine/ck/highlight/data/HLCategory;->satisfied:Z

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    :cond_16
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLCategory;->prob:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HLCategory(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/volcengine/ck/highlight/data/HLCategory;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/volcengine/ck/highlight/data/HLCategory;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", satisfied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/volcengine/ck/highlight/data/HLCategory;->satisfied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", prob="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLCategory;->prob:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

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

    iget p2, p0, Lcom/volcengine/ck/highlight/data/HLCategory;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/volcengine/ck/highlight/data/HLCategory;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/volcengine/ck/highlight/data/HLCategory;->satisfied:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLCategory;->prob:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
