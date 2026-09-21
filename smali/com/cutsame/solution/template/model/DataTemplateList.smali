.class public final Lcom/cutsame/solution/template/model/DataTemplateList;
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
            "Lcom/cutsame/solution/template/model/DataTemplateList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "has_more"
    .end annotation
.end field

.field public final b:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "next_cursor"
    .end annotation
.end field

.field public final c:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "template_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cutsame/solution/template/model/TemplateItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cutsame/solution/template/model/DataTemplateList$Creator;

    invoke-direct {v0}, Lcom/cutsame/solution/template/model/DataTemplateList$Creator;-><init>()V

    sput-object v0, Lcom/cutsame/solution/template/model/DataTemplateList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .line 0
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/cutsame/solution/template/model/DataTemplateList;-><init>(ZILjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZILjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/ArrayList<",
            "Lcom/cutsame/solution/template/model/TemplateItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "templateList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/cutsame/solution/template/model/DataTemplateList;->a:Z

    .line 4
    iput p2, p0, Lcom/cutsame/solution/template/model/DataTemplateList;->b:I

    .line 5
    iput-object p3, p0, Lcom/cutsame/solution/template/model/DataTemplateList;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(ZILjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_5

    const/4 p1, 0x0

    :cond_5
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_a

    const/4 p2, -0x1

    :cond_a
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_13

    .line 6
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :cond_13
    invoke-direct {p0, p1, p2, p3}, Lcom/cutsame/solution/template/model/DataTemplateList;-><init>(ZILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cutsame/solution/template/model/DataTemplateList;ZILjava/util/ArrayList;ILjava/lang/Object;)Lcom/cutsame/solution/template/model/DataTemplateList;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-boolean p1, p0, Lcom/cutsame/solution/template/model/DataTemplateList;->a:Z

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget p2, p0, Lcom/cutsame/solution/template/model/DataTemplateList;->b:I

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/cutsame/solution/template/model/DataTemplateList;->c:Ljava/util/ArrayList;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/cutsame/solution/template/model/DataTemplateList;->copy(ZILjava/util/ArrayList;)Lcom/cutsame/solution/template/model/DataTemplateList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .registers 1

    iget-boolean p0, p0, Lcom/cutsame/solution/template/model/DataTemplateList;->a:Z

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/cutsame/solution/template/model/DataTemplateList;->b:I

    return p0
.end method

.method public final component3()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/cutsame/solution/template/model/TemplateItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/cutsame/solution/template/model/DataTemplateList;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final copy(ZILjava/util/ArrayList;)Lcom/cutsame/solution/template/model/DataTemplateList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/ArrayList<",
            "Lcom/cutsame/solution/template/model/TemplateItem;",
            ">;)",
            "Lcom/cutsame/solution/template/model/DataTemplateList;"
        }
    .end annotation

    const-string p0, "templateList"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/cutsame/solution/template/model/DataTemplateList;

    invoke-direct {p0, p1, p2, p3}, Lcom/cutsame/solution/template/model/DataTemplateList;-><init>(ZILjava/util/ArrayList;)V

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
    instance-of v1, p1, Lcom/cutsame/solution/template/model/DataTemplateList;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/cutsame/solution/template/model/DataTemplateList;

    iget-boolean v1, p0, Lcom/cutsame/solution/template/model/DataTemplateList;->a:Z

    iget-boolean v3, p1, Lcom/cutsame/solution/template/model/DataTemplateList;->a:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/cutsame/solution/template/model/DataTemplateList;->b:I

    iget v3, p1, Lcom/cutsame/solution/template/model/DataTemplateList;->b:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-object p0, p0, Lcom/cutsame/solution/template/model/DataTemplateList;->c:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/cutsame/solution/template/model/DataTemplateList;->c:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    return v2

    :cond_25
    return v0
.end method

.method public final getHasMore()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/cutsame/solution/template/model/DataTemplateList;->a:Z

    return p0
.end method

.method public final getNextCursor()I
    .registers 1

    .line 1
    iget p0, p0, Lcom/cutsame/solution/template/model/DataTemplateList;->b:I

    return p0
.end method

.method public final getTemplateList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/cutsame/solution/template/model/TemplateItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/template/model/DataTemplateList;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget-boolean v0, p0, Lcom/cutsame/solution/template/model/DataTemplateList;->a:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :cond_5
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/cutsame/solution/template/model/DataTemplateList;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/cutsame/solution/template/model/DataTemplateList;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "DataTemplateList(hasMore="

    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cutsame/solution/template/model/DataTemplateList;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", nextCursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cutsame/solution/template/model/DataTemplateList;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", templateList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/cutsame/solution/template/model/DataTemplateList;->c:Ljava/util/ArrayList;

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

    iget-boolean v0, p0, Lcom/cutsame/solution/template/model/DataTemplateList;->a:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/cutsame/solution/template/model/DataTemplateList;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/cutsame/solution/template/model/DataTemplateList;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v0, :cond_2b

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/cutsame/solution/template/model/TemplateItem;

    invoke-virtual {v2, p1, p2}, Lcom/cutsame/solution/template/model/TemplateItem;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1d

    :cond_2b
    return-void
.end method
