.class public Lcom/transsion/camera/app/common/isphidl/BufferCacheItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mBuffer:[B

.field mHeight:I

.field mTimeStamp:J

.field mWidth:I


# direct methods
.method public constructor <init>([BIIJ)V
    .registers 6

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/transsion/camera/app/common/isphidl/BufferCacheItem;->mBuffer:[B

    .line 11
    iput p2, p0, Lcom/transsion/camera/app/common/isphidl/BufferCacheItem;->mWidth:I

    .line 12
    iput p3, p0, Lcom/transsion/camera/app/common/isphidl/BufferCacheItem;->mHeight:I

    .line 13
    iput-wide p4, p0, Lcom/transsion/camera/app/common/isphidl/BufferCacheItem;->mTimeStamp:J

    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/BufferCacheItem;->mBuffer:[B

    return-object p0
.end method

.method public getHeight()I
    .registers 1

    .line 26
    iget p0, p0, Lcom/transsion/camera/app/common/isphidl/BufferCacheItem;->mHeight:I

    return p0
.end method

.method public getTimeStamp()J
    .registers 3

    .line 30
    iget-wide v0, p0, Lcom/transsion/camera/app/common/isphidl/BufferCacheItem;->mTimeStamp:J

    return-wide v0
.end method

.method public getWidth()I
    .registers 1

    .line 22
    iget p0, p0, Lcom/transsion/camera/app/common/isphidl/BufferCacheItem;->mWidth:I

    return p0
.end method
