.class Lcom/transsion/camera/utils/exif/ExifOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mByteToCopy:I

.field private mByteToSkip:I

.field private mExifData:Lcom/transsion/camera/utils/exif/ExifData;

.field private final mInterface:Lcom/transsion/camera/utils/exif/ExifInterface;

.field private mSingleByteArray:[B

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 62
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ExifOutputStream"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method protected constructor <init>(Ljava/io/OutputStream;Lcom/transsion/camera/utils/exif/ExifInterface;)V
    .registers 5

    .line 87
    new-instance v0, Ljava/io/BufferedOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    .line 79
    iput p1, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mState:I

    const/4 p1, 0x1

    .line 82
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mSingleByteArray:[B

    const/4 p1, 0x4

    .line 83
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    .line 88
    iput-object p2, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mInterface:Lcom/transsion/camera/utils/exif/ExifInterface;

    return-void
.end method

.method private calculateAllOffset()I
    .registers 7

    .line 440
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/exif/ExifData;->getIfdData(I)Lcom/transsion/camera/utils/exif/IfdData;

    move-result-object v0

    const/16 v2, 0x8

    .line 441
    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/utils/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/transsion/camera/utils/exif/IfdData;I)I

    move-result v2

    .line 442
    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    invoke-virtual {v0, v3}, Lcom/transsion/camera/utils/exif/IfdData;->getTag(S)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue(I)Z

    .line 444
    iget-object v3, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/transsion/camera/utils/exif/ExifData;->getIfdData(I)Lcom/transsion/camera/utils/exif/IfdData;

    move-result-object v3

    .line 445
    invoke-direct {p0, v3, v2}, Lcom/transsion/camera/utils/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/transsion/camera/utils/exif/IfdData;I)I

    move-result v2

    .line 447
    iget-object v4, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/transsion/camera/utils/exif/ExifData;->getIfdData(I)Lcom/transsion/camera/utils/exif/IfdData;

    move-result-object v4

    if-eqz v4, :cond_3f

    .line 449
    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v5}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v5

    invoke-virtual {v3, v5}, Lcom/transsion/camera/utils/exif/IfdData;->getTag(S)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object v3

    .line 450
    invoke-virtual {v3, v2}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue(I)Z

    .line 451
    invoke-direct {p0, v4, v2}, Lcom/transsion/camera/utils/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/transsion/camera/utils/exif/IfdData;I)I

    move-result v2

    .line 454
    :cond_3f
    iget-object v3, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/transsion/camera/utils/exif/ExifData;->getIfdData(I)Lcom/transsion/camera/utils/exif/IfdData;

    move-result-object v3

    if-eqz v3, :cond_59

    .line 456
    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v4}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v4

    invoke-virtual {v0, v4}, Lcom/transsion/camera/utils/exif/IfdData;->getTag(S)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue(I)Z

    .line 457
    invoke-direct {p0, v3, v2}, Lcom/transsion/camera/utils/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/transsion/camera/utils/exif/IfdData;I)I

    move-result v2

    .line 460
    :cond_59
    iget-object v3, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/transsion/camera/utils/exif/ExifData;->getIfdData(I)Lcom/transsion/camera/utils/exif/IfdData;

    move-result-object v3

    if-eqz v3, :cond_69

    .line 462
    invoke-virtual {v0, v2}, Lcom/transsion/camera/utils/exif/IfdData;->setOffsetToNextIfd(I)V

    .line 463
    invoke-direct {p0, v3, v2}, Lcom/transsion/camera/utils/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/transsion/camera/utils/exif/IfdData;I)I

    move-result v2

    .line 467
    :cond_69
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_89

    if-eqz v3, :cond_89

    .line 468
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    invoke-virtual {v3, v0}, Lcom/transsion/camera/utils/exif/IfdData;->getTag(S)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object v0

    .line 469
    invoke-virtual {v0, v2}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue(I)Z

    .line 470
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object p0

    array-length p0, p0

    add-int/2addr v2, p0

    return v2

    .line 471
    :cond_89
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/exif/ExifData;->hasUncompressedStrip()Z

    move-result v0

    if-eqz v0, :cond_be

    if-eqz v3, :cond_be

    .line 472
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/exif/ExifData;->getStripCount()I

    move-result v0

    .line 473
    new-array v0, v0, [J

    .line 474
    :goto_9b
    iget-object v4, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {v4}, Lcom/transsion/camera/utils/exif/ExifData;->getStripCount()I

    move-result v4

    if-ge v1, v4, :cond_b1

    int-to-long v4, v2

    .line 475
    aput-wide v4, v0, v1

    .line 476
    iget-object v4, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {v4, v1}, Lcom/transsion/camera/utils/exif/ExifData;->getStrip(I)[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_9b

    .line 478
    :cond_b1
    sget p0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {p0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result p0

    invoke-virtual {v3, p0}, Lcom/transsion/camera/utils/exif/IfdData;->getTag(S)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([J)Z

    :cond_be
    return v2
.end method

.method private calculateOffsetOfIfd(Lcom/transsion/camera/utils/exif/IfdData;I)I
    .registers 7

    .line 314
    invoke-virtual {p1}, Lcom/transsion/camera/utils/exif/IfdData;->getTagCount()I

    move-result p0

    mul-int/lit8 p0, p0, 0xc

    add-int/lit8 p0, p0, 0x6

    add-int/2addr p2, p0

    .line 315
    invoke-virtual {p1}, Lcom/transsion/camera/utils/exif/IfdData;->getAllTags()[Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object p0

    .line 316
    array-length p1, p0

    const/4 v0, 0x0

    :goto_f
    if-ge v0, p1, :cond_25

    aget-object v1, p0, v0

    .line 317
    invoke-virtual {v1}, Lcom/transsion/camera/utils/exif/ExifTag;->getDataSize()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_22

    .line 318
    invoke-virtual {v1, p2}, Lcom/transsion/camera/utils/exif/ExifTag;->setOffset(I)V

    .line 319
    invoke-virtual {v1}, Lcom/transsion/camera/utils/exif/ExifTag;->getDataSize()I

    move-result v1

    add-int/2addr p2, v1

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_25
    return p2
.end method

.method private createRequiredIfdAndTag()V
    .registers 9

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/exif/ExifData;->getIfdData(I)Lcom/transsion/camera/utils/exif/IfdData;

    move-result-object v0

    if-nez v0, :cond_13

    .line 329
    new-instance v0, Lcom/transsion/camera/utils/exif/IfdData;

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/exif/IfdData;-><init>(I)V

    .line 330
    iget-object v2, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/utils/exif/ExifData;->addIfdData(Lcom/transsion/camera/utils/exif/IfdData;)V

    .line 332
    :cond_13
    iget-object v2, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mInterface:Lcom/transsion/camera/utils/exif/ExifInterface;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->buildUninitializedTag(I)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object v2

    .line 333
    const-string v4, "No definition for crucial exif tag: "

    if-eqz v2, :cond_1bb

    .line 337
    invoke-virtual {v0, v2}, Lcom/transsion/camera/utils/exif/IfdData;->setTag(Lcom/transsion/camera/utils/exif/ExifTag;)Lcom/transsion/camera/utils/exif/ExifTag;

    .line 340
    iget-object v2, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/transsion/camera/utils/exif/ExifData;->getIfdData(I)Lcom/transsion/camera/utils/exif/IfdData;

    move-result-object v2

    if-nez v2, :cond_35

    .line 342
    new-instance v2, Lcom/transsion/camera/utils/exif/IfdData;

    invoke-direct {v2, v3}, Lcom/transsion/camera/utils/exif/IfdData;-><init>(I)V

    .line 343
    iget-object v3, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/utils/exif/ExifData;->addIfdData(Lcom/transsion/camera/utils/exif/IfdData;)V

    .line 347
    :cond_35
    iget-object v3, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/transsion/camera/utils/exif/ExifData;->getIfdData(I)Lcom/transsion/camera/utils/exif/IfdData;

    move-result-object v3

    if-eqz v3, :cond_61

    .line 349
    iget-object v3, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mInterface:Lcom/transsion/camera/utils/exif/ExifInterface;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual {v3, v5}, Lcom/transsion/camera/utils/exif/ExifInterface;->buildUninitializedTag(I)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object v3

    if-eqz v3, :cond_4c

    .line 354
    invoke-virtual {v0, v3}, Lcom/transsion/camera/utils/exif/IfdData;->setTag(Lcom/transsion/camera/utils/exif/ExifTag;)Lcom/transsion/camera/utils/exif/ExifTag;

    goto :goto_61

    .line 351
    :cond_4c
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 358
    :cond_61
    :goto_61
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/transsion/camera/utils/exif/ExifData;->getIfdData(I)Lcom/transsion/camera/utils/exif/IfdData;

    move-result-object v0

    if-eqz v0, :cond_8d

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mInterface:Lcom/transsion/camera/utils/exif/ExifInterface;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 361
    invoke-virtual {v0, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->buildUninitializedTag(I)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object v0

    if-eqz v0, :cond_78

    .line 366
    invoke-virtual {v2, v0}, Lcom/transsion/camera/utils/exif/IfdData;->setTag(Lcom/transsion/camera/utils/exif/ExifTag;)Lcom/transsion/camera/utils/exif/ExifTag;

    goto :goto_8d

    .line 363
    :cond_78
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 369
    :cond_8d
    :goto_8d
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/transsion/camera/utils/exif/ExifData;->getIfdData(I)Lcom/transsion/camera/utils/exif/IfdData;

    move-result-object v0

    .line 372
    iget-object v3, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {v3}, Lcom/transsion/camera/utils/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v3

    if-eqz v3, :cond_109

    if-nez v0, :cond_a8

    .line 375
    new-instance v0, Lcom/transsion/camera/utils/exif/IfdData;

    invoke-direct {v0, v2}, Lcom/transsion/camera/utils/exif/IfdData;-><init>(I)V

    .line 376
    iget-object v1, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/utils/exif/ExifData;->addIfdData(Lcom/transsion/camera/utils/exif/IfdData;)V

    .line 379
    :cond_a8
    iget-object v1, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mInterface:Lcom/transsion/camera/utils/exif/ExifInterface;

    sget v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 380
    invoke-virtual {v1, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->buildUninitializedTag(I)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object v1

    if-eqz v1, :cond_f4

    .line 386
    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/exif/IfdData;->setTag(Lcom/transsion/camera/utils/exif/ExifTag;)Lcom/transsion/camera/utils/exif/ExifTag;

    .line 387
    iget-object v1, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mInterface:Lcom/transsion/camera/utils/exif/ExifInterface;

    sget v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 388
    invoke-virtual {v1, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->buildUninitializedTag(I)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object v1

    if-eqz v1, :cond_df

    .line 394
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object p0

    array-length p0, p0

    invoke-virtual {v1, p0}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue(I)Z

    .line 395
    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/exif/IfdData;->setTag(Lcom/transsion/camera/utils/exif/ExifTag;)Lcom/transsion/camera/utils/exif/ExifTag;

    .line 398
    sget p0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {p0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/exif/IfdData;->removeTag(S)V

    .line 399
    sget p0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {p0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/exif/IfdData;->removeTag(S)V

    return-void

    .line 390
    :cond_df
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 382
    :cond_f4
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 400
    :cond_109
    iget-object v3, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {v3}, Lcom/transsion/camera/utils/exif/ExifData;->hasUncompressedStrip()Z

    move-result v3

    if-eqz v3, :cond_194

    if-nez v0, :cond_11d

    .line 402
    new-instance v0, Lcom/transsion/camera/utils/exif/IfdData;

    invoke-direct {v0, v2}, Lcom/transsion/camera/utils/exif/IfdData;-><init>(I)V

    .line 403
    iget-object v2, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/utils/exif/ExifData;->addIfdData(Lcom/transsion/camera/utils/exif/IfdData;)V

    .line 405
    :cond_11d
    iget-object v2, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {v2}, Lcom/transsion/camera/utils/exif/ExifData;->getStripCount()I

    move-result v2

    .line 406
    iget-object v3, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mInterface:Lcom/transsion/camera/utils/exif/ExifInterface;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual {v3, v5}, Lcom/transsion/camera/utils/exif/ExifInterface;->buildUninitializedTag(I)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object v3

    if-eqz v3, :cond_17f

    .line 411
    iget-object v5, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mInterface:Lcom/transsion/camera/utils/exif/ExifInterface;

    sget v6, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 412
    invoke-virtual {v5, v6}, Lcom/transsion/camera/utils/exif/ExifInterface;->buildUninitializedTag(I)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object v5

    if-eqz v5, :cond_16a

    .line 417
    new-array v2, v2, [J

    .line 418
    :goto_139
    iget-object v4, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {v4}, Lcom/transsion/camera/utils/exif/ExifData;->getStripCount()I

    move-result v4

    if-ge v1, v4, :cond_14e

    .line 419
    iget-object v4, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {v4, v1}, Lcom/transsion/camera/utils/exif/ExifData;->getStrip(I)[B

    move-result-object v4

    array-length v4, v4

    int-to-long v6, v4

    aput-wide v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_139

    .line 421
    :cond_14e
    invoke-virtual {v5, v2}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([J)Z

    .line 422
    invoke-virtual {v0, v3}, Lcom/transsion/camera/utils/exif/IfdData;->setTag(Lcom/transsion/camera/utils/exif/ExifTag;)Lcom/transsion/camera/utils/exif/ExifTag;

    .line 423
    invoke-virtual {v0, v5}, Lcom/transsion/camera/utils/exif/IfdData;->setTag(Lcom/transsion/camera/utils/exif/ExifTag;)Lcom/transsion/camera/utils/exif/ExifTag;

    .line 425
    sget p0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {p0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/exif/IfdData;->removeTag(S)V

    .line 426
    sget p0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 427
    invoke-static {p0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result p0

    .line 426
    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/exif/IfdData;->removeTag(S)V

    return-void

    .line 414
    :cond_16a
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 408
    :cond_17f
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_194
    if-eqz v0, :cond_1ba

    .line 430
    sget p0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {p0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/exif/IfdData;->removeTag(S)V

    .line 431
    sget p0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {p0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/exif/IfdData;->removeTag(S)V

    .line 432
    sget p0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {p0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/exif/IfdData;->removeTag(S)V

    .line 433
    sget p0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 434
    invoke-static {p0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result p0

    .line 433
    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/exif/IfdData;->removeTag(S)V

    :cond_1ba
    return-void

    .line 334
    :cond_1bb
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private requestByteToBuffer(I[BII)I
    .registers 6

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    sub-int/2addr p1, v0

    if-le p4, p1, :cond_a

    move p4, p1

    .line 110
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return p4
.end method

.method private stripNullValueTags(Lcom/transsion/camera/utils/exif/ExifData;)Ljava/util/ArrayList;
    .registers 6

    .line 248
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 249
    invoke-virtual {p1}, Lcom/transsion/camera/utils/exif/ExifData;->getAllTags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/utils/exif/ExifTag;

    .line 250
    invoke-virtual {v1}, Lcom/transsion/camera/utils/exif/ExifTag;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_d

    invoke-virtual {v1}, Lcom/transsion/camera/utils/exif/ExifTag;->getTagId()S

    move-result v2

    invoke-static {v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->isOffsetTag(S)Z

    move-result v2

    if-nez v2, :cond_d

    .line 251
    invoke-virtual {v1}, Lcom/transsion/camera/utils/exif/ExifTag;->getTagId()S

    move-result v2

    invoke-virtual {v1}, Lcom/transsion/camera/utils/exif/ExifTag;->getIfd()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/transsion/camera/utils/exif/ExifData;->removeTag(SI)V

    .line 252
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_38
    return-object p0
.end method

.method private writeAllTags(Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;)V
    .registers 4

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/exif/ExifData;->getIfdData(I)Lcom/transsion/camera/utils/exif/IfdData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/utils/exif/ExifOutputStream;->writeIfd(Lcom/transsion/camera/utils/exif/IfdData;Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;)V

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/exif/ExifData;->getIfdData(I)Lcom/transsion/camera/utils/exif/IfdData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/utils/exif/ExifOutputStream;->writeIfd(Lcom/transsion/camera/utils/exif/IfdData;Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;)V

    .line 271
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/exif/ExifData;->getIfdData(I)Lcom/transsion/camera/utils/exif/IfdData;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 273
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/utils/exif/ExifOutputStream;->writeIfd(Lcom/transsion/camera/utils/exif/IfdData;Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;)V

    .line 275
    :cond_20
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/exif/ExifData;->getIfdData(I)Lcom/transsion/camera/utils/exif/IfdData;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 277
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/utils/exif/ExifOutputStream;->writeIfd(Lcom/transsion/camera/utils/exif/IfdData;Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;)V

    .line 279
    :cond_2c
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/exif/ExifData;->getIfdData(I)Lcom/transsion/camera/utils/exif/IfdData;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/exif/ExifData;->getIfdData(I)Lcom/transsion/camera/utils/exif/IfdData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/utils/exif/ExifOutputStream;->writeIfd(Lcom/transsion/camera/utils/exif/IfdData;Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;)V

    :cond_3e
    return-void
.end method

.method private writeExifData()V
    .registers 7

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    if-nez v0, :cond_5

    goto :goto_75

    .line 220
    :cond_5
    invoke-direct {p0, v0}, Lcom/transsion/camera/utils/exif/ExifOutputStream;->stripNullValueTags(Lcom/transsion/camera/utils/exif/ExifData;)Ljava/util/ArrayList;

    move-result-object v0

    .line 221
    invoke-direct {p0}, Lcom/transsion/camera/utils/exif/ExifOutputStream;->createRequiredIfdAndTag()V

    .line 222
    invoke-direct {p0}, Lcom/transsion/camera/utils/exif/ExifOutputStream;->calculateAllOffset()I

    move-result v1

    const/16 v2, 0x8

    add-int/2addr v1, v2

    const v3, 0xffff

    if-gt v1, v3, :cond_76

    .line 226
    new-instance v3, Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;

    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {v3, v4}, Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 227
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;

    const/16 v5, -0x1f

    .line 228
    invoke-virtual {v3, v5}, Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;->writeShort(S)Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;

    int-to-short v1, v1

    .line 229
    invoke-virtual {v3, v1}, Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;->writeShort(S)Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;

    const v1, 0x45786966

    .line 230
    invoke-virtual {v3, v1}, Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;->writeInt(I)Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;

    const/4 v1, 0x0

    .line 231
    invoke-virtual {v3, v1}, Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;->writeShort(S)Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;

    .line 232
    iget-object v5, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {v5}, Lcom/transsion/camera/utils/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    if-ne v5, v4, :cond_45

    const/16 v4, 0x4d4d

    .line 233
    invoke-virtual {v3, v4}, Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;->writeShort(S)Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;

    goto :goto_4a

    :cond_45
    const/16 v4, 0x4949

    .line 235
    invoke-virtual {v3, v4}, Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;->writeShort(S)Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;

    .line 237
    :goto_4a
    iget-object v4, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {v4}, Lcom/transsion/camera/utils/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;

    const/16 v4, 0x2a

    .line 238
    invoke-virtual {v3, v4}, Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;->writeShort(S)Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;

    .line 239
    invoke-virtual {v3, v2}, Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;->writeInt(I)Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;

    .line 240
    invoke-direct {p0, v3}, Lcom/transsion/camera/utils/exif/ExifOutputStream;->writeAllTags(Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;)V

    .line 241
    invoke-direct {p0, v3}, Lcom/transsion/camera/utils/exif/ExifOutputStream;->writeThumbnail(Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;)V

    .line 242
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_65
    if-ge v1, v2, :cond_75

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/transsion/camera/utils/exif/ExifTag;

    .line 243
    iget-object v4, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {v4, v3}, Lcom/transsion/camera/utils/exif/ExifData;->addTag(Lcom/transsion/camera/utils/exif/ExifTag;)Lcom/transsion/camera/utils/exif/ExifTag;

    goto :goto_65

    :cond_75
    :goto_75
    return-void

    .line 224
    :cond_76
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Exif header is too large (>64Kb)"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private writeIfd(Lcom/transsion/camera/utils/exif/IfdData;Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;)V
    .registers 9

    .line 287
    invoke-virtual {p1}, Lcom/transsion/camera/utils/exif/IfdData;->getAllTags()[Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object p0

    .line 288
    array-length v0, p0

    int-to-short v0, v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;->writeShort(S)Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;

    .line 289
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    const/4 v3, 0x4

    if-ge v2, v0, :cond_48

    aget-object v4, p0, v2

    .line 290
    invoke-virtual {v4}, Lcom/transsion/camera/utils/exif/ExifTag;->getTagId()S

    move-result v5

    invoke-virtual {p2, v5}, Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;->writeShort(S)Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;

    .line 291
    invoke-virtual {v4}, Lcom/transsion/camera/utils/exif/ExifTag;->getDataType()S

    move-result v5

    invoke-virtual {p2, v5}, Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;->writeShort(S)Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;

    .line 292
    invoke-virtual {v4}, Lcom/transsion/camera/utils/exif/ExifTag;->getComponentCount()I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;->writeInt(I)Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;

    .line 296
    invoke-virtual {v4}, Lcom/transsion/camera/utils/exif/ExifTag;->getDataSize()I

    move-result v5

    if-le v5, v3, :cond_34

    .line 297
    invoke-virtual {v4}, Lcom/transsion/camera/utils/exif/ExifTag;->getOffset()I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;->writeInt(I)Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;

    goto :goto_45

    .line 299
    :cond_34
    invoke-static {v4, p2}, Lcom/transsion/camera/utils/exif/ExifOutputStream;->writeTagValue(Lcom/transsion/camera/utils/exif/ExifTag;Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;)V

    .line 300
    invoke-virtual {v4}, Lcom/transsion/camera/utils/exif/ExifTag;->getDataSize()I

    move-result v4

    sub-int/2addr v3, v4

    move v4, v1

    :goto_3d
    if-ge v4, v3, :cond_45

    .line 301
    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    :cond_45
    :goto_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 305
    :cond_48
    invoke-virtual {p1}, Lcom/transsion/camera/utils/exif/IfdData;->getOffsetToNextIfd()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;->writeInt(I)Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;

    .line 306
    array-length p1, p0

    :goto_50
    if-ge v1, p1, :cond_60

    aget-object v0, p0, v1

    .line 307
    invoke-virtual {v0}, Lcom/transsion/camera/utils/exif/ExifTag;->getDataSize()I

    move-result v2

    if-le v2, v3, :cond_5d

    .line 308
    invoke-static {v0, p2}, Lcom/transsion/camera/utils/exif/ExifOutputStream;->writeTagValue(Lcom/transsion/camera/utils/exif/ExifTag;Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;)V

    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    :cond_60
    return-void
.end method

.method static writeTagValue(Lcom/transsion/camera/utils/exif/ExifTag;Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;)V
    .registers 6

    .line 486
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifTag;->getDataType()S

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_66

    :pswitch_8
    goto :goto_3c

    .line 505
    :pswitch_9
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifTag;->getComponentCount()I

    move-result v0

    :goto_d
    if-ge v1, v0, :cond_3c

    .line 506
    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/exif/ExifTag;->getRational(I)Lcom/transsion/camera/utils/exif/Rational;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;->writeRational(Lcom/transsion/camera/utils/exif/Rational;)Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 499
    :pswitch_19
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifTag;->getComponentCount()I

    move-result v0

    :goto_1d
    if-ge v1, v0, :cond_3c

    .line 500
    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/exif/ExifTag;->getValueAt(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1, v2}, Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;->writeInt(I)Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 516
    :pswitch_2a
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifTag;->getComponentCount()I

    move-result v0

    :goto_2e
    if-ge v1, v0, :cond_3c

    .line 517
    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/exif/ExifTag;->getValueAt(I)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {p1, v2}, Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;->writeShort(S)Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_3c
    :goto_3c
    return-void

    .line 488
    :pswitch_3d
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifTag;->getStringByte()[B

    move-result-object v0

    .line 489
    array-length v2, v0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifTag;->getComponentCount()I

    move-result p0

    if-ne v2, p0, :cond_51

    .line 490
    array-length p0, v0

    add-int/lit8 p0, p0, -0x1

    aput-byte v1, v0, p0

    .line 491
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void

    .line 493
    :cond_51
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 494
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    return-void

    .line 511
    :pswitch_58
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [B

    .line 512
    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/exif/ExifTag;->getBytes([B)V

    .line 513
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void

    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_58
        :pswitch_3d
        :pswitch_2a
        :pswitch_19
        :pswitch_9
        :pswitch_8
        :pswitch_58
        :pswitch_8
        :pswitch_19
        :pswitch_9
    .end packed-switch
.end method

.method private writeThumbnail(Lcom/transsion/camera/utils/exif/OrderedDataOutputStream;)V
    .registers 4

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 260
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void

    .line 261
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/exif/ExifData;->hasUncompressedStrip()Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x0

    .line 262
    :goto_1b
    iget-object v1, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {v1}, Lcom/transsion/camera/utils/exif/ExifData;->getStripCount()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 263
    iget-object v1, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/utils/exif/ExifData;->getStrip(I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2f
    return-void
.end method


# virtual methods
.method protected setExifData(Lcom/transsion/camera/utils/exif/ExifData;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mExifData:Lcom/transsion/camera/utils/exif/ExifData;

    return-void
.end method

.method public write(I)V
    .registers 4

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mSingleByteArray:[B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 202
    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/exif/ExifOutputStream;->write([B)V

    return-void
.end method

.method public write([B)V
    .registers 4

    const/4 v0, 0x0

    .line 210
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/camera/utils/exif/ExifOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 10

    .line 120
    :goto_0
    iget v0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mByteToSkip:I

    const/4 v1, 0x2

    if-gtz v0, :cond_d

    iget v2, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mByteToCopy:I

    if-gtz v2, :cond_d

    iget v2, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mState:I

    if-eq v2, v1, :cond_fb

    :cond_d
    if-lez p3, :cond_fb

    if-lez v0, :cond_1b

    if-le p3, v0, :cond_15

    move v2, v0

    goto :goto_16

    :cond_15
    move v2, p3

    :goto_16
    sub-int/2addr p3, v2

    sub-int/2addr v0, v2

    .line 125
    iput v0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mByteToSkip:I

    add-int/2addr p2, v2

    .line 128
    :cond_1b
    iget v0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mByteToCopy:I

    if-lez v0, :cond_2f

    if-le p3, v0, :cond_22

    goto :goto_23

    :cond_22
    move v0, p3

    .line 130
    :goto_23
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr p3, v0

    .line 132
    iget v2, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mByteToCopy:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mByteToCopy:I

    add-int/2addr p2, v0

    :cond_2f
    if-nez p3, :cond_33

    goto/16 :goto_102

    .line 138
    :cond_33
    iget v0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_be

    if-eq v0, v2, :cond_3c

    goto :goto_0

    :cond_3c
    const/4 v0, 0x4

    .line 158
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/transsion/camera/utils/exif/ExifOutputStream;->requestByteToBuffer(I[BII)I

    move-result v2

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    .line 162
    iget-object v2, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v2

    if-ne v2, v1, :cond_65

    .line 163
    iget-object v2, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const/16 v4, -0x27

    if-ne v2, v4, :cond_65

    .line 165
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v4, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 166
    iget-object v2, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 169
    :cond_65
    iget-object v2, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v2

    if-ge v2, v0, :cond_6f

    goto/16 :goto_102

    .line 172
    :cond_6f
    iget-object v2, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 173
    iget-object v2, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const/16 v4, -0x1f

    const v5, 0xffff

    if-ne v2, v4, :cond_8e

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v5

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mByteToSkip:I

    .line 176
    iput v1, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mState:I

    goto :goto_b7

    .line 177
    :cond_8e
    invoke-static {v2}, Lcom/transsion/camera/utils/exif/JpegHeader;->isSofMarker(S)Z

    move-result v2

    if-nez v2, :cond_aa

    .line 178
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v4, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v5

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mByteToCopy:I

    goto :goto_b7

    .line 181
    :cond_aa
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v4, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 182
    iput v1, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mState:I

    .line 184
    :goto_b7
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 140
    :cond_be
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/transsion/camera/utils/exif/ExifOutputStream;->requestByteToBuffer(I[BII)I

    move-result v0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-ge v0, v1, :cond_cd

    goto :goto_102

    .line 146
    :cond_cd
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const/16 v4, -0x28

    if-ne v0, v4, :cond_f3

    .line 150
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0, v4, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 151
    iput v2, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mState:I

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 153
    invoke-direct {p0}, Lcom/transsion/camera/utils/exif/ExifOutputStream;->writeExifData()V

    goto/16 :goto_0

    .line 148
    :cond_f3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Not a valid jpeg image, cannot write exif"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_fb
    if-lez p3, :cond_102

    .line 191
    iget-object p0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :cond_102
    :goto_102
    return-void
.end method
