.class public Lcom/transsion/camera/utils/PictureDataMerger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 12
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PictureDataMerger"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/PictureDataMerger;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appendPicture(Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;)[B
    .registers 7

    .line 19
    invoke-virtual {p1}, Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;->getAppendingBytes()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_ab

    invoke-virtual {p1}, Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;->getAppendingBytes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_12

    goto/16 :goto_ab

    .line 24
    :cond_12
    invoke-virtual {p1}, Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 25
    sget-object v0, Lcom/transsion/camera/utils/PictureDataMerger;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appendPicture, info str:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;->getOriginalBytes()[B

    move-result-object v0

    array-length v0, v0

    .line 29
    invoke-virtual {p1}, Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;->getAppendingBytes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 30
    array-length v2, v2

    add-int/2addr v0, v2

    goto :goto_3d

    .line 32
    :cond_4c
    array-length v1, p0

    add-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    .line 35
    new-array v0, v0, [B

    .line 36
    invoke-virtual {p1}, Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;->getOriginalBytes()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;->getOriginalBytes()[B

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    invoke-virtual {p1}, Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;->getOriginalBytes()[B

    move-result-object v1

    array-length v1, v1

    .line 39
    invoke-virtual {p1}, Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;->getAppendingBytes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 40
    array-length v4, v2

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    array-length v2, v2

    add-int/2addr v1, v2

    goto :goto_6c

    .line 45
    :cond_7f
    array-length p1, p0

    invoke-static {p0, v3, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    array-length p1, p0

    add-int/2addr v1, p1

    const/4 p1, 0x4

    .line 48
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    array-length p0, p0

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    .line 49
    array-length v2, p0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, p1

    const/4 p0, 0x2

    .line 52
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/16 v2, -0x5545

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 53
    invoke-static {p1, v3, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 20
    :cond_ab
    :goto_ab
    sget-object p0, Lcom/transsion/camera/utils/PictureDataMerger;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "appendPicture, no appending bytes, return original bytes."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;->getOriginalBytes()[B

    move-result-object p0

    return-object p0
.end method
