.class public final Lcom/cutsame/solution/template/model/FilteredTemplate;
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
            "Lcom/cutsame/solution/template/model/FilteredTemplate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public final b:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "filter_code"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cutsame/solution/template/model/FilteredTemplate$Creator;

    invoke-direct {v0}, Lcom/cutsame/solution/template/model/FilteredTemplate$Creator;-><init>()V

    sput-object v0, Lcom/cutsame/solution/template/model/FilteredTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .line 0
    const/4 v4, 0x3

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/cutsame/solution/template/model/FilteredTemplate;-><init>(JIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JI)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/cutsame/solution/template/model/FilteredTemplate;->a:J

    .line 5
    iput p3, p0, Lcom/cutsame/solution/template/model/FilteredTemplate;->b:I

    return-void
.end method

.method public synthetic constructor <init>(JIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    const-wide/16 p1, 0x0

    :cond_6
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_b

    const/4 p3, 0x0

    .line 6
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/cutsame/solution/template/model/FilteredTemplate;-><init>(JI)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cutsame/solution/template/model/FilteredTemplate;JIILjava/lang/Object;)Lcom/cutsame/solution/template/model/FilteredTemplate;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-wide p1, p0, Lcom/cutsame/solution/template/model/FilteredTemplate;->a:J

    :cond_6
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_c

    iget p3, p0, Lcom/cutsame/solution/template/model/FilteredTemplate;->b:I

    :cond_c
    invoke-virtual {p0, p1, p2, p3}, Lcom/cutsame/solution/template/model/FilteredTemplate;->copy(JI)Lcom/cutsame/solution/template/model/FilteredTemplate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .registers 3

    iget-wide v0, p0, Lcom/cutsame/solution/template/model/FilteredTemplate;->a:J

    return-wide v0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/cutsame/solution/template/model/FilteredTemplate;->b:I

    return p0
.end method

.method public final copy(JI)Lcom/cutsame/solution/template/model/FilteredTemplate;
    .registers 4

    new-instance p0, Lcom/cutsame/solution/template/model/FilteredTemplate;

    invoke-direct {p0, p1, p2, p3}, Lcom/cutsame/solution/template/model/FilteredTemplate;-><init>(JI)V

    return-object p0
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
    instance-of v1, p1, Lcom/cutsame/solution/template/model/FilteredTemplate;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/cutsame/solution/template/model/FilteredTemplate;

    iget-wide v3, p0, Lcom/cutsame/solution/template/model/FilteredTemplate;->a:J

    iget-wide v5, p1, Lcom/cutsame/solution/template/model/FilteredTemplate;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget p0, p0, Lcom/cutsame/solution/template/model/FilteredTemplate;->b:I

    iget p1, p1, Lcom/cutsame/solution/template/model/FilteredTemplate;->b:I

    if-eq p0, p1, :cond_1c

    return v2

    :cond_1c
    return v0
.end method

.method public final getFilterCode()I
    .registers 1

    .line 1
    iget p0, p0, Lcom/cutsame/solution/template/model/FilteredTemplate;->b:I

    return p0
.end method

.method public final getId()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/cutsame/solution/template/model/FilteredTemplate;->a:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 3

    iget-wide v0, p0, Lcom/cutsame/solution/template/model/FilteredTemplate;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/cutsame/solution/template/model/FilteredTemplate;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "FilteredTemplate(id="

    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/cutsame/solution/template/model/FilteredTemplate;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", filterCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/cutsame/solution/template/model/FilteredTemplate;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    iget-wide v0, p0, Lcom/cutsame/solution/template/model/FilteredTemplate;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p0, p0, Lcom/cutsame/solution/template/model/FilteredTemplate;->b:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
