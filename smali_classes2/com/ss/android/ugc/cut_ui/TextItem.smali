.class public final Lcom/ss/android/ugc/cut_ui/TextItem;
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
            "Lcom/ss/android/ugc/cut_ui/TextItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final duration:J

.field private final materialId:Ljava/lang/String;

.field private final mutable:Z

.field private final rotation:D

.field private final targetStartTime:J

.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ss/android/ugc/cut_ui/TextItem$Creator;

    invoke-direct {v0}, Lcom/ss/android/ugc/cut_ui/TextItem$Creator;-><init>()V

    sput-object v0, Lcom/ss/android/ugc/cut_ui/TextItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 13

    .line 0
    const/16 v10, 0x3f

    const/4 v11, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/ss/android/ugc/cut_ui/TextItem;-><init>(JZLjava/lang/String;DJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JZLjava/lang/String;DJLjava/lang/String;)V
    .registers 11

    const-string v0, "materialId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->duration:J

    .line 15
    iput-boolean p3, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->mutable:Z

    .line 19
    iput-object p4, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->materialId:Ljava/lang/String;

    .line 23
    iput-wide p5, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->rotation:D

    .line 27
    iput-wide p7, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->targetStartTime:J

    .line 31
    iput-object p9, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->text:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JZLjava/lang/String;DJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 15

    and-int/lit8 p11, p10, 0x1

    const-wide/16 v0, 0x0

    if-eqz p11, :cond_7

    move-wide p1, v0

    :cond_7
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_c

    const/4 p3, 0x0

    :cond_c
    and-int/lit8 p11, p10, 0x4

    .line 7
    const-string v2, ""

    if-eqz p11, :cond_13

    move-object p4, v2

    :cond_13
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_19

    const-wide/16 p5, 0x0

    :cond_19
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_1e

    move-wide p7, v0

    :cond_1e
    and-int/lit8 p10, p10, 0x20

    if-eqz p10, :cond_23

    move-object p9, v2

    :cond_23
    invoke-direct/range {p0 .. p9}, Lcom/ss/android/ugc/cut_ui/TextItem;-><init>(JZLjava/lang/String;DJLjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/ss/android/ugc/cut_ui/TextItem;JZLjava/lang/String;DJLjava/lang/String;ILjava/lang/Object;)Lcom/ss/android/ugc/cut_ui/TextItem;
    .registers 22

    and-int/lit8 v0, p10, 0x1

    if-eqz v0, :cond_6

    iget-wide p1, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->duration:J

    :cond_6
    move-wide v1, p1

    and-int/lit8 p1, p10, 0x2

    if-eqz p1, :cond_d

    iget-boolean p3, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->mutable:Z

    :cond_d
    move v3, p3

    and-int/lit8 p1, p10, 0x4

    if-eqz p1, :cond_14

    iget-object p4, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->materialId:Ljava/lang/String;

    :cond_14
    move-object v4, p4

    and-int/lit8 p1, p10, 0x8

    if-eqz p1, :cond_1d

    iget-wide p1, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->rotation:D

    move-wide v5, p1

    goto :goto_1e

    :cond_1d
    move-wide v5, p5

    :goto_1e
    and-int/lit8 p1, p10, 0x10

    if-eqz p1, :cond_26

    iget-wide p1, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->targetStartTime:J

    move-wide v7, p1

    goto :goto_28

    :cond_26
    move-wide/from16 v7, p7

    :goto_28
    and-int/lit8 p1, p10, 0x20

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->text:Ljava/lang/String;

    move-object v9, p1

    :goto_2f
    move-object v0, p0

    goto :goto_34

    :cond_31
    move-object/from16 v9, p9

    goto :goto_2f

    :goto_34
    invoke-virtual/range {v0 .. v9}, Lcom/ss/android/ugc/cut_ui/TextItem;->copy(JZLjava/lang/String;DJLjava/lang/String;)Lcom/ss/android/ugc/cut_ui/TextItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .registers 3

    iget-wide v0, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->duration:J

    return-wide v0
.end method

.method public final component2()Z
    .registers 1

    iget-boolean p0, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->mutable:Z

    return p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->materialId:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()D
    .registers 3

    iget-wide v0, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->rotation:D

    return-wide v0
.end method

.method public final component5()J
    .registers 3

    iget-wide v0, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->targetStartTime:J

    return-wide v0
.end method

.method public final component6()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->text:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(JZLjava/lang/String;DJLjava/lang/String;)Lcom/ss/android/ugc/cut_ui/TextItem;
    .registers 20

    const-string p0, "materialId"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "text"

    move-object/from16 v9, p9

    invoke-static {v9, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ss/android/ugc/cut_ui/TextItem;

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/ss/android/ugc/cut_ui/TextItem;-><init>(JZLjava/lang/String;DJLjava/lang/String;)V

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
    instance-of v1, p1, Lcom/ss/android/ugc/cut_ui/TextItem;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/ss/android/ugc/cut_ui/TextItem;

    iget-wide v3, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->duration:J

    iget-wide v5, p1, Lcom/ss/android/ugc/cut_ui/TextItem;->duration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget-boolean v1, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->mutable:Z

    iget-boolean v3, p1, Lcom/ss/android/ugc/cut_ui/TextItem;->mutable:Z

    if-eq v1, v3, :cond_1c

    return v2

    :cond_1c
    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->materialId:Ljava/lang/String;

    iget-object v3, p1, Lcom/ss/android/ugc/cut_ui/TextItem;->materialId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    return v2

    :cond_27
    iget-wide v3, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->rotation:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v3, p1, Lcom/ss/android/ugc/cut_ui/TextItem;->rotation:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    return v2

    :cond_3a
    iget-wide v3, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->targetStartTime:J

    iget-wide v5, p1, Lcom/ss/android/ugc/cut_ui/TextItem;->targetStartTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_43

    return v2

    :cond_43
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->text:Ljava/lang/String;

    iget-object p1, p1, Lcom/ss/android/ugc/cut_ui/TextItem;->text:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4e

    return v2

    :cond_4e
    return v0
.end method

.method public final getDuration()J
    .registers 3

    .line 11
    iget-wide v0, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->duration:J

    return-wide v0
.end method

.method public final getMaterialId()Ljava/lang/String;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->materialId:Ljava/lang/String;

    return-object p0
.end method

.method public final getMutable()Z
    .registers 1

    .line 15
    iget-boolean p0, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->mutable:Z

    return p0
.end method

.method public final getRotation()D
    .registers 3

    .line 23
    iget-wide v0, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->rotation:D

    return-wide v0
.end method

.method public final getTargetStartTime()J
    .registers 3

    .line 27
    iget-wide v0, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->targetStartTime:J

    return-wide v0
.end method

.method public final getText()Ljava/lang/String;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->text:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-wide v0, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->duration:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->mutable:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    :cond_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->materialId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->rotation:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->targetStartTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->text:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setText(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->text:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"materialId\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->materialId:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, "\",\"duration\":\""

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-wide v1, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->duration:J

    .line 34
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, "\",\"mutable\":\""

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-boolean v1, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->mutable:Z

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, "\",\"targetStartTime\":\""

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-wide v1, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->targetStartTime:J

    .line 34
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    const-string v1, "\",\"text\":\""

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->text:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string p0, "\"}"

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean p2, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->mutable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->materialId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->rotation:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->targetStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/TextItem;->text:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
