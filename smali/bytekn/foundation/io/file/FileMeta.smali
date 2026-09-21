.class public final Lbytekn/foundation/io/file/FileMeta;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final absolutePath:Lbytekn/foundation/io/file/FilePathComponent;

.field private final canonicalPath:Lbytekn/foundation/io/file/FilePathComponent;

.field private final createdAt:Ljava/lang/Double;

.field private final modifiedAt:Ljava/lang/Double;

.field private final name:Ljava/lang/String;

.field private final size:Ljava/lang/Long;

.field private final type:Lbytekn/foundation/io/file/FileType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lbytekn/foundation/io/file/FilePathComponent;Lbytekn/foundation/io/file/FilePathComponent;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Long;Lbytekn/foundation/io/file/FileType;)V
    .registers 9

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "absolutePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "canonicalPath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbytekn/foundation/io/file/FileMeta;->name:Ljava/lang/String;

    iput-object p2, p0, Lbytekn/foundation/io/file/FileMeta;->absolutePath:Lbytekn/foundation/io/file/FilePathComponent;

    iput-object p3, p0, Lbytekn/foundation/io/file/FileMeta;->canonicalPath:Lbytekn/foundation/io/file/FilePathComponent;

    iput-object p4, p0, Lbytekn/foundation/io/file/FileMeta;->createdAt:Ljava/lang/Double;

    iput-object p5, p0, Lbytekn/foundation/io/file/FileMeta;->modifiedAt:Ljava/lang/Double;

    iput-object p6, p0, Lbytekn/foundation/io/file/FileMeta;->size:Ljava/lang/Long;

    iput-object p7, p0, Lbytekn/foundation/io/file/FileMeta;->type:Lbytekn/foundation/io/file/FileType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_51

    instance-of v0, p1, Lbytekn/foundation/io/file/FileMeta;

    if-eqz v0, :cond_4f

    check-cast p1, Lbytekn/foundation/io/file/FileMeta;

    iget-object v0, p0, Lbytekn/foundation/io/file/FileMeta;->name:Ljava/lang/String;

    iget-object v1, p1, Lbytekn/foundation/io/file/FileMeta;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lbytekn/foundation/io/file/FileMeta;->absolutePath:Lbytekn/foundation/io/file/FilePathComponent;

    iget-object v1, p1, Lbytekn/foundation/io/file/FileMeta;->absolutePath:Lbytekn/foundation/io/file/FilePathComponent;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lbytekn/foundation/io/file/FileMeta;->canonicalPath:Lbytekn/foundation/io/file/FilePathComponent;

    iget-object v1, p1, Lbytekn/foundation/io/file/FileMeta;->canonicalPath:Lbytekn/foundation/io/file/FilePathComponent;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lbytekn/foundation/io/file/FileMeta;->createdAt:Ljava/lang/Double;

    iget-object v1, p1, Lbytekn/foundation/io/file/FileMeta;->createdAt:Ljava/lang/Double;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lbytekn/foundation/io/file/FileMeta;->modifiedAt:Ljava/lang/Double;

    iget-object v1, p1, Lbytekn/foundation/io/file/FileMeta;->modifiedAt:Ljava/lang/Double;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lbytekn/foundation/io/file/FileMeta;->size:Ljava/lang/Long;

    iget-object v1, p1, Lbytekn/foundation/io/file/FileMeta;->size:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object p0, p0, Lbytekn/foundation/io/file/FileMeta;->type:Lbytekn/foundation/io/file/FileType;

    iget-object p1, p1, Lbytekn/foundation/io/file/FileMeta;->type:Lbytekn/foundation/io/file/FileType;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4f

    goto :goto_51

    :cond_4f
    const/4 p0, 0x0

    return p0

    :cond_51
    :goto_51
    const/4 p0, 0x1

    return p0
.end method

.method public final getAbsolutePath()Lbytekn/foundation/io/file/FilePathComponent;
    .registers 1

    .line 36
    iget-object p0, p0, Lbytekn/foundation/io/file/FileMeta;->absolutePath:Lbytekn/foundation/io/file/FilePathComponent;

    return-object p0
.end method

.method public final getSize()Ljava/lang/Long;
    .registers 1

    .line 57
    iget-object p0, p0, Lbytekn/foundation/io/file/FileMeta;->size:Ljava/lang/Long;

    return-object p0
.end method

.method public final getType()Lbytekn/foundation/io/file/FileType;
    .registers 1

    .line 62
    iget-object p0, p0, Lbytekn/foundation/io/file/FileMeta;->type:Lbytekn/foundation/io/file/FileType;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lbytekn/foundation/io/file/FileMeta;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lbytekn/foundation/io/file/FileMeta;->absolutePath:Lbytekn/foundation/io/file/FilePathComponent;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lbytekn/foundation/io/file/FileMeta;->canonicalPath:Lbytekn/foundation/io/file/FilePathComponent;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_23
    move v2, v1

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lbytekn/foundation/io/file/FileMeta;->createdAt:Ljava/lang/Double;

    if-eqz v2, :cond_30

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_31

    :cond_30
    move v2, v1

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lbytekn/foundation/io/file/FileMeta;->modifiedAt:Ljava/lang/Double;

    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3e

    :cond_3d
    move v2, v1

    :goto_3e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lbytekn/foundation/io/file/FileMeta;->size:Ljava/lang/Long;

    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4b

    :cond_4a
    move v2, v1

    :goto_4b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lbytekn/foundation/io/file/FileMeta;->type:Lbytekn/foundation/io/file/FileType;

    if-eqz p0, :cond_56

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_56
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileMeta(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbytekn/foundation/io/file/FileMeta;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", absolutePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbytekn/foundation/io/file/FileMeta;->absolutePath:Lbytekn/foundation/io/file/FilePathComponent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", canonicalPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbytekn/foundation/io/file/FileMeta;->canonicalPath:Lbytekn/foundation/io/file/FilePathComponent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbytekn/foundation/io/file/FileMeta;->createdAt:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", modifiedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbytekn/foundation/io/file/FileMeta;->modifiedAt:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbytekn/foundation/io/file/FileMeta;->size:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lbytekn/foundation/io/file/FileMeta;->type:Lbytekn/foundation/io/file/FileType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
