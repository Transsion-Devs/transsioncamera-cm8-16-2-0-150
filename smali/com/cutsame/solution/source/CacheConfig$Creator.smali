.class public final Lcom/cutsame/solution/source/CacheConfig$Creator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cutsame/solution/source/CacheConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/cutsame/solution/source/CacheConfig;
    .registers 2

    .line 0
    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/cutsame/solution/source/CacheConfig;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    invoke-direct {p0, p1}, Lcom/cutsame/solution/source/CacheConfig;-><init>(Z)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/cutsame/solution/source/CacheConfig$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/cutsame/solution/source/CacheConfig;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lcom/cutsame/solution/source/CacheConfig;
    .registers 2

    .line 0
    new-array p0, p1, [Lcom/cutsame/solution/source/CacheConfig;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/cutsame/solution/source/CacheConfig$Creator;->newArray(I)[Lcom/cutsame/solution/source/CacheConfig;

    move-result-object p0

    return-object p0
.end method
