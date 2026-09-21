.class public final Lcom/cutsame/solution/template/model/CounterData;
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
            "Lcom/cutsame/solution/template/model/CounterData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "post_count"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cutsame/solution/template/model/CounterData$Creator;

    invoke-direct {v0}, Lcom/cutsame/solution/template/model/CounterData$Creator;-><init>()V

    sput-object v0, Lcom/cutsame/solution/template/model/CounterData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/cutsame/solution/template/model/CounterData;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/cutsame/solution/template/model/CounterData;->a:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 4
    :cond_5
    invoke-direct {p0, p1}, Lcom/cutsame/solution/template/model/CounterData;-><init>(I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cutsame/solution/template/model/CounterData;IILjava/lang/Object;)Lcom/cutsame/solution/template/model/CounterData;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget p1, p0, Lcom/cutsame/solution/template/model/CounterData;->a:I

    :cond_6
    invoke-virtual {p0, p1}, Lcom/cutsame/solution/template/model/CounterData;->copy(I)Lcom/cutsame/solution/template/model/CounterData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/cutsame/solution/template/model/CounterData;->a:I

    return p0
.end method

.method public final copy(I)Lcom/cutsame/solution/template/model/CounterData;
    .registers 2

    new-instance p0, Lcom/cutsame/solution/template/model/CounterData;

    invoke-direct {p0, p1}, Lcom/cutsame/solution/template/model/CounterData;-><init>(I)V

    return-object p0
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/cutsame/solution/template/model/CounterData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/cutsame/solution/template/model/CounterData;

    iget p0, p0, Lcom/cutsame/solution/template/model/CounterData;->a:I

    iget p1, p1, Lcom/cutsame/solution/template/model/CounterData;->a:I

    if-eq p0, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public final getPostCount()I
    .registers 1

    .line 1
    iget p0, p0, Lcom/cutsame/solution/template/model/CounterData;->a:I

    return p0
.end method

.method public hashCode()I
    .registers 1

    iget p0, p0, Lcom/cutsame/solution/template/model/CounterData;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "CounterData(postCount="

    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/cutsame/solution/template/model/CounterData;->a:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    iget p0, p0, Lcom/cutsame/solution/template/model/CounterData;->a:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
