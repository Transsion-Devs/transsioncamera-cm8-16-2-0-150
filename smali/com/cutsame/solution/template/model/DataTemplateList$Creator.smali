.class public final Lcom/cutsame/solution/template/model/DataTemplateList$Creator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cutsame/solution/template/model/DataTemplateList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/cutsame/solution/template/model/DataTemplateList;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/cutsame/solution/template/model/DataTemplateList;
    .registers 7

    .line 0
    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    move p0, v0

    :goto_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1c
    if-eq v0, v2, :cond_2a

    sget-object v4, Lcom/cutsame/solution/template/model/TemplateItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_2a
    new-instance p1, Lcom/cutsame/solution/template/model/DataTemplateList;

    invoke-direct {p1, p0, v1, v3}, Lcom/cutsame/solution/template/model/DataTemplateList;-><init>(ZILjava/util/ArrayList;)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/cutsame/solution/template/model/DataTemplateList$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/cutsame/solution/template/model/DataTemplateList;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lcom/cutsame/solution/template/model/DataTemplateList;
    .registers 2

    .line 0
    new-array p0, p1, [Lcom/cutsame/solution/template/model/DataTemplateList;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/cutsame/solution/template/model/DataTemplateList$Creator;->newArray(I)[Lcom/cutsame/solution/template/model/DataTemplateList;

    move-result-object p0

    return-object p0
.end method
