.class public final Lcom/cutsame/solution/template/model/DataTemplateDetail;
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
            "Lcom/cutsame/solution/template/model/DataTemplateDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/ArrayList;
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

.field public final b:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "filtered_template_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cutsame/solution/template/model/FilteredTemplate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cutsame/solution/template/model/DataTemplateDetail$Creator;

    invoke-direct {v0}, Lcom/cutsame/solution/template/model/DataTemplateDetail$Creator;-><init>()V

    sput-object v0, Lcom/cutsame/solution/template/model/DataTemplateDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/cutsame/solution/template/model/DataTemplateDetail;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/cutsame/solution/template/model/TemplateItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/cutsame/solution/template/model/FilteredTemplate;",
            ">;)V"
        }
    .end annotation

    const-string v0, "templateList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filteredTemplateList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/cutsame/solution/template/model/DataTemplateDetail;->a:Ljava/util/ArrayList;

    .line 4
    iput-object p2, p0, Lcom/cutsame/solution/template/model/DataTemplateDetail;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_9

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_12

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :cond_12
    invoke-direct {p0, p1, p2}, Lcom/cutsame/solution/template/model/DataTemplateDetail;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cutsame/solution/template/model/DataTemplateDetail;Ljava/util/ArrayList;Ljava/util/ArrayList;ILjava/lang/Object;)Lcom/cutsame/solution/template/model/DataTemplateDetail;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/cutsame/solution/template/model/DataTemplateDetail;->a:Ljava/util/ArrayList;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/cutsame/solution/template/model/DataTemplateDetail;->b:Ljava/util/ArrayList;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/cutsame/solution/template/model/DataTemplateDetail;->copy(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/cutsame/solution/template/model/DataTemplateDetail;

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
            "Lcom/cutsame/solution/template/model/TemplateItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/cutsame/solution/template/model/DataTemplateDetail;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final component2()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/cutsame/solution/template/model/FilteredTemplate;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/cutsame/solution/template/model/DataTemplateDetail;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final copy(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/cutsame/solution/template/model/DataTemplateDetail;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/cutsame/solution/template/model/TemplateItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/cutsame/solution/template/model/FilteredTemplate;",
            ">;)",
            "Lcom/cutsame/solution/template/model/DataTemplateDetail;"
        }
    .end annotation

    const-string p0, "templateList"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "filteredTemplateList"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/cutsame/solution/template/model/DataTemplateDetail;

    invoke-direct {p0, p1, p2}, Lcom/cutsame/solution/template/model/DataTemplateDetail;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

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
    instance-of v1, p1, Lcom/cutsame/solution/template/model/DataTemplateDetail;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/cutsame/solution/template/model/DataTemplateDetail;

    iget-object v1, p0, Lcom/cutsame/solution/template/model/DataTemplateDetail;->a:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/cutsame/solution/template/model/DataTemplateDetail;->a:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object p0, p0, Lcom/cutsame/solution/template/model/DataTemplateDetail;->b:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/cutsame/solution/template/model/DataTemplateDetail;->b:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getFilteredTemplateList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/cutsame/solution/template/model/FilteredTemplate;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/template/model/DataTemplateDetail;->b:Ljava/util/ArrayList;

    return-object p0
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
    iget-object p0, p0, Lcom/cutsame/solution/template/model/DataTemplateDetail;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/cutsame/solution/template/model/DataTemplateDetail;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/cutsame/solution/template/model/DataTemplateDetail;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "DataTemplateDetail(templateList="

    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cutsame/solution/template/model/DataTemplateDetail;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filteredTemplateList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/cutsame/solution/template/model/DataTemplateDetail;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cutsame/solution/template/model/DataTemplateDetail;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, v1, :cond_22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/cutsame/solution/template/model/TemplateItem;

    invoke-virtual {v4, p1, p2}, Lcom/cutsame/solution/template/model/TemplateItem;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_14

    :cond_22
    iget-object p0, p0, Lcom/cutsame/solution/template/model/DataTemplateDetail;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2f
    if-ge v2, v0, :cond_3d

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/cutsame/solution/template/model/FilteredTemplate;

    invoke-virtual {v1, p1, p2}, Lcom/cutsame/solution/template/model/FilteredTemplate;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2f

    :cond_3d
    return-void
.end method
