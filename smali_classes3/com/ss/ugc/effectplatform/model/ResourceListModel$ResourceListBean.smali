.class public Lcom/ss/ugc/effectplatform/model/ResourceListModel$ResourceListBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ugc/effectplatform/model/ResourceListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceListBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/model/ResourceListModel$ResourceListBean$Creator;
    }
.end annotation

.annotation build Lkotlinx/android/parcel/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private name:Ljava/lang/String;

.field private resource_uri:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ss/ugc/effectplatform/model/ResourceListModel$ResourceListBean$Creator;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/model/ResourceListModel$ResourceListBean$Creator;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/model/ResourceListModel$ResourceListBean;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-direct/range {v0 .. v5}, Lcom/ss/ugc/effectplatform/model/ResourceListModel$ResourceListBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ResourceListModel$ResourceListBean;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/ResourceListModel$ResourceListBean;->value:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/ResourceListModel$ResourceListBean;->resource_uri:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_b

    move-object p2, v0

    :cond_b
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_10

    move-object p3, v0

    .line 25
    :cond_10
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/ugc/effectplatform/model/ResourceListModel$ResourceListBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/ResourceListModel$ResourceListBean;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getResource_uri()Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/ResourceListModel$ResourceListBean;->resource_uri:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/ResourceListModel$ResourceListBean;->value:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ResourceListModel$ResourceListBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setResource_uri(Ljava/lang/String;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ResourceListModel$ResourceListBean;->resource_uri:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ResourceListModel$ResourceListBean;->value:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ss/ugc/effectplatform/model/ResourceListModel$ResourceListBean;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ss/ugc/effectplatform/model/ResourceListModel$ResourceListBean;->value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/ResourceListModel$ResourceListBean;->resource_uri:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
