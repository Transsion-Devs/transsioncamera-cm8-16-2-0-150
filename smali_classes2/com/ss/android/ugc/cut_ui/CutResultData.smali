.class public final Lcom/ss/android/ugc/cut_ui/CutResultData;
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
            "Lcom/ss/android/ugc/cut_ui/CutResultData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final conactFilePath:Ljava/lang/String;

.field private final conactWorksapceId:Ljava/lang/String;

.field private final editMediaItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/ugc/cut_ui/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final lastTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final originTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ss/android/ugc/cut_ui/CutResultData$Creator;

    invoke-direct {v0}, Lcom/ss/android/ugc/cut_ui/CutResultData$Creator;-><init>()V

    sput-object v0, Lcom/ss/android/ugc/cut_ui/CutResultData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/ugc/cut_ui/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->conactFilePath:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->conactWorksapceId:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->originTextList:Ljava/util/List;

    .line 23
    iput-object p4, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->lastTextList:Ljava/util/List;

    .line 26
    iput-object p5, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->editMediaItemList:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 9

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_6

    move-object p3, v0

    :cond_6
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_b

    move-object p4, v0

    :cond_b
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_10

    move-object p5, v0

    .line 11
    :cond_10
    invoke-direct/range {p0 .. p5}, Lcom/ss/android/ugc/cut_ui/CutResultData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/ss/android/ugc/cut_ui/CutResultData;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;ILjava/lang/Object;)Lcom/ss/android/ugc/cut_ui/CutResultData;
    .registers 8

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-object p1, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->conactFilePath:Ljava/lang/String;

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget-object p2, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->conactWorksapceId:Ljava/lang/String;

    :cond_c
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_12

    iget-object p3, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->originTextList:Ljava/util/List;

    :cond_12
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_18

    iget-object p4, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->lastTextList:Ljava/util/List;

    :cond_18
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_1e

    iget-object p5, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->editMediaItemList:Ljava/util/ArrayList;

    :cond_1e
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/ss/android/ugc/cut_ui/CutResultData;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;)Lcom/ss/android/ugc/cut_ui/CutResultData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->conactFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->conactWorksapceId:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->originTextList:Ljava/util/List;

    return-object p0
.end method

.method public final component4()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->lastTextList:Ljava/util/List;

    return-object p0
.end method

.method public final component5()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/ugc/cut_ui/MediaItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->editMediaItemList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;)Lcom/ss/android/ugc/cut_ui/CutResultData;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/ugc/cut_ui/MediaItem;",
            ">;)",
            "Lcom/ss/android/ugc/cut_ui/CutResultData;"
        }
    .end annotation

    new-instance p0, Lcom/ss/android/ugc/cut_ui/CutResultData;

    invoke-direct/range {p0 .. p5}, Lcom/ss/android/ugc/cut_ui/CutResultData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;)V

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
    instance-of v1, p1, Lcom/ss/android/ugc/cut_ui/CutResultData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/ss/android/ugc/cut_ui/CutResultData;

    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->conactFilePath:Ljava/lang/String;

    iget-object v3, p1, Lcom/ss/android/ugc/cut_ui/CutResultData;->conactFilePath:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->conactWorksapceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/ss/android/ugc/cut_ui/CutResultData;->conactWorksapceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->originTextList:Ljava/util/List;

    iget-object v3, p1, Lcom/ss/android/ugc/cut_ui/CutResultData;->originTextList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->lastTextList:Ljava/util/List;

    iget-object v3, p1, Lcom/ss/android/ugc/cut_ui/CutResultData;->lastTextList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->editMediaItemList:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/ss/android/ugc/cut_ui/CutResultData;->editMediaItemList:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_43

    return v2

    :cond_43
    return v0
.end method

.method public final getConactFilePath()Ljava/lang/String;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->conactFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public final getConactWorksapceId()Ljava/lang/String;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->conactWorksapceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getEditMediaItemList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/ugc/cut_ui/MediaItem;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->editMediaItemList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getLastTextList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->lastTextList:Ljava/util/List;

    return-object p0
.end method

.method public final getOriginTextList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->originTextList:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->conactFilePath:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->conactWorksapceId:Ljava/lang/String;

    if-nez v2, :cond_13

    move v2, v1

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->originTextList:Ljava/util/List;

    if-nez v2, :cond_20

    move v2, v1

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->lastTextList:Ljava/util/List;

    if-nez v2, :cond_2d

    move v2, v1

    goto :goto_31

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->editMediaItemList:Ljava/util/ArrayList;

    if-nez p0, :cond_39

    goto :goto_3d

    :cond_39
    invoke-virtual {p0}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    :goto_3d
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CutResultData(conactFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->conactFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", conactWorksapceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->conactWorksapceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", originTextList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->originTextList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastTextList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->lastTextList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", editMediaItemList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->editMediaItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->conactFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->conactWorksapceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->originTextList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->lastTextList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/CutResultData;->editMediaItemList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-nez p0, :cond_22

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_22
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_31
    if-ge v0, v1, :cond_3f

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lcom/ss/android/ugc/cut_ui/MediaItem;

    invoke-virtual {v2, p1, p2}, Lcom/ss/android/ugc/cut_ui/MediaItem;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_31

    :cond_3f
    return-void
.end method
