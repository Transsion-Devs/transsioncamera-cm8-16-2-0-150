.class public Lcom/obs/services/model/select/SelectInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/model/select/SelectInputStream$Stats;
    }
.end annotation


# static fields
.field private static final CHUNK_SIZE:I = 0x100

.field private static final DEFAULT_MESSAGE_BUFFER_SIZE:I = 0x200000

.field private static final OCTET_STREAM_TYPE:Ljava/lang/String; = "application/octet-stream"

.field private static final XML_STREAM_TYPE:Ljava/lang/String; = "text/xml"


# instance fields
.field private dataBuffer:Ljava/nio/ByteBuffer;

.field private done:Z

.field private headersLength:I

.field private input:Ljava/io/InputStream;

.field private inputChunk:[B

.field private isAborting:Z

.field private messageBuffer:Ljava/nio/ByteBuffer;

.field private next:I

.field private totalLength:I

.field private visitor:Lcom/obs/services/model/select/SelectEventVisitor;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/obs/services/model/select/SelectInputStream;-><init>(Ljava/io/InputStream;Lcom/obs/services/model/select/SelectEventVisitor;)V

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Lcom/obs/services/model/select/SelectEventVisitor;)V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/obs/services/model/select/SelectInputStream;->input:Ljava/io/InputStream;

    .line 62
    iput-object p2, p0, Lcom/obs/services/model/select/SelectInputStream;->visitor:Lcom/obs/services/model/select/SelectEventVisitor;

    const/16 p1, 0x100

    .line 63
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/obs/services/model/select/SelectInputStream;->inputChunk:[B

    const/high16 p1, 0x200000

    .line 64
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/select/SelectInputStream;->messageBuffer:Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/obs/services/model/select/SelectInputStream;->done:Z

    .line 66
    iput-boolean p1, p0, Lcom/obs/services/model/select/SelectInputStream;->isAborting:Z

    .line 67
    iput p1, p0, Lcom/obs/services/model/select/SelectInputStream;->totalLength:I

    .line 68
    iput p1, p0, Lcom/obs/services/model/select/SelectInputStream;->next:I

    return-void
.end method

.method private consume(I)V
    .registers 3

    .line 280
    iget v0, p0, Lcom/obs/services/model/select/SelectInputStream;->next:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/obs/services/model/select/SelectInputStream;->next:I

    .line 281
    iget-object p1, p0, Lcom/obs/services/model/select/SelectInputStream;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    if-ne v0, p1, :cond_15

    const/4 p1, 0x0

    .line 283
    iput p1, p0, Lcom/obs/services/model/select/SelectInputStream;->next:I

    .line 284
    iget-object p0, p0, Lcom/obs/services/model/select/SelectInputStream;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_15
    return-void
.end method

.method private crc32(I)J
    .registers 4

    .line 611
    new-array v0, p1, [B

    .line 612
    iget-object p0, p0, Lcom/obs/services/model/select/SelectInputStream;->messageBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 613
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 614
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 616
    new-instance p0, Ljava/util/zip/CRC32;

    invoke-direct {p0}, Ljava/util/zip/CRC32;-><init>()V

    const/4 v1, 0x0

    .line 617
    invoke-virtual {p0, v0, v1, p1}, Ljava/util/zip/CRC32;->update([BII)V

    .line 618
    invoke-virtual {p0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private extractPrelude()V
    .registers 5

    .line 555
    iget-object v0, p0, Lcom/obs/services/model/select/SelectInputStream;->messageBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 556
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 558
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/obs/services/model/select/SelectInputStream;->totalLength:I

    .line 559
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/obs/services/model/select/SelectInputStream;->headersLength:I

    .line 561
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/obs/services/model/select/SelectInputStream;->toLong(I)J

    move-result-wide v0

    const/16 v2, 0x8

    .line 562
    invoke-direct {p0, v2}, Lcom/obs/services/model/select/SelectInputStream;->crc32(I)J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-nez p0, :cond_28

    return-void

    .line 563
    :cond_28
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Invalid CRC in OBS Select message header"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private extractStats(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/obs/services/model/select/SelectInputStream$Stats;
    .registers 10

    .line 495
    const-string v0, " document in OBS Select"

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    if-eqz v1, :cond_144

    .line 499
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    new-array v1, v1, [B

    .line 500
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 502
    new-instance p1, Lcom/obs/services/model/select/SelectInputStream$Stats;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Lcom/obs/services/model/select/SelectInputStream$Stats;-><init>(Lcom/obs/services/model/select/SelectInputStream;Lcom/obs/services/model/select/SelectInputStream$1;)V

    .line 504
    :try_start_17
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p0

    .line 505
    const-string v2, "http://apache.org/xml/features/disallow-doctype-decl"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V

    .line 506
    const-string v2, "http://xml.org/sax/features/external-general-entities"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V

    .line 507
    const-string v2, "http://xml.org/sax/features/external-parameter-entities"

    invoke-virtual {p0, v2, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V

    .line 508
    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p0

    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v4, Ljava/io/StringReader;

    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v1, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v4, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 509
    invoke-virtual {p0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 511
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    .line 512
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_110

    .line 516
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_57
    if-eqz p0, :cond_e1

    .line 518
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v1, v3, :cond_db

    .line 519
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    .line 520
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2
    :try_end_67
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_17 .. :try_end_67} :catch_12a
    .catch Lorg/xml/sax/SAXException; {:try_start_17 .. :try_end_67} :catch_12a

    .line 521
    const-string v4, " in "

    if-eqz v2, :cond_bb

    :try_start_6b
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_bb

    .line 525
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 526
    const-string v2, "BytesScanned"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 527
    iput-wide v5, p1, Lcom/obs/services/model/select/SelectInputStream$Stats;->bytesScanned:J

    goto :goto_db

    .line 528
    :cond_85
    const-string v2, "BytesProcessed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 529
    iput-wide v5, p1, Lcom/obs/services/model/select/SelectInputStream$Stats;->bytesProcessed:J

    goto :goto_db

    .line 530
    :cond_90
    const-string v2, "BytesReturned"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 531
    iput-wide v5, p1, Lcom/obs/services/model/select/SelectInputStream$Stats;->bytesReturned:J

    goto :goto_db

    .line 533
    :cond_9b
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 522
    :cond_bb
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for XML element "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 536
    :cond_db
    :goto_db
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0
    :try_end_df
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6b .. :try_end_df} :catch_12a
    .catch Lorg/xml/sax/SAXException; {:try_start_6b .. :try_end_df} :catch_12a

    goto/16 :goto_57

    .line 542
    :cond_e1
    iget-wide v1, p1, Lcom/obs/services/model/select/SelectInputStream$Stats;->bytesScanned:J

    const-wide/16 v3, -0x1

    cmp-long p0, v1, v3

    if-eqz p0, :cond_f6

    iget-wide v1, p1, Lcom/obs/services/model/select/SelectInputStream$Stats;->bytesProcessed:J

    cmp-long p0, v1, v3

    if-eqz p0, :cond_f6

    iget-wide v1, p1, Lcom/obs/services/model/select/SelectInputStream$Stats;->bytesReturned:J

    cmp-long p0, v1, v3

    if-eqz p0, :cond_f6

    return-object p1

    .line 543
    :cond_f6
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing elements in "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 513
    :cond_110
    :try_start_110
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong root XML element in "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_12a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_110 .. :try_end_12a} :catch_12a
    .catch Lorg/xml/sax/SAXException; {:try_start_110 .. :try_end_12a} :catch_12a

    .line 539
    :catch_12a
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong XML "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 496
    :cond_144
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "XML document for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " event in OBS Select is empty"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private fetch(I)V
    .registers 8

    .line 300
    iget-boolean v0, p0, Lcom/obs/services/model/select/SelectInputStream;->done:Z

    if-nez v0, :cond_129

    .line 304
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/obs/services/model/select/SelectInputStream;->dataBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-ge v0, p1, :cond_21

    .line 305
    :cond_e
    iget-object v0, p0, Lcom/obs/services/model/select/SelectInputStream;->input:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/obs/services/model/select/SelectInputStream;->inputChunk:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2a

    .line 308
    iget-object p0, p0, Lcom/obs/services/model/select/SelectInputStream;->messageBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    if-gtz p0, :cond_22

    :cond_21
    return-void

    .line 309
    :cond_22
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Service stream ended before a SELECT event could be entirely decoded."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2a
    if-lez v0, :cond_4

    .line 317
    iget-object v1, p0, Lcom/obs/services/model/select/SelectInputStream;->messageBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-ge v1, v0, :cond_49

    .line 321
    iget v1, p0, Lcom/obs/services/model/select/SelectInputStream;->totalLength:I

    add-int/2addr v1, v0

    .line 322
    iget-object v2, p0, Lcom/obs/services/model/select/SelectInputStream;->messageBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 323
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 324
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/obs/services/model/select/SelectInputStream;->messageBuffer:Ljava/nio/ByteBuffer;

    .line 325
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 327
    :cond_49
    iget-object v1, p0, Lcom/obs/services/model/select/SelectInputStream;->messageBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/obs/services/model/select/SelectInputStream;->inputChunk:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 330
    :goto_51
    iget-object v0, p0, Lcom/obs/services/model/select/SelectInputStream;->messageBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 331
    iget-boolean v0, p0, Lcom/obs/services/model/select/SelectInputStream;->done:Z

    if-nez v0, :cond_121

    .line 336
    iget v0, p0, Lcom/obs/services/model/select/SelectInputStream;->totalLength:I

    if-nez v0, :cond_66

    .line 337
    invoke-direct {p0}, Lcom/obs/services/model/select/SelectInputStream;->extractPrelude()V

    .line 341
    :cond_66
    iget v0, p0, Lcom/obs/services/model/select/SelectInputStream;->totalLength:I

    iget-object v1, p0, Lcom/obs/services/model/select/SelectInputStream;->messageBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    if-le v0, v1, :cond_71

    goto :goto_4

    .line 346
    :cond_71
    iget-object v0, p0, Lcom/obs/services/model/select/SelectInputStream;->messageBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/obs/services/model/select/SelectInputStream;->totalLength:I

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/obs/services/model/select/SelectInputStream;->toLong(I)J

    move-result-wide v0

    .line 347
    iget v2, p0, Lcom/obs/services/model/select/SelectInputStream;->totalLength:I

    add-int/lit8 v2, v2, -0x4

    invoke-direct {p0, v2}, Lcom/obs/services/model/select/SelectInputStream;->crc32(I)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-nez v0, :cond_119

    .line 351
    invoke-virtual {p0}, Lcom/obs/services/model/select/SelectInputStream;->extractHeaders()Ljava/util/Map;

    move-result-object v0

    .line 352
    const-string v1, ":message-type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_111

    .line 357
    const-string v2, "event"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 358
    invoke-direct {p0, v0}, Lcom/obs/services/model/select/SelectInputStream;->processEvent(Ljava/util/Map;)V

    .line 366
    iget-object v0, p0, Lcom/obs/services/model/select/SelectInputStream;->messageBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget v1, p0, Lcom/obs/services/model/select/SelectInputStream;->totalLength:I

    if-ne v0, v1, :cond_b4

    .line 367
    iget-object v0, p0, Lcom/obs/services/model/select/SelectInputStream;->messageBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_d3

    .line 370
    :cond_b4
    iget-object v0, p0, Lcom/obs/services/model/select/SelectInputStream;->messageBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget v1, p0, Lcom/obs/services/model/select/SelectInputStream;->totalLength:I

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    .line 371
    iget-object v2, p0, Lcom/obs/services/model/select/SelectInputStream;->messageBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 372
    iget-object v1, p0, Lcom/obs/services/model/select/SelectInputStream;->messageBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 373
    iget-object v1, p0, Lcom/obs/services/model/select/SelectInputStream;->messageBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 374
    iget-object v1, p0, Lcom/obs/services/model/select/SelectInputStream;->messageBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 378
    :goto_d3
    iput v3, p0, Lcom/obs/services/model/select/SelectInputStream;->totalLength:I

    goto/16 :goto_51

    .line 359
    :cond_d7
    const-string p0, "error"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f5

    .line 360
    new-instance p0, Lcom/obs/services/model/select/SelectObjectException;

    const-string p1, ":error-code"

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, ":error-message"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/obs/services/model/select/SelectObjectException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    .line 362
    :cond_f5
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported message type \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'\' in OBS Select message"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 354
    :cond_111
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Missing message type in OBS Select message"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 348
    :cond_119
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid CRC in OBS Select message"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 332
    :cond_121
    new-instance p0, Ljava/io/IOException;

    const-string p1, "There is still message data to process after End event"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 301
    :cond_129
    new-instance p0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p0
.end method

.method private processEvent(Ljava/util/Map;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 393
    const-string v2, ":content-type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 394
    const-string v3, "application/octet-stream"

    if-nez v2, :cond_11

    move-object v2, v3

    .line 398
    :cond_11
    const-string v4, ":event-type"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_145

    .line 404
    iget-object v4, v0, Lcom/obs/services/model/select/SelectInputStream;->messageBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 405
    iget v5, v0, Lcom/obs/services/model/select/SelectInputStream;->headersLength:I

    add-int/lit8 v5, v5, 0xc

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 406
    iget v5, v0, Lcom/obs/services/model/select/SelectInputStream;->totalLength:I

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 408
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 409
    const-string v5, "Records"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "Stream type \'"

    if-eqz v5, :cond_a4

    .line 410
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 415
    invoke-virtual {v4}, Ljava/nio/Buffer;->limit()I

    move-result v1

    if-lez v1, :cond_122

    .line 416
    iget-object v1, v0, Lcom/obs/services/model/select/SelectInputStream;->visitor:Lcom/obs/services/model/select/SelectEventVisitor;

    if-eqz v1, :cond_50

    .line 417
    invoke-virtual {v1, v4}, Lcom/obs/services/model/select/SelectEventVisitor;->visitRecordsEvent(Ljava/nio/ByteBuffer;)V

    .line 421
    :cond_50
    iget-object v1, v0, Lcom/obs/services/model/select/SelectInputStream;->dataBuffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_5f

    .line 422
    invoke-virtual {v4}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/obs/services/model/select/SelectInputStream;->dataBuffer:Ljava/nio/ByteBuffer;

    goto :goto_84

    .line 425
    :cond_5f
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-virtual {v4}, Ljava/nio/Buffer;->limit()I

    move-result v2

    if-ge v1, v2, :cond_84

    .line 427
    iget-object v1, v0, Lcom/obs/services/model/select/SelectInputStream;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 428
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 430
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-virtual {v4}, Ljava/nio/Buffer;->limit()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v0, Lcom/obs/services/model/select/SelectInputStream;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 431
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 434
    :cond_84
    :goto_84
    iget-object v0, v0, Lcom/obs/services/model/select/SelectInputStream;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void

    .line 411
    :cond_8a
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' for Records event in OBS Select is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_a4
    const-string v3, "Cont"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 440
    iget-object v0, v0, Lcom/obs/services/model/select/SelectInputStream;->visitor:Lcom/obs/services/model/select/SelectEventVisitor;

    if-eqz v0, :cond_122

    .line 441
    invoke-virtual {v0}, Lcom/obs/services/model/select/SelectEventVisitor;->visitContinuationEvent()V

    return-void

    .line 446
    :cond_b4
    const-string v3, "Stats"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f4

    const-string v5, "Progress"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c5

    goto :goto_f4

    .line 462
    :cond_c5
    const-string v2, "End"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 463
    iget-object v1, v0, Lcom/obs/services/model/select/SelectInputStream;->visitor:Lcom/obs/services/model/select/SelectEventVisitor;

    if-eqz v1, :cond_d4

    .line 464
    invoke-virtual {v1}, Lcom/obs/services/model/select/SelectEventVisitor;->visitEndEvent()V

    :cond_d4
    const/4 v1, 0x1

    .line 467
    iput-boolean v1, v0, Lcom/obs/services/model/select/SelectInputStream;->done:Z

    return-void

    .line 471
    :cond_d8
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported event type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'\' in OBS Select message"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_f4
    :goto_f4
    const-string v5, "text/xml"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_123

    .line 451
    iget-object v2, v0, Lcom/obs/services/model/select/SelectInputStream;->visitor:Lcom/obs/services/model/select/SelectEventVisitor;

    if-eqz v2, :cond_122

    .line 452
    invoke-direct {v0, v4, v1}, Lcom/obs/services/model/select/SelectInputStream;->extractStats(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/obs/services/model/select/SelectInputStream$Stats;

    move-result-object v2

    .line 453
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_116

    .line 454
    iget-object v3, v0, Lcom/obs/services/model/select/SelectInputStream;->visitor:Lcom/obs/services/model/select/SelectEventVisitor;

    iget-wide v4, v2, Lcom/obs/services/model/select/SelectInputStream$Stats;->bytesScanned:J

    iget-wide v6, v2, Lcom/obs/services/model/select/SelectInputStream$Stats;->bytesProcessed:J

    iget-wide v8, v2, Lcom/obs/services/model/select/SelectInputStream$Stats;->bytesReturned:J

    invoke-virtual/range {v3 .. v9}, Lcom/obs/services/model/select/SelectEventVisitor;->visitStatsEvent(JJJ)V

    return-void

    .line 456
    :cond_116
    iget-object v10, v0, Lcom/obs/services/model/select/SelectInputStream;->visitor:Lcom/obs/services/model/select/SelectEventVisitor;

    iget-wide v11, v2, Lcom/obs/services/model/select/SelectInputStream$Stats;->bytesScanned:J

    iget-wide v13, v2, Lcom/obs/services/model/select/SelectInputStream$Stats;->bytesProcessed:J

    iget-wide v0, v2, Lcom/obs/services/model/select/SelectInputStream$Stats;->bytesReturned:J

    move-wide v15, v0

    invoke-virtual/range {v10 .. v16}, Lcom/obs/services/model/select/SelectEventVisitor;->visitProgressEvent(JJJ)V

    :cond_122
    return-void

    .line 448
    :cond_123
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " event in OBS Select is not supported"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_145
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing event type in OBS Select message"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private toLong(I)J
    .registers 4

    int-to-long p0, p1

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public abort()V
    .registers 2

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/obs/services/model/select/SelectInputStream;->isAborting:Z

    return-void
.end method

.method public available()I
    .registers 4

    .line 206
    iget-boolean v0, p0, Lcom/obs/services/model/select/SelectInputStream;->isAborting:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 207
    invoke-virtual {p0}, Lcom/obs/services/model/select/SelectInputStream;->close()V

    return v1

    .line 213
    :cond_9
    :goto_9
    iget-object v0, p0, Lcom/obs/services/model/select/SelectInputStream;->dataBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_17

    .line 214
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget v2, p0, Lcom/obs/services/model/select/SelectInputStream;->next:I

    sub-int/2addr v0, v2

    if-lez v0, :cond_17

    return v0

    .line 221
    :cond_17
    iget-boolean v0, p0, Lcom/obs/services/model/select/SelectInputStream;->done:Z

    if-eqz v0, :cond_1c

    return v1

    :cond_1c
    const/4 v0, 0x1

    .line 226
    invoke-direct {p0, v0}, Lcom/obs/services/model/select/SelectInputStream;->fetch(I)V

    goto :goto_9
.end method

.method public close()V
    .registers 3

    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lcom/obs/services/model/select/SelectInputStream;->dataBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 237
    iput v0, p0, Lcom/obs/services/model/select/SelectInputStream;->next:I

    const/4 v1, 0x1

    .line 238
    iput-boolean v1, p0, Lcom/obs/services/model/select/SelectInputStream;->done:Z

    .line 239
    iput-boolean v0, p0, Lcom/obs/services/model/select/SelectInputStream;->isAborting:Z

    .line 240
    iget-object p0, p0, Lcom/obs/services/model/select/SelectInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method extractHeaders()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 575
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 576
    iget-object v1, p0, Lcom/obs/services/model/select/SelectInputStream;->messageBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/16 v2, 0xc

    .line 577
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 578
    iget p0, p0, Lcom/obs/services/model/select/SelectInputStream;->headersLength:I

    add-int/2addr p0, v2

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 579
    :goto_16
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result p0

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    if-ge p0, v2, :cond_58

    .line 580
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    new-array p0, p0, [B

    .line 581
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 582
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 583
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    const/4 v4, 0x7

    if-ne p0, v4, :cond_50

    .line 587
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    mul-int/lit16 p0, p0, 0x100

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    add-int/2addr p0, v4

    new-array p0, p0, [B

    .line 588
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 590
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 591
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 584
    :cond_50
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Wrong header in OBS Select message"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 593
    :cond_58
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result p0

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    if-ne p0, v1, :cond_63

    return-object v0

    .line 594
    :cond_63
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Wrong headers size in OBS Select message"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized mark(I)V
    .registers 2

    monitor-enter p0

    .line 251
    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public read()I
    .registers 3

    .line 100
    iget-boolean v0, p0, Lcom/obs/services/model/select/SelectInputStream;->isAborting:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_9

    .line 101
    invoke-virtual {p0}, Lcom/obs/services/model/select/SelectInputStream;->close()V

    return v1

    .line 105
    :cond_9
    invoke-virtual {p0}, Lcom/obs/services/model/select/SelectInputStream;->available()I

    move-result v0

    if-nez v0, :cond_10

    return v1

    .line 109
    :cond_10
    iget-object v0, p0, Lcom/obs/services/model/select/SelectInputStream;->dataBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/obs/services/model/select/SelectInputStream;->next:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    .line 110
    invoke-direct {p0, v1}, Lcom/obs/services/model/select/SelectInputStream;->consume(I)V

    return v0
.end method

.method public read([BII)I
    .registers 7

    .line 130
    iget-boolean v0, p0, Lcom/obs/services/model/select/SelectInputStream;->isAborting:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_9

    .line 131
    invoke-virtual {p0}, Lcom/obs/services/model/select/SelectInputStream;->close()V

    return v1

    .line 136
    :cond_9
    invoke-virtual {p0}, Lcom/obs/services/model/select/SelectInputStream;->available()I

    move-result v0

    if-nez v0, :cond_10

    return v1

    :cond_10
    if-ge v0, p3, :cond_1b

    sub-int v0, p3, v0

    .line 144
    invoke-direct {p0, v0}, Lcom/obs/services/model/select/SelectInputStream;->fetch(I)V

    .line 145
    invoke-virtual {p0}, Lcom/obs/services/model/select/SelectInputStream;->available()I

    move-result v0

    .line 149
    :cond_1b
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 150
    iget-object v0, p0, Lcom/obs/services/model/select/SelectInputStream;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 151
    iget-object v1, p0, Lcom/obs/services/model/select/SelectInputStream;->dataBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/obs/services/model/select/SelectInputStream;->next:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 152
    iget-object v1, p0, Lcom/obs/services/model/select/SelectInputStream;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 153
    iget-object p1, p0, Lcom/obs/services/model/select/SelectInputStream;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 154
    invoke-direct {p0, p3}, Lcom/obs/services/model/select/SelectInputStream;->consume(I)V

    return p3
.end method

.method public declared-synchronized reset()V
    .registers 3

    monitor-enter p0

    .line 260
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "OBS Select input stream does not support mark and reset methods"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public skip(J)J
    .registers 8

    .line 168
    iget-boolean v0, p0, Lcom/obs/services/model/select/SelectInputStream;->isAborting:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_a

    .line 169
    invoke-virtual {p0}, Lcom/obs/services/model/select/SelectInputStream;->close()V

    return-wide v1

    .line 175
    :cond_a
    iget-boolean v0, p0, Lcom/obs/services/model/select/SelectInputStream;->done:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/obs/services/model/select/SelectInputStream;->dataBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_28

    .line 176
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget v3, p0, Lcom/obs/services/model/select/SelectInputStream;->next:I

    sub-int/2addr v0, v3

    if-lez v0, :cond_28

    int-to-long v3, v0

    cmp-long v3, v3, p1

    if-lez v3, :cond_21

    long-to-int v0, p1

    :cond_21
    int-to-long v3, v0

    sub-long v3, p1, v3

    .line 183
    invoke-direct {p0, v0}, Lcom/obs/services/model/select/SelectInputStream;->consume(I)V

    goto :goto_29

    :cond_28
    move-wide v3, p1

    :goto_29
    cmp-long v0, v3, v1

    if-lez v0, :cond_34

    .line 190
    iget-object p0, p0, Lcom/obs/services/model/select/SelectInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {p0, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    sub-long/2addr v3, v0

    :cond_34
    sub-long/2addr p1, v3

    return-wide p1
.end method
