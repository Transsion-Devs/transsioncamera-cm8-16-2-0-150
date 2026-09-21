.class public Lorg/apache/commons/io/output/FilterCollectionWriter;
.super Ljava/io/Writer;
.source "SourceFile"


# instance fields
.field protected final EMPTY_WRITERS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/io/Writer;",
            ">;"
        }
    .end annotation
.end field

.field protected final writers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/io/Writer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/Writer;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 51
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/commons/io/output/FilterCollectionWriter;->EMPTY_WRITERS:Ljava/util/Collection;

    if-nez p1, :cond_a

    move-object p1, v0

    .line 64
    :cond_a
    iput-object p1, p0, Lorg/apache/commons/io/output/FilterCollectionWriter;->writers:Ljava/util/Collection;

    return-void
.end method

.method protected varargs constructor <init>([Ljava/io/Writer;)V
    .registers 3

    .line 72
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 51
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/commons/io/output/FilterCollectionWriter;->EMPTY_WRITERS:Ljava/util/Collection;

    if-nez p1, :cond_a

    goto :goto_e

    .line 73
    :cond_a
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_e
    iput-object v0, p0, Lorg/apache/commons/io/output/FilterCollectionWriter;->writers:Ljava/util/Collection;

    return-void
.end method

.method private add(Ljava/util/List;ILjava/io/IOException;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Exception;",
            ">;I",
            "Ljava/io/IOException;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_7

    .line 86
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    :cond_7
    new-instance p0, Lorg/apache/commons/io/IOIndexedException;

    invoke-direct {p0, p2, p3}, Lorg/apache/commons/io/IOIndexedException;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private notEmpty(Ljava/util/List;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Exception;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 205
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .registers 6

    .line 96
    iget-object v0, p0, Lorg/apache/commons/io/output/FilterCollectionWriter;->writers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Writer;

    if-eqz v3, :cond_1f

    .line 99
    :try_start_16
    invoke-virtual {v3, p1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_1f

    :catch_1a
    move-exception v3

    .line 101
    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/io/output/FilterCollectionWriter;->add(Ljava/util/List;ILjava/io/IOException;)Ljava/util/List;

    move-result-object v1

    :cond_1f
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 106
    :cond_22
    invoke-direct {p0, v1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->notEmpty(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_29

    return-object p0

    .line 107
    :cond_29
    new-instance p0, Lorg/apache/commons/io/IOExceptionList;

    const-string p1, "append"

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/io/IOExceptionList;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .registers 6

    .line 116
    iget-object v0, p0, Lorg/apache/commons/io/output/FilterCollectionWriter;->writers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Writer;

    if-eqz v3, :cond_1f

    .line 119
    :try_start_16
    invoke-virtual {v3, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_1f

    :catch_1a
    move-exception v3

    .line 121
    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/io/output/FilterCollectionWriter;->add(Ljava/util/List;ILjava/io/IOException;)Ljava/util/List;

    move-result-object v1

    :cond_1f
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 126
    :cond_22
    invoke-direct {p0, v1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->notEmpty(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_29

    return-object p0

    .line 127
    :cond_29
    new-instance p0, Lorg/apache/commons/io/IOExceptionList;

    const-string p1, "append"

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/io/IOExceptionList;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .registers 8

    .line 137
    iget-object v0, p0, Lorg/apache/commons/io/output/FilterCollectionWriter;->writers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Writer;

    if-eqz v3, :cond_1f

    .line 140
    :try_start_16
    invoke-virtual {v3, p1, p2, p3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_1f

    :catch_1a
    move-exception v3

    .line 142
    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/io/output/FilterCollectionWriter;->add(Ljava/util/List;ILjava/io/IOException;)Ljava/util/List;

    move-result-object v1

    :cond_1f
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 147
    :cond_22
    invoke-direct {p0, v1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->notEmpty(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_29

    return-object p0

    .line 148
    :cond_29
    new-instance p0, Lorg/apache/commons/io/IOExceptionList;

    const-string p1, "append"

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/io/IOExceptionList;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->append(C)Ljava/io/Writer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 4

    .line 46
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/output/FilterCollectionWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object p0

    return-object p0
.end method

.method public close()V
    .registers 5

    .line 157
    iget-object v0, p0, Lorg/apache/commons/io/output/FilterCollectionWriter;->writers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Writer;

    if-eqz v3, :cond_1f

    .line 160
    :try_start_16
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_1f

    :catch_1a
    move-exception v3

    .line 162
    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/io/output/FilterCollectionWriter;->add(Ljava/util/List;ILjava/io/IOException;)Ljava/util/List;

    move-result-object v1

    :cond_1f
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 167
    :cond_22
    invoke-direct {p0, v1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->notEmpty(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_29

    return-void

    .line 168
    :cond_29
    new-instance p0, Lorg/apache/commons/io/IOExceptionList;

    const-string v0, "close"

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/io/IOExceptionList;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw p0
.end method

.method public flush()V
    .registers 5

    .line 182
    iget-object v0, p0, Lorg/apache/commons/io/output/FilterCollectionWriter;->writers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Writer;

    if-eqz v3, :cond_1f

    .line 185
    :try_start_16
    invoke-virtual {v3}, Ljava/io/Writer;->flush()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_1f

    :catch_1a
    move-exception v3

    .line 187
    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/io/output/FilterCollectionWriter;->add(Ljava/util/List;ILjava/io/IOException;)Ljava/util/List;

    move-result-object v1

    :cond_1f
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 192
    :cond_22
    invoke-direct {p0, v1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->notEmpty(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_29

    return-void

    .line 193
    :cond_29
    new-instance p0, Lorg/apache/commons/io/IOExceptionList;

    const-string v0, "flush"

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/io/IOExceptionList;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw p0
.end method

.method public write(I)V
    .registers 6

    .line 264
    iget-object v0, p0, Lorg/apache/commons/io/output/FilterCollectionWriter;->writers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Writer;

    if-eqz v3, :cond_1f

    .line 267
    :try_start_16
    invoke-virtual {v3, p1}, Ljava/io/Writer;->write(I)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_1f

    :catch_1a
    move-exception v3

    .line 269
    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/io/output/FilterCollectionWriter;->add(Ljava/util/List;ILjava/io/IOException;)Ljava/util/List;

    move-result-object v1

    :cond_1f
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 274
    :cond_22
    invoke-direct {p0, v1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->notEmpty(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_29

    return-void

    .line 275
    :cond_29
    new-instance p0, Lorg/apache/commons/io/IOExceptionList;

    const-string p1, "write"

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/io/IOExceptionList;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw p0
.end method

.method public write(Ljava/lang/String;)V
    .registers 6

    .line 283
    iget-object v0, p0, Lorg/apache/commons/io/output/FilterCollectionWriter;->writers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Writer;

    if-eqz v3, :cond_1f

    .line 286
    :try_start_16
    invoke-virtual {v3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_1f

    :catch_1a
    move-exception v3

    .line 288
    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/io/output/FilterCollectionWriter;->add(Ljava/util/List;ILjava/io/IOException;)Ljava/util/List;

    move-result-object v1

    :cond_1f
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 293
    :cond_22
    invoke-direct {p0, v1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->notEmpty(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_29

    return-void

    .line 294
    :cond_29
    new-instance p0, Lorg/apache/commons/io/IOExceptionList;

    const-string p1, "write"

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/io/IOExceptionList;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw p0
.end method

.method public write(Ljava/lang/String;II)V
    .registers 8

    .line 312
    iget-object v0, p0, Lorg/apache/commons/io/output/FilterCollectionWriter;->writers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Writer;

    if-eqz v3, :cond_1f

    .line 315
    :try_start_16
    invoke-virtual {v3, p1, p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_1f

    :catch_1a
    move-exception v3

    .line 317
    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/io/output/FilterCollectionWriter;->add(Ljava/util/List;ILjava/io/IOException;)Ljava/util/List;

    move-result-object v1

    :cond_1f
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 322
    :cond_22
    invoke-direct {p0, v1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->notEmpty(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_29

    return-void

    .line 323
    :cond_29
    new-instance p0, Lorg/apache/commons/io/IOExceptionList;

    const-string p1, "write"

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/io/IOExceptionList;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw p0
.end method

.method public write([C)V
    .registers 6

    .line 212
    iget-object v0, p0, Lorg/apache/commons/io/output/FilterCollectionWriter;->writers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Writer;

    if-eqz v3, :cond_1f

    .line 215
    :try_start_16
    invoke-virtual {v3, p1}, Ljava/io/Writer;->write([C)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_1f

    :catch_1a
    move-exception v3

    .line 217
    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/io/output/FilterCollectionWriter;->add(Ljava/util/List;ILjava/io/IOException;)Ljava/util/List;

    move-result-object v1

    :cond_1f
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 222
    :cond_22
    invoke-direct {p0, v1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->notEmpty(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_29

    return-void

    .line 223
    :cond_29
    new-instance p0, Lorg/apache/commons/io/IOExceptionList;

    const-string p1, "write"

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/io/IOExceptionList;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw p0
.end method

.method public write([CII)V
    .registers 8

    .line 240
    iget-object v0, p0, Lorg/apache/commons/io/output/FilterCollectionWriter;->writers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Writer;

    if-eqz v3, :cond_1f

    .line 243
    :try_start_16
    invoke-virtual {v3, p1, p2, p3}, Ljava/io/Writer;->write([CII)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_1f

    :catch_1a
    move-exception v3

    .line 245
    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/io/output/FilterCollectionWriter;->add(Ljava/util/List;ILjava/io/IOException;)Ljava/util/List;

    move-result-object v1

    :cond_1f
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 250
    :cond_22
    invoke-direct {p0, v1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->notEmpty(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_29

    return-void

    .line 251
    :cond_29
    new-instance p0, Lorg/apache/commons/io/IOExceptionList;

    const-string p1, "write"

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/io/IOExceptionList;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw p0
.end method
