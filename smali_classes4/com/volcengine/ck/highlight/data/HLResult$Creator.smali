.class public final Lcom/volcengine/ck/highlight/data/HLResult$Creator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/volcengine/ck/highlight/data/HLResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/volcengine/ck/highlight/data/HLResult;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/volcengine/ck/highlight/data/HLResult;
    .registers 8

    .line 0
    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_1b
    if-eq v0, p0, :cond_29

    sget-object v5, Lcom/volcengine/ck/highlight/data/HLCategory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-nez p0, :cond_31

    const/4 p0, 0x0

    goto :goto_37

    :cond_31
    sget-object p0, Lcom/volcengine/ck/highlight/data/HLScore;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    :goto_37
    move-object v5, p0

    check-cast v5, Lcom/volcengine/ck/highlight/data/HLScore;

    new-instance v0, Lcom/volcengine/ck/highlight/data/HLResult;

    invoke-direct/range {v0 .. v5}, Lcom/volcengine/ck/highlight/data/HLResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/volcengine/ck/highlight/data/HLScore;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/volcengine/ck/highlight/data/HLResult$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/volcengine/ck/highlight/data/HLResult;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lcom/volcengine/ck/highlight/data/HLResult;
    .registers 2

    .line 0
    new-array p0, p1, [Lcom/volcengine/ck/highlight/data/HLResult;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/volcengine/ck/highlight/data/HLResult$Creator;->newArray(I)[Lcom/volcengine/ck/highlight/data/HLResult;

    move-result-object p0

    return-object p0
.end method
