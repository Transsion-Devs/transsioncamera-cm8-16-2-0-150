.class final Lcom/opensource/svgaplayer/proto/Layout$ProtoAdapter_Layout;
.super Lcom/squareup/wire/ProtoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/proto/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_Layout"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/opensource/svgaplayer/proto/Layout;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .line 156
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    const-class v1, Lcom/opensource/svgaplayer/proto/Layout;

    invoke-direct {p0, v0, v1}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/opensource/svgaplayer/proto/Layout;
    .registers 7

    .line 179
    new-instance p0, Lcom/opensource/svgaplayer/proto/Layout$Builder;

    invoke-direct {p0}, Lcom/opensource/svgaplayer/proto/Layout$Builder;-><init>()V

    .line 180
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    .line 181
    :goto_9
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5c

    const/4 v3, 0x1

    if-eq v2, v3, :cond_50

    const/4 v3, 0x2

    if-eq v2, v3, :cond_44

    const/4 v3, 0x3

    if-eq v2, v3, :cond_38

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2c

    .line 188
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->peekFieldEncoding()Lcom/squareup/wire/FieldEncoding;

    move-result-object v3

    .line 189
    invoke-virtual {v3}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    .line 190
    invoke-virtual {p0, v2, v3, v4}, Lcom/squareup/wire/Message$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_9

    .line 186
    :cond_2c
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v2}, Lcom/opensource/svgaplayer/proto/Layout$Builder;->height(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/Layout$Builder;

    goto :goto_9

    .line 185
    :cond_38
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v2}, Lcom/opensource/svgaplayer/proto/Layout$Builder;->width(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/Layout$Builder;

    goto :goto_9

    .line 184
    :cond_44
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v2}, Lcom/opensource/svgaplayer/proto/Layout$Builder;->y(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/Layout$Builder;

    goto :goto_9

    .line 183
    :cond_50
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v2}, Lcom/opensource/svgaplayer/proto/Layout$Builder;->x(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/Layout$Builder;

    goto :goto_9

    .line 194
    :cond_5c
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->endMessage(J)V

    .line 195
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/proto/Layout$Builder;->build()Lcom/opensource/svgaplayer/proto/Layout;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .registers 2

    .line 154
    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/proto/Layout$ProtoAdapter_Layout;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/opensource/svgaplayer/proto/Layout;

    move-result-object p0

    return-object p0
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/opensource/svgaplayer/proto/Layout;)V
    .registers 5

    .line 170
    iget-object p0, p2, Lcom/opensource/svgaplayer/proto/Layout;->x:Ljava/lang/Float;

    if-eqz p0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 171
    :cond_a
    iget-object p0, p2, Lcom/opensource/svgaplayer/proto/Layout;->y:Ljava/lang/Float;

    if-eqz p0, :cond_14

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 172
    :cond_14
    iget-object p0, p2, Lcom/opensource/svgaplayer/proto/Layout;->width:Ljava/lang/Float;

    if-eqz p0, :cond_1e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 173
    :cond_1e
    iget-object p0, p2, Lcom/opensource/svgaplayer/proto/Layout;->height:Ljava/lang/Float;

    if-eqz p0, :cond_28

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 174
    :cond_28
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3

    .line 154
    check-cast p2, Lcom/opensource/svgaplayer/proto/Layout;

    invoke-virtual {p0, p1, p2}, Lcom/opensource/svgaplayer/proto/Layout$ProtoAdapter_Layout;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/opensource/svgaplayer/proto/Layout;)V

    return-void
.end method

.method public encodedSize(Lcom/opensource/svgaplayer/proto/Layout;)I
    .registers 6

    .line 161
    iget-object p0, p1, Lcom/opensource/svgaplayer/proto/Layout;->x:Ljava/lang/Float;

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p0

    goto :goto_e

    :cond_d
    move p0, v0

    .line 162
    :goto_e
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/Layout;->y:Ljava/lang/Float;

    if-eqz v1, :cond_1a

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    goto :goto_1b

    :cond_1a
    move v1, v0

    :goto_1b
    add-int/2addr p0, v1

    .line 163
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/Layout;->width:Ljava/lang/Float;

    if-eqz v1, :cond_28

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    goto :goto_29

    :cond_28
    move v1, v0

    :goto_29
    add-int/2addr p0, v1

    .line 164
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/Layout;->height:Ljava/lang/Float;

    if-eqz v1, :cond_35

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    :cond_35
    add-int/2addr p0, v0

    .line 165
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 2

    .line 154
    check-cast p1, Lcom/opensource/svgaplayer/proto/Layout;

    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/proto/Layout$ProtoAdapter_Layout;->encodedSize(Lcom/opensource/svgaplayer/proto/Layout;)I

    move-result p0

    return p0
.end method

.method public redact(Lcom/opensource/svgaplayer/proto/Layout;)Lcom/opensource/svgaplayer/proto/Layout;
    .registers 2

    .line 200
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/proto/Layout;->newBuilder()Lcom/opensource/svgaplayer/proto/Layout$Builder;

    move-result-object p0

    .line 201
    invoke-virtual {p0}, Lcom/squareup/wire/Message$Builder;->clearUnknownFields()Lcom/squareup/wire/Message$Builder;

    .line 202
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/proto/Layout$Builder;->build()Lcom/opensource/svgaplayer/proto/Layout;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 154
    check-cast p1, Lcom/opensource/svgaplayer/proto/Layout;

    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/proto/Layout$ProtoAdapter_Layout;->redact(Lcom/opensource/svgaplayer/proto/Layout;)Lcom/opensource/svgaplayer/proto/Layout;

    move-result-object p0

    return-object p0
.end method
