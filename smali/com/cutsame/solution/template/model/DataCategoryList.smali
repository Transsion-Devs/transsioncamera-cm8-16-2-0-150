.class public final Lcom/cutsame/solution/template/model/DataCategoryList;
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
            "Lcom/cutsame/solution/template/model/DataCategoryList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cutsame/solution/template/model/TemplateCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cutsame/solution/template/model/DataCategoryList$Creator;

    invoke-direct {v0}, Lcom/cutsame/solution/template/model/DataCategoryList$Creator;-><init>()V

    sput-object v0, Lcom/cutsame/solution/template/model/DataCategoryList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/cutsame/solution/template/model/DataCategoryList;-><init>(Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/cutsame/solution/template/model/TemplateCategory;",
            ">;)V"
        }
    .end annotation

    const-string v0, "templateCategory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/cutsame/solution/template/model/DataCategoryList;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_9

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_9
    invoke-direct {p0, p1}, Lcom/cutsame/solution/template/model/DataCategoryList;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cutsame/solution/template/model/DataCategoryList;Ljava/util/ArrayList;ILjava/lang/Object;)Lcom/cutsame/solution/template/model/DataCategoryList;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/cutsame/solution/template/model/DataCategoryList;->a:Ljava/util/ArrayList;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/cutsame/solution/template/model/DataCategoryList;->copy(Ljava/util/ArrayList;)Lcom/cutsame/solution/template/model/DataCategoryList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/cutsame/solution/template/model/TemplateCategory;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/cutsame/solution/template/model/DataCategoryList;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final copy(Ljava/util/ArrayList;)Lcom/cutsame/solution/template/model/DataCategoryList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/cutsame/solution/template/model/TemplateCategory;",
            ">;)",
            "Lcom/cutsame/solution/template/model/DataCategoryList;"
        }
    .end annotation

    const-string p0, "templateCategory"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/cutsame/solution/template/model/DataCategoryList;

    invoke-direct {p0, p1}, Lcom/cutsame/solution/template/model/DataCategoryList;-><init>(Ljava/util/ArrayList;)V

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
    instance-of v1, p1, Lcom/cutsame/solution/template/model/DataCategoryList;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/cutsame/solution/template/model/DataCategoryList;

    iget-object p0, p0, Lcom/cutsame/solution/template/model/DataCategoryList;->a:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/cutsame/solution/template/model/DataCategoryList;->a:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getTemplateCategory()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/cutsame/solution/template/model/TemplateCategory;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/template/model/DataCategoryList;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lcom/cutsame/solution/template/model/DataCategoryList;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "DataCategoryList(templateCategory="

    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/cutsame/solution/template/model/DataCategoryList;->a:Ljava/util/ArrayList;

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

    iget-object p0, p0, Lcom/cutsame/solution/template/model/DataCategoryList;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_21

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/cutsame/solution/template/model/TemplateCategory;

    invoke-virtual {v2, p1, p2}, Lcom/cutsame/solution/template/model/TemplateCategory;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_13

    :cond_21
    return-void
.end method
