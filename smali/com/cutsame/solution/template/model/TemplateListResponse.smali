.class public final Lcom/cutsame/solution/template/model/TemplateListResponse;
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
            "Lcom/cutsame/solution/template/model/TemplateListResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ret"
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errmsg"
    .end annotation
.end field

.field public final c:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "systime"
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logid"
    .end annotation
.end field

.field public final e:Lcom/cutsame/solution/template/model/DataTemplateList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cutsame/solution/template/model/TemplateListResponse$Creator;

    invoke-direct {v0}, Lcom/cutsame/solution/template/model/TemplateListResponse$Creator;-><init>()V

    sput-object v0, Lcom/cutsame/solution/template/model/TemplateListResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 10

    .line 0
    const/16 v7, 0x1f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/cutsame/solution/template/model/TemplateListResponse;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/cutsame/solution/template/model/DataTemplateList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/cutsame/solution/template/model/DataTemplateList;)V
    .registers 8

    const-string v0, "ret"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logid"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->b:Ljava/lang/String;

    .line 5
    iput-wide p3, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->c:J

    .line 6
    iput-object p5, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->d:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->e:Lcom/cutsame/solution/template/model/DataTemplateList;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/cutsame/solution/template/model/DataTemplateList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 10

    and-int/lit8 p8, p7, 0x1

    const-string v0, ""

    if-eqz p8, :cond_7

    move-object p1, v0

    :cond_7
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_c

    move-object p2, v0

    :cond_c
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_12

    const-wide/16 p3, -0x1

    :cond_12
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_17

    move-object p5, v0

    :cond_17
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_1c

    const/4 p6, 0x0

    .line 8
    :cond_1c
    invoke-direct/range {p0 .. p6}, Lcom/cutsame/solution/template/model/TemplateListResponse;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/cutsame/solution/template/model/DataTemplateList;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cutsame/solution/template/model/TemplateListResponse;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/cutsame/solution/template/model/DataTemplateList;ILjava/lang/Object;)Lcom/cutsame/solution/template/model/TemplateListResponse;
    .registers 9

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    iget-object p1, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->a:Ljava/lang/String;

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_c

    iget-object p2, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->b:Ljava/lang/String;

    :cond_c
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_12

    iget-wide p3, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->c:J

    :cond_12
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_18

    iget-object p5, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->d:Ljava/lang/String;

    :cond_18
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_1e

    iget-object p6, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->e:Lcom/cutsame/solution/template/model/DataTemplateList;

    :cond_1e
    move-object p7, p5

    move-object p8, p6

    move-wide p5, p3

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/cutsame/solution/template/model/TemplateListResponse;->copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/cutsame/solution/template/model/DataTemplateList;)Lcom/cutsame/solution/template/model/TemplateListResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()J
    .registers 3

    iget-wide v0, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->c:J

    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Lcom/cutsame/solution/template/model/DataTemplateList;
    .registers 1

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->e:Lcom/cutsame/solution/template/model/DataTemplateList;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/cutsame/solution/template/model/DataTemplateList;)Lcom/cutsame/solution/template/model/TemplateListResponse;
    .registers 14

    const-string p0, "ret"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "message"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "logid"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cutsame/solution/template/model/TemplateListResponse;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/cutsame/solution/template/model/TemplateListResponse;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/cutsame/solution/template/model/DataTemplateList;)V

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
    instance-of v1, p1, Lcom/cutsame/solution/template/model/TemplateListResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/cutsame/solution/template/model/TemplateListResponse;

    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/cutsame/solution/template/model/TemplateListResponse;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/cutsame/solution/template/model/TemplateListResponse;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-wide v3, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->c:J

    iget-wide v5, p1, Lcom/cutsame/solution/template/model/TemplateListResponse;->c:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2b

    return v2

    :cond_2b
    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/cutsame/solution/template/model/TemplateListResponse;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    return v2

    :cond_36
    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->e:Lcom/cutsame/solution/template/model/DataTemplateList;

    iget-object p1, p1, Lcom/cutsame/solution/template/model/TemplateListResponse;->e:Lcom/cutsame/solution/template/model/DataTemplateList;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41

    return v2

    :cond_41
    return v0
.end method

.method public final getData()Lcom/cutsame/solution/template/model/DataTemplateList;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->e:Lcom/cutsame/solution/template/model/DataTemplateList;

    return-object p0
.end method

.method public final getLogid()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getRet()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getSystime()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->c:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->b:Ljava/lang/String;

    invoke-static {v2, v0, v1}, La/a/a/a/a;->a(Ljava/lang/String;II)I

    move-result v0

    iget-wide v2, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->d:Ljava/lang/String;

    invoke-static {v0, v2, v1}, La/a/a/a/a;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->e:Lcom/cutsame/solution/template/model/DataTemplateList;

    if-nez p0, :cond_23

    const/4 p0, 0x0

    goto :goto_27

    :cond_23
    invoke-virtual {p0}, Lcom/cutsame/solution/template/model/DataTemplateList;->hashCode()I

    move-result p0

    :goto_27
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "TemplateListResponse(ret="

    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", systime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", logid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->e:Lcom/cutsame/solution/template/model/DataTemplateList;

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

    iget-object v0, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateListResponse;->e:Lcom/cutsame/solution/template/model/DataTemplateList;

    if-nez p0, :cond_22

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_22
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p1, p2}, Lcom/cutsame/solution/template/model/DataTemplateList;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
