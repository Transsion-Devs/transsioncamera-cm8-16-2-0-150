.class public abstract Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper$Section;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "XmpHelper"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private static addDirectoryItem(Lcom/adobe/xmp/XMPMeta;ZILcom/transsion/camera/app/common/livephoto/xmp/MimeType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 17

    .line 466
    const-string v0, "Directory"

    invoke-static {v0, p2}, Lcom/adobe/xmp/XMPPathFactory;->composeArrayItemPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/Container:Item"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 468
    new-instance p2, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {p2}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    const/4 v0, 0x1

    .line 469
    invoke-virtual {p2, v0}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayOrdered(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v7

    new-instance p2, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {p2}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    invoke-virtual {p2, v0}, Lcom/adobe/xmp/options/PropertyOptions;->setStruct(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v9

    .line 468
    const-string v5, "http://ns.google.com/photos/1.0/container/"

    const-string v6, "Directory"

    const/4 v8, 0x0

    move-object v4, p0

    invoke-interface/range {v4 .. v9}, Lcom/adobe/xmp/XMPMeta;->appendArrayItem(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 471
    const-string v5, "Mime"

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v2, "http://ns.google.com/photos/1.0/container/"

    const-string v4, "http://ns.google.com/photos/1.0/container/item/"

    move-object v1, p0

    invoke-interface/range {v1 .. v6}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v4, "http://ns.google.com/photos/1.0/container/item/"

    const-string v5, "Semantic"

    const-string v2, "http://ns.google.com/photos/1.0/container/"

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v4, "http://ns.google.com/photos/1.0/container/item/"

    const-string v5, "Length"

    const-string v2, "http://ns.google.com/photos/1.0/container/"

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_63

    .line 475
    const-string v4, "http://ns.google.com/photos/1.0/container/item/"

    const-string v5, "Padding"

    const-string v2, "http://ns.google.com/photos/1.0/container/"

    move-object v1, p0

    move-object/from16 v6, p6

    invoke-interface/range {v1 .. v6}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_63
    return-void
.end method

.method private static containerItemPath(I)Ljava/lang/String;
    .registers 4

    .line 143
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Directory"

    invoke-static {v1, p0}, Lcom/adobe/xmp/XMPPathFactory;->composeArrayItemPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/Container:Item"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_17
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_17} :catch_18

    return-object p0

    :catch_18
    move-exception p0

    .line 145
    sget-object v0, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "composeArrayItemPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;
    .registers 6

    const/4 v0, 0x1

    .line 73
    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_9

    return-object v0

    .line 77
    :cond_9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper$Section;

    .line 78
    iget-object v2, v1, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper$Section;->data:[B

    invoke-static {v2}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->hasXMPHeader([B)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 79
    iget-object p0, v1, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper$Section;->data:[B

    invoke-static {p0}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->getXMPContentEnd([B)I

    move-result p0

    const/16 v2, 0x1d

    sub-int/2addr p0, v2

    .line 80
    new-array v3, p0, [B

    .line 81
    iget-object v1, v1, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper$Section;->data:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    :try_start_32
    invoke-static {v3}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromBuffer([B)Lcom/adobe/xmp/XMPMeta;

    move-result-object p0
    :try_end_36
    .catch Lcom/adobe/xmp/XMPException; {:try_start_32 .. :try_end_36} :catch_37

    return-object p0

    :catch_37
    move-exception p0

    .line 86
    sget-object v1, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "XMP parse error"

    invoke-static {v1, v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3f
    return-object v0
.end method

.method private static getXMPContentEnd([B)I
    .registers 5

    .line 95
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_3
    if-lt v0, v1, :cond_18

    .line 96
    aget-byte v2, p0, v0

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_15

    add-int/lit8 v2, v0, -0x1

    .line 97
    aget-byte v2, p0, v2

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_15

    add-int/2addr v0, v1

    return v0

    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 102
    :cond_18
    array-length p0, p0

    return p0
.end method

.method public static getXMPMeta(Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;IJJLcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;
    .registers 16

    .line 323
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    .line 324
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->create()Lcom/adobe/xmp/XMPMeta;

    move-result-object v1

    .line 328
    :try_start_8
    invoke-static {v0, p6}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->registerNamespaces(Lcom/adobe/xmp/XMPSchemaRegistry;Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;)V

    .line 331
    invoke-static {v1, p4, p5, p6, p7}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->setMotionPhotoProperties(Lcom/adobe/xmp/XMPMeta;JLcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;Ljava/lang/String;)V

    .line 334
    const-string v5, "Primary"

    const-string v6, "0"

    .line 335
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v4, p0

    .line 334
    invoke-static/range {v1 .. v7}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->addDirectoryItem(Lcom/adobe/xmp/XMPMeta;ZILcom/transsion/camera/app/common/livephoto/xmp/MimeType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    sget-object v4, Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;->MP4:Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;

    const-string v5, "MotionPhoto"

    .line 337
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 336
    invoke-static/range {v1 .. v7}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->addDirectoryItem(Lcom/adobe/xmp/XMPMeta;ZILcom/transsion/camera/app/common/livephoto/xmp/MimeType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {p6}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;->isXDRPhoto()Z

    move-result p0

    if-eqz p0, :cond_4c

    .line 339
    sget-object p3, Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;->JPEG:Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;

    const-string p4, "GainMap"

    .line 340
    invoke-virtual {p6}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;->getGainMapLength()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    const-string p6, "0"
    :try_end_3f
    .catch Lcom/adobe/xmp/XMPException; {:try_start_8 .. :try_end_3f} :catch_4a

    const/4 p1, 0x1

    const/4 p2, 0x3

    move-object p0, v1

    .line 339
    :try_start_42
    invoke-static/range {p0 .. p6}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->addDirectoryItem(Lcom/adobe/xmp/XMPMeta;ZILcom/transsion/camera/app/common/livephoto/xmp/MimeType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catch Lcom/adobe/xmp/XMPException; {:try_start_42 .. :try_end_45} :catch_46

    return-object v1

    :catch_46
    move-exception v0

    move-object v1, p0

    :goto_48
    move-object p0, v0

    goto :goto_4d

    :catch_4a
    move-exception v0

    goto :goto_48

    :cond_4c
    return-object v1

    .line 343
    :goto_4d
    sget-object p1, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getXMPMeta failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getXMPMeta(Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;Z)Lcom/adobe/xmp/XMPMeta;
    .registers 11

    .line 366
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    .line 367
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->create()Lcom/adobe/xmp/XMPMeta;

    move-result-object v1

    .line 371
    :try_start_8
    invoke-static {v0, p0}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->registerNamespaces(Lcom/adobe/xmp/XMPSchemaRegistry;Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;)V

    if-eqz p2, :cond_14

    .line 374
    invoke-static {v1, p1}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->removeLowQualityPhotoProperties(Lcom/adobe/xmp/XMPMeta;Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;)V

    goto :goto_17

    :catch_11
    move-exception v0

    move-object p0, v0

    goto :goto_3f

    .line 376
    :cond_14
    invoke-static {v1, p1}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->setLowQualityPhotoProperties(Lcom/adobe/xmp/XMPMeta;Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;)V

    .line 379
    :goto_17
    sget-object v4, Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;->JPEG:Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;

    const-string v5, "Primary"

    const-string v6, "0"

    const/4 p1, 0x0

    .line 380
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 379
    invoke-static/range {v1 .. v7}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->addDirectoryItem(Lcom/adobe/xmp/XMPMeta;ZILcom/transsion/camera/app/common/livephoto/xmp/MimeType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;->isXDRPhoto()Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 382
    const-string v5, "GainMap"

    .line 383
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;->getGainMapLength()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    const/4 v2, 0x1

    const/4 v3, 0x2

    .line 382
    invoke-static/range {v1 .. v7}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->addDirectoryItem(Lcom/adobe/xmp/XMPMeta;ZILcom/transsion/camera/app/common/livephoto/xmp/MimeType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catch Lcom/adobe/xmp/XMPException; {:try_start_8 .. :try_end_3e} :catch_11

    :cond_3e
    return-object v1

    .line 386
    :goto_3f
    sget-object p1, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getXMPMeta failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1
.end method

.method public static hasXMPHeader([B)Z
    .registers 4

    .line 64
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_7

    return v1

    .line 67
    :cond_7
    new-array v0, v2, [B

    .line 68
    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    new-instance p0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v0, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static insertXMPSection(Ljava/util/List;Lcom/adobe/xmp/XMPMeta;)Ljava/util/List;
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_9e

    .line 151
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_c

    goto/16 :goto_9e

    .line 156
    :cond_c
    :try_start_c
    new-instance v1, Lcom/adobe/xmp/options/SerializeOptions;

    invoke-direct {v1}, Lcom/adobe/xmp/options/SerializeOptions;-><init>()V

    .line 157
    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/SerializeOptions;->setUseCompactFormat(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 161
    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/SerializeOptions;->setOmitPacketWrapper(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 162
    invoke-static {p1, v1}, Lcom/adobe/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)[B

    move-result-object p1
    :try_end_1b
    .catch Lcom/adobe/xmp/XMPException; {:try_start_c .. :try_end_1b} :catch_93

    .line 168
    array-length v1, p1

    const v3, 0xffde

    if-le v1, v3, :cond_22

    return-object v0

    .line 173
    :cond_22
    array-length v0, p1

    add-int/lit8 v1, v0, 0x1d

    new-array v1, v1, [B

    .line 174
    const-string v3, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x1d

    invoke-static {v3, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    array-length v3, p1

    invoke-static {p1, v4, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    new-instance p1, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper$Section;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper$Section;-><init>()V

    const/16 v3, 0xe1

    .line 177
    iput v3, p1, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper$Section;->marker:I

    add-int/lit8 v0, v0, 0x1f

    .line 179
    iput v0, p1, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper$Section;->length:I

    .line 180
    iput-object v1, p1, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper$Section;->data:[B

    move v0, v4

    .line 181
    :goto_47
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6c

    .line 183
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper$Section;

    iget v1, v1, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper$Section;->marker:I

    if-ne v1, v3, :cond_69

    .line 184
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper$Section;

    iget-object v1, v1, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper$Section;->data:[B

    invoke-static {v1}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->hasXMPHeader([B)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 186
    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 192
    :cond_6c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper$Section;

    iget v1, v1, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper$Section;->marker:I

    if-ne v1, v3, :cond_7c

    goto :goto_7d

    :cond_7c
    move v2, v4

    .line 194
    :goto_7d
    invoke-interface {p0, v4, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 195
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p0, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0

    :catch_93
    move-exception p0

    .line 164
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Serialize xmp failed"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9e
    :goto_9e
    return-object v0
.end method

.method private static parse(Ljava/io/InputStream;Z)Ljava/util/List;
    .registers 10

    const/4 v0, 0x0

    .line 211
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_96

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v3, 0xd8

    if-eq v1, v3, :cond_13

    goto/16 :goto_96

    .line 214
    :cond_13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 216
    :goto_18
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1c} :catch_54
    .catchall {:try_start_1 .. :try_end_1c} :catchall_52

    const/4 v4, -0x1

    if-eq v3, v4, :cond_92

    if-eq v3, v2, :cond_25

    .line 267
    :try_start_21
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_24

    :catch_24
    return-object v0

    .line 221
    :cond_25
    :goto_25
    :try_start_25
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_29} :catch_54
    .catchall {:try_start_25 .. :try_end_29} :catchall_52

    if-ne v3, v2, :cond_2c

    goto :goto_25

    :cond_2c
    if-ne v3, v4, :cond_32

    .line 267
    :try_start_2e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_31

    :catch_31
    return-object v0

    :cond_32
    const/16 v5, 0xda

    const/4 v6, 0x0

    if-ne v3, v5, :cond_5a

    if-nez p1, :cond_56

    .line 231
    :try_start_39
    new-instance p1, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper$Section;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper$Section;-><init>()V

    .line 232
    iput v3, p1, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper$Section;->marker:I

    .line 233
    iput v4, p1, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper$Section;->length:I

    .line 234
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p1, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper$Section;->data:[B

    .line 235
    array-length v3, v2

    invoke-virtual {p0, v2, v6, v3}, Ljava/io/InputStream;->read([BII)I

    .line 236
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_51} :catch_54
    .catchall {:try_start_39 .. :try_end_51} :catchall_52

    goto :goto_56

    :catchall_52
    move-exception p1

    goto :goto_aa

    :catch_54
    move-exception p1

    goto :goto_9a

    .line 267
    :cond_56
    :goto_56
    :try_start_56
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_59

    :catch_59
    return-object v1

    .line 240
    :cond_5a
    :try_start_5a
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 241
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v7

    if-eq v5, v4, :cond_8e

    if-ne v7, v4, :cond_67

    goto :goto_8e

    :cond_67
    shl-int/lit8 v4, v5, 0x8

    or-int/2addr v4, v7

    if-eqz p1, :cond_78

    const/16 v5, 0xe1

    if-ne v3, v5, :cond_71

    goto :goto_78

    :cond_71
    add-int/lit8 v4, v4, -0x2

    int-to-long v3, v4

    .line 256
    invoke-virtual {p0, v3, v4}, Ljava/io/InputStream;->skip(J)J

    goto :goto_18

    .line 247
    :cond_78
    :goto_78
    new-instance v5, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper$Section;

    invoke-direct {v5}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper$Section;-><init>()V

    .line 248
    iput v3, v5, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper$Section;->marker:I

    .line 249
    iput v4, v5, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper$Section;->length:I

    add-int/lit8 v4, v4, -0x2

    .line 250
    new-array v3, v4, [B

    iput-object v3, v5, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper$Section;->data:[B

    .line 251
    invoke-virtual {p0, v3, v6, v4}, Ljava/io/InputStream;->read([BII)I

    .line 252
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_8d} :catch_54
    .catchall {:try_start_5a .. :try_end_8d} :catchall_52

    goto :goto_18

    .line 267
    :cond_8e
    :goto_8e
    :try_start_8e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_91

    :catch_91
    return-object v0

    :cond_92
    :try_start_92
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_95

    :catch_95
    return-object v1

    :cond_96
    :goto_96
    :try_start_96
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_99

    :catch_99
    return-object v0

    .line 261
    :goto_9a
    :try_start_9a
    sget-object v1, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "Could not parse file."

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a4
    .catchall {:try_start_9a .. :try_end_a4} :catchall_52

    if-eqz p0, :cond_a9

    .line 267
    :try_start_a6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_a9

    :catch_a9
    :cond_a9
    return-object v0

    :goto_aa
    if-eqz p0, :cond_af

    :try_start_ac
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_af

    .line 272
    :catch_af
    :cond_af
    throw p1
.end method

.method public static parseXMPMeta([B)Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;
    .registers 11

    .line 106
    const-string v0, "parseXMPMeta: "

    const-string v1, "http://ns.google.com/photos/1.0/container/item/"

    const-string v2, "http://ns.google.com/photos/1.0/container/"

    if-nez p0, :cond_e

    .line 107
    new-instance p0, Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;-><init>()V

    return-object p0

    .line 109
    :cond_e
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 110
    invoke-static {v3}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;

    move-result-object p0

    .line 111
    new-instance v3, Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;

    invoke-direct {v3}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;-><init>()V

    if-nez p0, :cond_1f

    return-object v3

    .line 116
    :cond_1f
    :try_start_1f
    const-string v4, "http://ns.adobe.com/hdr-gain-map/1.0/"

    const-string v5, "Version"

    invoke-interface {p0, v4, v5}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v4

    if-eqz v4, :cond_33

    .line 118
    invoke-interface {v4}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;->setXDRVersion(Ljava/lang/String;)V

    goto :goto_33

    :catch_31
    move-exception p0

    goto :goto_6a

    .line 120
    :cond_33
    :goto_33
    const-string v4, "Directory"

    invoke-interface {p0, v2, v4}, Lcom/adobe/xmp/XMPMeta;->countArrayItems(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    move v6, v5

    :goto_3b
    if-gt v6, v4, :cond_7e

    .line 122
    invoke-static {v6}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->containerItemPath(I)Ljava/lang/String;

    move-result-object v7

    .line 123
    const-string v8, "Semantic"

    invoke-interface {p0, v2, v7, v1, v8}, Lcom/adobe/xmp/XMPMeta;->getStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v8

    if-eqz v8, :cond_67

    .line 124
    invoke-interface {v8}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v8

    const-string v9, "GainMap"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_67

    .line 125
    invoke-virtual {v3, v5}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;->setXDRPhoto(Z)V

    .line 126
    const-string v8, "Length"

    invoke-interface {p0, v2, v7, v1, v8}, Lcom/adobe/xmp/XMPMeta;->getStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v7

    if-eqz v7, :cond_67

    .line 129
    invoke-interface {v7}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;->setGainMapLength(Ljava/lang/String;)V
    :try_end_67
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1f .. :try_end_67} :catch_31

    :cond_67
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    .line 134
    :goto_6a
    sget-object v1, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 136
    :cond_7e
    sget-object p0, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v3
.end method

.method public static parseXMPMeta(Ljava/lang/String;)Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;
    .registers 8

    .line 417
    const-string v0, "http://ns.transsion.com/photos/1.0/camera/"

    .line 419
    :try_start_2
    invoke-static {p0}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromString(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;

    move-result-object p0

    .line 420
    const-string v1, "TimestampKey"

    invoke-interface {p0, v0, v1}, Lcom/adobe/xmp/XMPMeta;->getPropertyLong(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 421
    const-string v3, "LowQualityPicture"

    invoke-interface {p0, v0, v3}, Lcom/adobe/xmp/XMPMeta;->getPropertyBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 422
    const-string v4, "LivePhoto"

    invoke-interface {p0, v0, v4}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v4

    .line 423
    const-string v5, "UserID"

    invoke-interface {p0, v0, v5}, Lcom/adobe/xmp/XMPMeta;->getPropertyInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 424
    const-string v6, "Flags"

    invoke-interface {p0, v0, v6}, Lcom/adobe/xmp/XMPMeta;->getPropertyInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 425
    new-instance v0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;-><init>(J)V

    .line 426
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;->setLowQualityState(Z)Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;

    move-result-object v0

    if-eqz v4, :cond_4b

    .line 427
    invoke-interface {v4}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    const/4 v1, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v1, 0x0

    :goto_4c
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;->setLivePhotoState(Z)Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;

    move-result-object v0

    .line 428
    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;->setUserID(I)Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;

    move-result-object v0

    .line 429
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;->setFlags(I)Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;

    move-result-object p0

    .line 430
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;->build()Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;

    move-result-object p0
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5c} :catch_5d

    return-object p0

    :catch_5d
    move-exception p0

    .line 432
    sget-object v0, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseXMPMeta: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static registerNamespaces(Lcom/adobe/xmp/XMPSchemaRegistry;Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;)V
    .registers 4

    .line 439
    const-string v0, "http://ns.google.com/photos/1.0/camera/"

    const-string v1, "GCamera"

    invoke-interface {p0, v0, v1}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 440
    const-string v0, "http://ns.transsion.com/photos/1.0/camera/"

    const-string v1, "TCamera"

    invoke-interface {p0, v0, v1}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 441
    const-string v0, "http://ns.google.com/photos/1.0/container/"

    const-string v1, "Container"

    invoke-interface {p0, v0, v1}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 442
    const-string v0, "http://ns.google.com/photos/1.0/container/item/"

    const-string v1, "Item"

    invoke-interface {p0, v0, v1}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 443
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;->isXDRPhoto()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 444
    const-string p1, "http://ns.adobe.com/hdr-gain-map/1.0/"

    const-string v0, "hdrgm"

    invoke-interface {p0, p1, v0}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_29
    return-void
.end method

.method private static removeLowQualityPhotoProperties(Lcom/adobe/xmp/XMPMeta;Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;)V
    .registers 4

    .line 406
    const-string v0, "http://ns.transsion.com/photos/1.0/camera/"

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->isLowQuality()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 407
    :cond_a
    const-string v1, "LowQualityPicture"

    invoke-interface {p0, v0, v1}, Lcom/adobe/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    if-eqz p1, :cond_1c

    .line 409
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->isLivePhoto()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 410
    const-string p1, "LivePhoto"

    invoke-interface {p0, v0, p1}, Lcom/adobe/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_1c
    const-string p1, "UserID"

    invoke-interface {p0, v0, p1}, Lcom/adobe/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string p1, "Flags"

    invoke-interface {p0, v0, p1}, Lcom/adobe/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static setLowQualityPhotoProperties(Lcom/adobe/xmp/XMPMeta;Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;)V
    .registers 6

    const/4 v0, 0x1

    .line 395
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 393
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "http://ns.transsion.com/photos/1.0/camera/"

    const-string v3, "TimestampKey"

    invoke-interface {p0, v2, v3, v1}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 394
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->isLowQuality()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 395
    const-string v1, "LowQualityPicture"

    invoke-interface {p0, v2, v1, v0}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 397
    :cond_1f
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->isLivePhoto()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 398
    const-string v1, "LivePhoto"

    invoke-interface {p0, v2, v1, v0}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 400
    :cond_2a
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->getUserID()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "UserID"

    invoke-interface {p0, v2, v1, v0}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 401
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->getFlags()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "Flags"

    invoke-interface {p0, v2, v0, p1}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static setMotionPhotoProperties(Lcom/adobe/xmp/XMPMeta;JLcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x1

    .line 452
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "http://ns.google.com/photos/1.0/camera/"

    const-string v2, "MotionPhoto"

    invoke-interface {p0, v1, v2, v0}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 453
    const-string v2, "MotionPhotoVersion"

    invoke-interface {p0, v1, v2, v0}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 454
    const-string v2, "MotionPhotoPresentationTimestampUs"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, v1, v2, p1}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 456
    const-string p1, "LivePhoto"

    const-string p2, "http://ns.transsion.com/photos/1.0/camera/"

    invoke-interface {p0, p2, p1, v0}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 457
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;->isXDRPhoto()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 458
    const-string p1, "Version"

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;->getXDRVersion()Ljava/lang/String;

    move-result-object p3

    const-string v0, "http://ns.adobe.com/hdr-gain-map/1.0/"

    invoke-interface {p0, v0, p1, p3}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 460
    :cond_32
    const-string p1, "LivePhotoVideoTimestamp"

    invoke-interface {p0, p2, p1, p4}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static writeJpegFile(Ljava/io/OutputStream;Ljava/util/List;)V
    .registers 6

    const/16 v0, 0xff

    .line 281
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v1, 0xd8

    .line 282
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 283
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper$Section;

    .line 284
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 285
    iget v2, v1, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper$Section;->marker:I

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 286
    iget v2, v1, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper$Section;->length:I

    if-lez v2, :cond_30

    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 290
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 291
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 293
    :cond_30
    iget-object v1, v1, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper$Section;->data:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_e

    :cond_36
    return-void
.end method

.method public static writeXMPMeta(Ljava/io/InputStream;Ljava/io/OutputStream;IJLcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;Ljava/lang/String;)Z
    .registers 17

    .line 299
    const-string v1, "close outputStream exception: "

    sget-object v2, Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;->JPEG:Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;

    const/4 v3, 0x0

    int-to-long v4, p2

    move-wide v6, p3

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-static/range {v2 .. v9}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->getXMPMeta(Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;IJJLcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;

    move-result-object p2

    const/4 p3, 0x0

    .line 300
    invoke-static {p0, p3}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->insertXMPSection(Ljava/util/List;Lcom/adobe/xmp/XMPMeta;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1a

    return p3

    .line 305
    :cond_1a
    :try_start_1a
    invoke-static {p1, p0}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->writeJpegFile(Ljava/io/OutputStream;Ljava/util/List;)V

    .line 306
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_20} :catch_43
    .catchall {:try_start_1a .. :try_end_20} :catchall_40

    const/4 p0, 0x1

    .line 313
    :try_start_21
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    return p0

    :catch_25
    move-exception v0

    move-object p1, v0

    .line 315
    sget-object p2, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0

    :catchall_40
    move-exception v0

    move-object p0, v0

    goto :goto_7a

    :catch_43
    move-exception v0

    move-object p0, v0

    .line 309
    :try_start_45
    sget-object p2, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Write to stream failed: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_45 .. :try_end_5b} :catchall_40

    .line 313
    :try_start_5b
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_79

    :catch_5f
    move-exception v0

    move-object p0, v0

    .line 315
    sget-object p1, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_79
    return p3

    .line 313
    :goto_7a
    :try_start_7a
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7e

    goto :goto_98

    :catch_7e
    move-exception v0

    move-object p1, v0

    .line 315
    sget-object p2, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 317
    :goto_98
    throw p0
.end method

.method public static writeXMPMeta(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;Z)Z
    .registers 5

    .line 351
    invoke-static {p2, p3, p4}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->getXMPMeta(Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;Z)Lcom/adobe/xmp/XMPMeta;

    move-result-object p2

    const/4 p3, 0x0

    .line 352
    invoke-static {p0, p3}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->insertXMPSection(Ljava/util/List;Lcom/adobe/xmp/XMPMeta;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_10

    return p3

    .line 357
    :cond_10
    :try_start_10
    invoke-static {p1, p0}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->writeJpegFile(Ljava/io/OutputStream;Ljava/util/List;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_15

    const/4 p0, 0x1

    return p0

    :catch_15
    move-exception p0

    .line 360
    sget-object p1, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Write to stream failed: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p3
.end method
