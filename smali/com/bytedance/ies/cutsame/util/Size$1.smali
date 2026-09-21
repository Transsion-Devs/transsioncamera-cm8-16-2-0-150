.class final Lcom/bytedance/ies/cutsame/util/Size$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/cutsame/util/Size;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/bytedance/ies/cutsame/util/Size;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/bytedance/ies/cutsame/util/Size;
    .registers 2

    .line 33
    new-instance p0, Lcom/bytedance/ies/cutsame/util/Size;

    invoke-direct {p0, p1}, Lcom/bytedance/ies/cutsame/util/Size;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 30
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/util/Size$1;->createFromParcel(Landroid/os/Parcel;)Lcom/bytedance/ies/cutsame/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/bytedance/ies/cutsame/util/Size;
    .registers 2

    .line 38
    new-array p0, p1, [Lcom/bytedance/ies/cutsame/util/Size;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 30
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/util/Size$1;->newArray(I)[Lcom/bytedance/ies/cutsame/util/Size;

    move-result-object p0

    return-object p0
.end method
