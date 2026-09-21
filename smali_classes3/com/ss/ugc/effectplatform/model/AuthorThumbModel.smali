.class public final Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/model/AuthorThumbModel$Creator;
    }
.end annotation

.annotation build Lkotlinx/android/parcel/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private height:Ljava/lang/Integer;

.field private uri:Ljava/lang/String;

.field private url_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private width:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel$Creator;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel$Creator;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .line 0
    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->uri:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->url_list:Ljava/util/List;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->width:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->height:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_b

    move-object p2, v0

    :cond_b
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_10

    move-object p3, v0

    :cond_10
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_15

    move-object p4, v0

    .line 34
    :cond_15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->uri:Ljava/lang/String;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->url_list:Ljava/util/List;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->width:Ljava/lang/Integer;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->height:Ljava/lang/Integer;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->copy(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->uri:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->url_list:Ljava/util/List;

    return-object p0
.end method

.method public final component3()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->width:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component4()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->height:Ljava/lang/Integer;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;"
        }
    .end annotation

    new-instance p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_33

    instance-of v0, p1, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;

    if-eqz v0, :cond_31

    check-cast p1, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->uri:Ljava/lang/String;

    iget-object v1, p1, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->uri:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->url_list:Ljava/util/List;

    iget-object v1, p1, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->url_list:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->width:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->width:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->height:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->height:Ljava/lang/Integer;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    goto :goto_33

    :cond_31
    const/4 p0, 0x0

    return p0

    :cond_33
    :goto_33
    const/4 p0, 0x1

    return p0
.end method

.method public final getHeight()Ljava/lang/Integer;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->height:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getUri()Ljava/lang/String;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->uri:Ljava/lang/String;

    return-object p0
.end method

.method public final getUrl_list()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->url_list:Ljava/util/List;

    return-object p0
.end method

.method public final getWidth()Ljava/lang/Integer;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->width:Ljava/lang/Integer;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->uri:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->url_list:Ljava/util/List;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->width:Ljava/lang/Integer;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_23
    move v2, v1

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->height:Ljava/lang/Integer;

    if-eqz p0, :cond_2f

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2f
    add-int/2addr v0, v1

    return v0
.end method

.method public final setHeight(Ljava/lang/Integer;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->height:Ljava/lang/Integer;

    return-void
.end method

.method public final setUri(Ljava/lang/String;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->uri:Ljava/lang/String;

    return-void
.end method

.method public final setUrl_list(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->url_list:Ljava/util/List;

    return-void
.end method

.method public final setWidth(Ljava/lang/Integer;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->width:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthorThumbModel(uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url_list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->url_list:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->width:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->height:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->uri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->url_list:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->width:Ljava/lang/Integer;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_20

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_23

    :cond_20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_23
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;->height:Ljava/lang/Integer;

    if-eqz p0, :cond_32

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_32
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
