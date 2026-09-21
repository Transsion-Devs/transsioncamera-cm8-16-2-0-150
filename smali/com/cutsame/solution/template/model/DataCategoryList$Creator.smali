.class public final Lcom/cutsame/solution/template/model/DataCategoryList$Creator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cutsame/solution/template/model/DataCategoryList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/cutsame/solution/template/model/DataCategoryList;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/cutsame/solution/template/model/DataCategoryList;
    .registers 5

    .line 0
    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_f
    if-eq v1, p0, :cond_1d

    sget-object v2, Lcom/cutsame/solution/template/model/TemplateCategory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    new-instance p0, Lcom/cutsame/solution/template/model/DataCategoryList;

    invoke-direct {p0, v0}, Lcom/cutsame/solution/template/model/DataCategoryList;-><init>(Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/cutsame/solution/template/model/DataCategoryList$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/cutsame/solution/template/model/DataCategoryList;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lcom/cutsame/solution/template/model/DataCategoryList;
    .registers 2

    .line 0
    new-array p0, p1, [Lcom/cutsame/solution/template/model/DataCategoryList;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/cutsame/solution/template/model/DataCategoryList$Creator;->newArray(I)[Lcom/cutsame/solution/template/model/DataCategoryList;

    move-result-object p0

    return-object p0
.end method
