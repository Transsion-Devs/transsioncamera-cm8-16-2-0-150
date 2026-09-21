.class public final Lcom/cutsame/solution/template/model/TemplateExtra;
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
            "Lcom/cutsame/solution/template/model/TemplateExtra;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_height"
    .end annotation
.end field

.field public final b:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_width"
    .end annotation
.end field

.field public final c:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field public final d:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cartoon_type"
    .end annotation
.end field

.field public final e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "material_id"
    .end annotation
.end field

.field public final f:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "relation_video_group"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cutsame/solution/template/model/TemplateExtra$Creator;

    invoke-direct {v0}, Lcom/cutsame/solution/template/model/TemplateExtra$Creator;-><init>()V

    sput-object v0, Lcom/cutsame/solution/template/model/TemplateExtra;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIJILjava/lang/String;Ljava/lang/String;)V
    .registers 9

    const-string v0, "material_id"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "relation_video_group"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->a:I

    .line 4
    iput p2, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->b:I

    .line 5
    iput-wide p3, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->c:J

    .line 6
    iput p5, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->d:I

    .line 7
    iput-object p6, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->e:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->f:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/cutsame/solution/template/model/TemplateExtra;IIJILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/cutsame/solution/template/model/TemplateExtra;
    .registers 10

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_6

    iget p1, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->a:I

    :cond_6
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_c

    iget p2, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->b:I

    :cond_c
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_12

    iget-wide p3, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->c:J

    :cond_12
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_18

    iget p5, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->d:I

    :cond_18
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_1e

    iget-object p6, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->e:Ljava/lang/String;

    :cond_1e
    and-int/lit8 p8, p8, 0x20

    if-eqz p8, :cond_24

    iget-object p7, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->f:Ljava/lang/String;

    :cond_24
    move-object p8, p6

    move-object p9, p7

    move p7, p5

    move-wide p5, p3

    move p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p9}, Lcom/cutsame/solution/template/model/TemplateExtra;->copy(IIJILjava/lang/String;Ljava/lang/String;)Lcom/cutsame/solution/template/model/TemplateExtra;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->a:I

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->b:I

    return p0
.end method

.method public final component3()J
    .registers 3

    iget-wide v0, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->c:J

    return-wide v0
.end method

.method public final component4()I
    .registers 1

    iget p0, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->d:I

    return p0
.end method

.method public final component5()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(IIJILjava/lang/String;Ljava/lang/String;)Lcom/cutsame/solution/template/model/TemplateExtra;
    .registers 16

    const-string p0, "material_id"

    invoke-static {p6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "relation_video_group"

    invoke-static {p7, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cutsame/solution/template/model/TemplateExtra;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/cutsame/solution/template/model/TemplateExtra;-><init>(IIJILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/cutsame/solution/template/model/TemplateExtra;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/cutsame/solution/template/model/TemplateExtra;

    iget v1, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->a:I

    iget v3, p1, Lcom/cutsame/solution/template/model/TemplateExtra;->a:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->b:I

    iget v3, p1, Lcom/cutsame/solution/template/model/TemplateExtra;->b:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-wide v3, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->c:J

    iget-wide v5, p1, Lcom/cutsame/solution/template/model/TemplateExtra;->c:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_23

    return v2

    :cond_23
    iget v1, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->d:I

    iget v3, p1, Lcom/cutsame/solution/template/model/TemplateExtra;->d:I

    if-eq v1, v3, :cond_2a

    return v2

    :cond_2a
    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/cutsame/solution/template/model/TemplateExtra;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    return v2

    :cond_35
    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/cutsame/solution/template/model/TemplateExtra;->f:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_40

    return v2

    :cond_40
    return v0
.end method

.method public final getCartoon_type()I
    .registers 1

    .line 1
    iget p0, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->d:I

    return p0
.end method

.method public final getDuration()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->c:J

    return-wide v0
.end method

.method public final getMaterial_id()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final getRelation_video_group()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final getVideo_height()I
    .registers 1

    .line 1
    iget p0, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->a:I

    return p0
.end method

.method public final getVideo_width()I
    .registers 1

    .line 1
    iget p0, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->b:I

    return p0
.end method

.method public hashCode()I
    .registers 6

    iget v0, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-wide v3, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->e:Ljava/lang/String;

    invoke-static {v0, v2, v1}, La/a/a/a/a;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->f:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "TemplateExtra(video_height="

    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", video_width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cartoon_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", material_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", relation_video_group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->f:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateExtra;->f:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
