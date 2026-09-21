.class public final Lcom/cutsame/solution/compile/CompileParam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cutsame/solution/compile/CompileParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/cutsame/solution/compile/ExportResolution;

.field public final b:Z

.field public final c:I

.field public final d:I

.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cutsame/solution/compile/CompileParam$Creator;

    invoke-direct {v0}, Lcom/cutsame/solution/compile/CompileParam$Creator;-><init>()V

    sput-object v0, Lcom/cutsame/solution/compile/CompileParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/cutsame/solution/compile/ExportResolution;ZIII)V
    .registers 7

    const-string v0, "resolution"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/cutsame/solution/compile/CompileParam;->a:Lcom/cutsame/solution/compile/ExportResolution;

    .line 3
    iput-boolean p2, p0, Lcom/cutsame/solution/compile/CompileParam;->b:Z

    .line 4
    iput p3, p0, Lcom/cutsame/solution/compile/CompileParam;->c:I

    .line 5
    iput p4, p0, Lcom/cutsame/solution/compile/CompileParam;->d:I

    .line 6
    iput p5, p0, Lcom/cutsame/solution/compile/CompileParam;->e:I

    return-void
.end method


# virtual methods
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
    instance-of v1, p1, Lcom/cutsame/solution/compile/CompileParam;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/cutsame/solution/compile/CompileParam;

    iget-object v1, p0, Lcom/cutsame/solution/compile/CompileParam;->a:Lcom/cutsame/solution/compile/ExportResolution;

    iget-object v3, p1, Lcom/cutsame/solution/compile/CompileParam;->a:Lcom/cutsame/solution/compile/ExportResolution;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-boolean v1, p0, Lcom/cutsame/solution/compile/CompileParam;->b:Z

    iget-boolean v3, p1, Lcom/cutsame/solution/compile/CompileParam;->b:Z

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lcom/cutsame/solution/compile/CompileParam;->c:I

    iget v3, p1, Lcom/cutsame/solution/compile/CompileParam;->c:I

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget v1, p0, Lcom/cutsame/solution/compile/CompileParam;->d:I

    iget v3, p1, Lcom/cutsame/solution/compile/CompileParam;->d:I

    if-eq v1, v3, :cond_28

    return v2

    :cond_28
    iget p0, p0, Lcom/cutsame/solution/compile/CompileParam;->e:I

    iget p1, p1, Lcom/cutsame/solution/compile/CompileParam;->e:I

    if-eq p0, p1, :cond_2f

    return v2

    :cond_2f
    return v0
.end method

.method public final getBps()I
    .registers 1

    .line 1
    iget p0, p0, Lcom/cutsame/solution/compile/CompileParam;->c:I

    return p0
.end method

.method public final getFps()I
    .registers 1

    .line 1
    iget p0, p0, Lcom/cutsame/solution/compile/CompileParam;->d:I

    return p0
.end method

.method public final getGopSize()I
    .registers 1

    .line 1
    iget p0, p0, Lcom/cutsame/solution/compile/CompileParam;->e:I

    return p0
.end method

.method public final getResolution()Lcom/cutsame/solution/compile/ExportResolution;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/compile/CompileParam;->a:Lcom/cutsame/solution/compile/ExportResolution;

    return-object p0
.end method

.method public final getSupportHwEncoder()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/cutsame/solution/compile/CompileParam;->b:Z

    return p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/cutsame/solution/compile/CompileParam;->a:Lcom/cutsame/solution/compile/ExportResolution;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/cutsame/solution/compile/CompileParam;->b:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    :cond_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/cutsame/solution/compile/CompileParam;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/cutsame/solution/compile/CompileParam;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/cutsame/solution/compile/CompileParam;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "CompileParam(resolution="

    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cutsame/solution/compile/CompileParam;->a:Lcom/cutsame/solution/compile/ExportResolution;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", supportHwEncoder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cutsame/solution/compile/CompileParam;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cutsame/solution/compile/CompileParam;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cutsame/solution/compile/CompileParam;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gopSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/cutsame/solution/compile/CompileParam;->e:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cutsame/solution/compile/CompileParam;->a:Lcom/cutsame/solution/compile/ExportResolution;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/cutsame/solution/compile/CompileParam;->b:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cutsame/solution/compile/CompileParam;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cutsame/solution/compile/CompileParam;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/cutsame/solution/compile/CompileParam;->e:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
