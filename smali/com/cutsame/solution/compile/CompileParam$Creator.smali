.class public final Lcom/cutsame/solution/compile/CompileParam$Creator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cutsame/solution/compile/CompileParam;
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/cutsame/solution/compile/CompileParam;
    .registers 8

    .line 0
    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cutsame/solution/compile/CompileParam;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/cutsame/solution/compile/ExportResolution;->valueOf(Ljava/lang/String;)Lcom/cutsame/solution/compile/ExportResolution;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    :goto_16
    move v2, p0

    goto :goto_1a

    :cond_18
    const/4 p0, 0x0

    goto :goto_16

    :goto_1a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/cutsame/solution/compile/CompileParam;-><init>(Lcom/cutsame/solution/compile/ExportResolution;ZIII)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/cutsame/solution/compile/CompileParam$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/cutsame/solution/compile/CompileParam;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lcom/cutsame/solution/compile/CompileParam;
    .registers 2

    .line 0
    new-array p0, p1, [Lcom/cutsame/solution/compile/CompileParam;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/cutsame/solution/compile/CompileParam$Creator;->newArray(I)[Lcom/cutsame/solution/compile/CompileParam;

    move-result-object p0

    return-object p0
.end method
