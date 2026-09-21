.class public final Lcom/cutsame/solution/source/SourceInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cutsame/solution/source/SourceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lcom/cutsame/solution/source/CacheConfig;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cutsame/solution/source/SourceInfo$Creator;

    invoke-direct {v0}, Lcom/cutsame/solution/source/SourceInfo$Creator;-><init>()V

    sput-object v0, Lcom/cutsame/solution/source/SourceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/cutsame/solution/source/CacheConfig;)V
    .registers 8

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "md5"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "zipPath"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unzipPath"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheConfig"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/cutsame/solution/source/SourceInfo;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/cutsame/solution/source/SourceInfo;->b:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/cutsame/solution/source/SourceInfo;->c:I

    .line 6
    iput-object p4, p0, Lcom/cutsame/solution/source/SourceInfo;->d:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/cutsame/solution/source/SourceInfo;->e:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/cutsame/solution/source/SourceInfo;->f:Lcom/cutsame/solution/source/CacheConfig;

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
    instance-of v1, p1, Lcom/cutsame/solution/source/SourceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/cutsame/solution/source/SourceInfo;

    iget-object v1, p0, Lcom/cutsame/solution/source/SourceInfo;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/cutsame/solution/source/SourceInfo;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/cutsame/solution/source/SourceInfo;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/cutsame/solution/source/SourceInfo;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget v1, p0, Lcom/cutsame/solution/source/SourceInfo;->c:I

    iget v3, p1, Lcom/cutsame/solution/source/SourceInfo;->c:I

    if-eq v1, v3, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/cutsame/solution/source/SourceInfo;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/cutsame/solution/source/SourceInfo;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lcom/cutsame/solution/source/SourceInfo;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/cutsame/solution/source/SourceInfo;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    :cond_3f
    iget-object p0, p0, Lcom/cutsame/solution/source/SourceInfo;->f:Lcom/cutsame/solution/source/CacheConfig;

    iget-object p1, p1, Lcom/cutsame/solution/source/SourceInfo;->f:Lcom/cutsame/solution/source/CacheConfig;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4a

    return v2

    :cond_4a
    return v0
.end method

.method public final getCacheConfig()Lcom/cutsame/solution/source/CacheConfig;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/source/SourceInfo;->f:Lcom/cutsame/solution/source/CacheConfig;

    return-object p0
.end method

.method public final getMd5()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/source/SourceInfo;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getTemplateType()I
    .registers 1

    .line 1
    iget p0, p0, Lcom/cutsame/solution/source/SourceInfo;->c:I

    return p0
.end method

.method public final getUnzipPath()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/source/SourceInfo;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/source/SourceInfo;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getZipPath()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/source/SourceInfo;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final hasUnzip()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/cutsame/solution/source/SourceInfo;->e:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/cutsame/solution/source/SourceInfo;->e:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/cutsame/solution/source/SourceInfo;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/cutsame/solution/source/SourceInfo;->b:Ljava/lang/String;

    invoke-static {v2, v0, v1}, La/a/a/a/a;->a(Ljava/lang/String;II)I

    move-result v0

    iget v2, p0, Lcom/cutsame/solution/source/SourceInfo;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/cutsame/solution/source/SourceInfo;->d:Ljava/lang/String;

    invoke-static {v0, v2, v1}, La/a/a/a/a;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lcom/cutsame/solution/source/SourceInfo;->e:Ljava/lang/String;

    invoke-static {v2, v0, v1}, La/a/a/a/a;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object p0, p0, Lcom/cutsame/solution/source/SourceInfo;->f:Lcom/cutsame/solution/source/CacheConfig;

    invoke-virtual {p0}, Lcom/cutsame/solution/source/CacheConfig;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final isNLETemplate()Z
    .registers 2

    .line 1
    iget p0, p0, Lcom/cutsame/solution/source/SourceInfo;->c:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final isOfflineModel()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/cutsame/solution/source/SourceInfo;->d:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/cutsame/solution/source/SourceInfo;->e:Ljava/lang/String;

    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "{\"url\":\""

    .line 1
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/cutsame/solution/source/SourceInfo;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"md5\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lcom/cutsame/solution/source/SourceInfo;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"template_type\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget v1, p0, Lcom/cutsame/solution/source/SourceInfo;->c:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\",\"zipPath\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object v1, p0, Lcom/cutsame/solution/source/SourceInfo;->d:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"unzipPath\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object p0, p0, Lcom/cutsame/solution/source/SourceInfo;->e:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cutsame/solution/source/SourceInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cutsame/solution/source/SourceInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/cutsame/solution/source/SourceInfo;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/cutsame/solution/source/SourceInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cutsame/solution/source/SourceInfo;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cutsame/solution/source/SourceInfo;->f:Lcom/cutsame/solution/source/CacheConfig;

    invoke-virtual {p0, p1, p2}, Lcom/cutsame/solution/source/CacheConfig;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
