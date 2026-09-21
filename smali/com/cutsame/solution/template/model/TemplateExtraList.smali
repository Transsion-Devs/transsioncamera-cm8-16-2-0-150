.class public final Lcom/cutsame/solution/template/model/TemplateExtraList;
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
            "Lcom/cutsame/solution/template/model/TemplateExtraList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fragments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cutsame/solution/template/model/TemplateExtra;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "align_mode"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cutsame/solution/template/model/TemplateExtraList$Creator;

    invoke-direct {v0}, Lcom/cutsame/solution/template/model/TemplateExtraList$Creator;-><init>()V

    sput-object v0, Lcom/cutsame/solution/template/model/TemplateExtraList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cutsame/solution/template/model/TemplateExtra;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "align_mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/cutsame/solution/template/model/TemplateExtraList;->a:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lcom/cutsame/solution/template/model/TemplateExtraList;->b:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/cutsame/solution/template/model/TemplateExtraList;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lcom/cutsame/solution/template/model/TemplateExtraList;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/cutsame/solution/template/model/TemplateExtraList;->a:Ljava/util/List;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/cutsame/solution/template/model/TemplateExtraList;->b:Ljava/lang/String;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/cutsame/solution/template/model/TemplateExtraList;->copy(Ljava/util/List;Ljava/lang/String;)Lcom/cutsame/solution/template/model/TemplateExtraList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cutsame/solution/template/model/TemplateExtra;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateExtraList;->a:Ljava/util/List;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateExtraList;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/util/List;Ljava/lang/String;)Lcom/cutsame/solution/template/model/TemplateExtraList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cutsame/solution/template/model/TemplateExtra;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cutsame/solution/template/model/TemplateExtraList;"
        }
    .end annotation

    const-string p0, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "align_mode"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/cutsame/solution/template/model/TemplateExtraList;

    invoke-direct {p0, p1, p2}, Lcom/cutsame/solution/template/model/TemplateExtraList;-><init>(Ljava/util/List;Ljava/lang/String;)V

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
    instance-of v1, p1, Lcom/cutsame/solution/template/model/TemplateExtraList;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/cutsame/solution/template/model/TemplateExtraList;

    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateExtraList;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/cutsame/solution/template/model/TemplateExtraList;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateExtraList;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/cutsame/solution/template/model/TemplateExtraList;->b:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getAlign_mode()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateExtraList;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cutsame/solution/template/model/TemplateExtra;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateExtraList;->a:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/cutsame/solution/template/model/TemplateExtraList;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateExtraList;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "TemplateExtraList(list="

    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateExtraList;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", align_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateExtraList;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-object v0, p0, Lcom/cutsame/solution/template/model/TemplateExtraList;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cutsame/solution/template/model/TemplateExtra;

    invoke-virtual {v1, p1, p2}, Lcom/cutsame/solution/template/model/TemplateExtra;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    :cond_22
    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateExtraList;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
