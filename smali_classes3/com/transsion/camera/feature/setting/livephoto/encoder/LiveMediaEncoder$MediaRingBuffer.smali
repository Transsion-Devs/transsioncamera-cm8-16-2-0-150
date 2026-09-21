.class public final Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaRingBuffer"
.end annotation


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field public final mDataBuffer:[B

.field public mMetaHead:I

.field public mMetaTail:I

.field public final mPacketFlags:[I

.field public final mPacketLength:[I

.field public final mPacketPtsUs:[J

.field public final mPacketStart:[I

.field public final mPhotoTaskDataResults:[Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 82
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MediaRingBuffer"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaFormat;J)V
    .registers 10

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_62

    .line 95
    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 97
    const-string v1, "bitrate"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    mul-long/2addr v2, p2

    const-wide/16 p2, 0x1f40

    .line 98
    div-long/2addr v2, p2

    long-to-int p2, v2

    .line 99
    new-array p3, p2, [B

    iput-object p3, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mDataBuffer:[B

    .line 101
    const-string/jumbo p3, "video"

    invoke-virtual {v0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2e

    .line 102
    const-string p3, "frame-rate"

    invoke-virtual {p1, p3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    int-to-double v2, p1

    goto :goto_38

    .line 104
    :cond_2e
    const-string p3, "sample-rate"

    invoke-virtual {p1, p3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    int-to-double v2, p1

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr v2, v4

    :goto_38
    int-to-double p1, p2

    int-to-double v0, v1

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p1, v0

    double-to-int p1, p1

    mul-int/lit8 p1, p1, 0x2

    .line 108
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mPacketFlags:[I

    .line 109
    new-array p2, p1, [J

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mPacketPtsUs:[J

    .line 110
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mPacketStart:[I

    .line 111
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mPacketLength:[I

    .line 112
    new-array p1, p1, [Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mPhotoTaskDataResults:[Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    return-void

    .line 115
    :cond_5a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mimeType is not specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 117
    :cond_62
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mediaFormat is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private canAdd(I)Z
    .registers 9

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mDataBuffer:[B

    array-length v0, v0

    .line 122
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mPacketStart:[I

    array-length v1, v1

    const/4 v2, 0x0

    if-gt p1, v0, :cond_a4

    .line 124
    iget v3, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mMetaHead:I

    iget v4, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mMetaTail:I

    const/4 v5, 0x1

    if-ne v3, v4, :cond_11

    return v5

    :cond_11
    add-int/2addr v3, v5

    .line 127
    rem-int/2addr v3, v1

    if-ne v3, v4, :cond_38

    .line 128
    sget-object p1, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canAdd, head: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mMetaHead:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mMetaTail:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 131
    :cond_38
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->getHeadStart()I

    move-result v3

    .line 132
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mPacketStart:[I

    iget v6, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mMetaTail:I

    aget v4, v4, v6

    add-int v6, v4, v0

    sub-int/2addr v6, v3

    .line 133
    rem-int/2addr v6, v0

    .line 134
    const-string v0, ", freeDataSpace: "

    if-le p1, v6, :cond_77

    .line 135
    sget-object p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canAdd, tailStart: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", headStart: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", limit="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 139
    :cond_77
    sget-object v2, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canAdd, limit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", metaFree: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mMetaTail:I

    add-int/2addr p1, v1

    iget p0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mMetaHead:I

    sub-int/2addr p1, p0

    rem-int/2addr p1, v1

    sub-int/2addr p1, v5

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v5

    :cond_a4
    return v2
.end method

.method private getHeadStart()I
    .registers 4

    .line 148
    iget v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mMetaHead:I

    iget v1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mMetaTail:I

    if-ne v0, v1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 151
    :cond_8
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mPacketStart:[I

    array-length v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    array-length v2, v1

    rem-int/2addr v0, v2

    .line 152
    aget v1, v1, v0

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mPacketLength:[I

    aget v0, v2, v0

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mDataBuffer:[B

    array-length p0, p0

    rem-int/2addr v1, p0

    return v1
.end method

.method private removeTail()V
    .registers 3

    .line 157
    iget v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mMetaHead:I

    iget v1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mMetaTail:I

    if-eq v0, v1, :cond_e

    add-int/lit8 v1, v1, 0x1

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mPacketStart:[I

    array-length v0, v0

    rem-int/2addr v1, v0

    iput v1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mMetaTail:I

    :cond_e
    return-void
.end method


# virtual methods
.method public add(Ljava/nio/ByteBuffer;IJLcom/transsion/camera/app/common/livephoto/PhotoTaskData;)V
    .registers 12

    .line 164
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    .line 165
    sget-object v1, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add, limit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", flags=0x: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 168
    :goto_33
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->canAdd(I)Z

    move-result v1

    if-nez v1, :cond_44

    .line 169
    sget-object v1, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "add, cached buffer removed from tail"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->removeTail()V

    goto :goto_33

    .line 172
    :cond_44
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mDataBuffer:[B

    array-length v1, v1

    .line 173
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mPacketStart:[I

    array-length v2, v2

    .line 174
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->getHeadStart()I

    move-result v3

    .line 175
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mPacketFlags:[I

    iget v5, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mMetaHead:I

    aput p2, v4, v5

    .line 176
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mPacketPtsUs:[J

    aput-wide p3, p2, v5

    .line 177
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mPacketStart:[I

    aput v3, p2, v5

    .line 178
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mPacketLength:[I

    aput v0, p2, v5

    .line 179
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mPhotoTaskDataResults:[Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    aput-object p5, p2, v5

    add-int p2, v3, v0

    if-ge p2, v1, :cond_6e

    .line 181
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mDataBuffer:[B

    invoke-virtual {p1, p2, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_99

    :cond_6e
    sub-int/2addr v1, v3

    .line 184
    sget-object p2, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "add, firstSize: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", limit: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 185
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mDataBuffer:[B

    invoke-virtual {p1, p2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 186
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mDataBuffer:[B

    const/4 p3, 0x0

    sub-int/2addr v0, v1

    invoke-virtual {p1, p2, p3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 188
    :goto_99
    iget p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mMetaHead:I

    add-int/lit8 p1, p1, 0x1

    rem-int/2addr p1, v2

    iput p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mMetaHead:I

    return-void
.end method

.method public clear()V
    .registers 5

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mDataBuffer:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mPacketFlags:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mPacketPtsUs:[J

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mPacketStart:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mPacketLength:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mPhotoTaskDataResults:[Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 198
    iput v1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mMetaHead:I

    .line 199
    iput v1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mMetaTail:I

    return-void
.end method

.method public getChunk(ILandroid/media/MediaCodec$BufferInfo;)Ljava/nio/ByteBuffer;
    .registers 9

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mDataBuffer:[B

    array-length v0, v0

    .line 204
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mPacketStart:[I

    aget v1, v1, p1

    .line 205
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mPacketLength:[I

    aget v2, v2, p1

    .line 206
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mPacketFlags:[I

    aget v3, v3, p1

    iput v3, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 207
    iput v1, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 208
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mPacketPtsUs:[J

    aget-wide v3, v3, p1

    iput-wide v3, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 209
    iput v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int v3, v1, v2

    const/4 v4, 0x0

    if-gt v3, v0, :cond_2c

    .line 212
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 213
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mDataBuffer:[B

    invoke-virtual {p1, p0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 214
    iput v4, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    return-object p1

    .line 217
    :cond_2c
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sub-int/2addr v0, v1

    .line 219
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mDataBuffer:[B

    iget-object v5, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mPacketStart:[I

    aget p1, v5, p1

    invoke-virtual {v3, v1, p1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 220
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mDataBuffer:[B

    sub-int/2addr v2, v0

    invoke-virtual {v3, p0, v4, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 221
    iput v4, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    return-object v3
.end method

.method public getFirstIndex()I
    .registers 2

    .line 226
    iget v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mMetaTail:I

    iget p0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mMetaHead:I

    if-ne v0, p0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    return v0
.end method

.method public getNextIndex(I)I
    .registers 3

    add-int/lit8 p1, p1, 0x1

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mPacketStart:[I

    array-length v0, v0

    rem-int/2addr p1, v0

    .line 234
    iget p0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mMetaHead:I

    if-ne p1, p0, :cond_c

    const/4 p0, -0x1

    return p0

    :cond_c
    return p1
.end method

.method public getPhotoTaskData(I)Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;
    .registers 2

    .line 241
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->mPhotoTaskDataResults:[Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    aget-object p0, p0, p1

    return-object p0
.end method
