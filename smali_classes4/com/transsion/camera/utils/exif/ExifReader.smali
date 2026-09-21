.class Lcom/transsion/camera/utils/exif/ExifReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mInterface:Lcom/transsion/camera/utils/exif/ExifInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ExifReader"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/exif/ExifReader;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/utils/exif/ExifInterface;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/utils/exif/ExifReader;->mInterface:Lcom/transsion/camera/utils/exif/ExifInterface;

    return-void
.end method


# virtual methods
.method protected read(Ljava/io/InputStream;)Lcom/transsion/camera/utils/exif/ExifData;
    .registers 5

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifReader;->mInterface:Lcom/transsion/camera/utils/exif/ExifInterface;

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/transsion/camera/utils/exif/ExifInterface;)Lcom/transsion/camera/utils/exif/ExifParser;

    move-result-object p0

    .line 48
    new-instance p1, Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/transsion/camera/utils/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    .line 51
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->next()I

    move-result v0

    :goto_13
    const/4 v1, 0x5

    if-eq v0, v1, :cond_a0

    if-eqz v0, :cond_8e

    const/4 v1, 0x1

    if-eq v0, v1, :cond_74

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_42

    const/4 v1, 0x4

    if-eq v0, v1, :cond_26

    goto/16 :goto_9a

    .line 81
    :cond_26
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->getStripSize()I

    move-result v0

    new-array v1, v0, [B

    .line 82
    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/exif/ExifParser;->read([B)I

    move-result v2

    if-ne v0, v2, :cond_3a

    .line 83
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->getStripIndex()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/utils/exif/ExifData;->setStripBytes(I[B)V

    goto :goto_9a

    .line 85
    :cond_3a
    sget-object v0, Lcom/transsion/camera/utils/exif/ExifReader;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Failed to read the strip bytes"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_9a

    .line 73
    :cond_42
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->getCompressedImageSize()I

    move-result v0

    new-array v1, v0, [B

    .line 74
    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/exif/ExifParser;->read([B)I

    move-result v2

    if-ne v0, v2, :cond_52

    .line 75
    invoke-virtual {p1, v1}, Lcom/transsion/camera/utils/exif/ExifData;->setCompressedThumbnail([B)V

    goto :goto_9a

    .line 77
    :cond_52
    sget-object v0, Lcom/transsion/camera/utils/exif/ExifReader;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Failed to read the compressed thumbnail"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_9a

    .line 66
    :cond_5a
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->getTag()Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/transsion/camera/utils/exif/ExifTag;->getDataType()S

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_68

    .line 68
    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/exif/ExifParser;->readFullTagValue(Lcom/transsion/camera/utils/exif/ExifTag;)V

    .line 70
    :cond_68
    invoke-virtual {v0}, Lcom/transsion/camera/utils/exif/ExifTag;->getIfd()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/utils/exif/ExifData;->getIfdData(I)Lcom/transsion/camera/utils/exif/IfdData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/utils/exif/IfdData;->setTag(Lcom/transsion/camera/utils/exif/ExifTag;)Lcom/transsion/camera/utils/exif/ExifTag;

    goto :goto_9a

    .line 58
    :cond_74
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->getTag()Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/transsion/camera/utils/exif/ExifTag;->hasValue()Z

    move-result v1

    if-nez v1, :cond_82

    .line 60
    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/exif/ExifParser;->registerForTagValue(Lcom/transsion/camera/utils/exif/ExifTag;)V

    goto :goto_9a

    .line 62
    :cond_82
    invoke-virtual {v0}, Lcom/transsion/camera/utils/exif/ExifTag;->getIfd()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/utils/exif/ExifData;->getIfdData(I)Lcom/transsion/camera/utils/exif/IfdData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/utils/exif/IfdData;->setTag(Lcom/transsion/camera/utils/exif/ExifTag;)Lcom/transsion/camera/utils/exif/ExifTag;

    goto :goto_9a

    .line 55
    :cond_8e
    new-instance v0, Lcom/transsion/camera/utils/exif/IfdData;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->getCurrentIfd()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/exif/IfdData;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/transsion/camera/utils/exif/ExifData;->addIfdData(Lcom/transsion/camera/utils/exif/IfdData;)V

    .line 91
    :goto_9a
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->next()I

    move-result v0

    goto/16 :goto_13

    :cond_a0
    return-object p1
.end method
