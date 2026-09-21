.class public Lcom/bytedance/librarian/elf/ElfParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Lcom/bytedance/librarian/elf/Elf;


# instance fields
.field private final MAGIC:I

.field private final channel:Ljava/nio/channels/FileChannel;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x464c457f

    .line 32
    iput v0, p0, Lcom/bytedance/librarian/elf/ElfParser;->MAGIC:I

    if-eqz p1, :cond_1c

    .line 36
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 40
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 41
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/librarian/elf/ElfParser;->channel:Ljava/nio/channels/FileChannel;

    return-void

    .line 37
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File is null or does not exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private offsetFromVma(Lcom/bytedance/librarian/elf/Elf$Header;JJ)J
    .registers 14

    const-wide/16 v0, 0x0

    :goto_2
    cmp-long p0, v0, p2

    if-gez p0, :cond_26

    .line 131
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/librarian/elf/Elf$Header;->getProgramHeader(J)Lcom/bytedance/librarian/elf/Elf$ProgramHeader;

    move-result-object p0

    .line 132
    iget-wide v2, p0, Lcom/bytedance/librarian/elf/Elf$ProgramHeader;->type:J

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_24

    .line 134
    iget-wide v2, p0, Lcom/bytedance/librarian/elf/Elf$ProgramHeader;->vaddr:J

    cmp-long v6, v2, p4

    if-gtz v6, :cond_24

    iget-wide v6, p0, Lcom/bytedance/librarian/elf/Elf$ProgramHeader;->memsz:J

    add-long/2addr v6, v2

    cmp-long v6, p4, v6

    if-gtz v6, :cond_24

    sub-long/2addr p4, v2

    .line 136
    iget-wide p0, p0, Lcom/bytedance/librarian/elf/Elf$ProgramHeader;->offset:J

    add-long/2addr p4, p0

    return-wide p4

    :cond_24
    add-long/2addr v0, v4

    goto :goto_2

    .line 141
    :cond_26
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not map vma to file offset!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 146
    iget-object p0, p0, Lcom/bytedance/librarian/elf/ElfParser;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    return-void
.end method

.method public parseHeader()Lcom/bytedance/librarian/elf/Elf$Header;
    .registers 6

    .line 45
    iget-object v0, p0, Lcom/bytedance/librarian/elf/ElfParser;->channel:Ljava/nio/channels/FileChannel;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/16 v0, 0x8

    .line 48
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 49
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 50
    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/librarian/elf/ElfParser;->readWord(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    const-wide/32 v3, 0x464c457f

    cmp-long v1, v1, v3

    if-nez v1, :cond_48

    const-wide/16 v1, 0x4

    .line 54
    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/librarian/elf/ElfParser;->readByte(Ljava/nio/ByteBuffer;J)S

    move-result v1

    const-wide/16 v2, 0x5

    .line 55
    invoke-virtual {p0, v0, v2, v3}, Lcom/bytedance/librarian/elf/ElfParser;->readByte(Ljava/nio/ByteBuffer;J)S

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2f

    move v0, v2

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    if-ne v1, v2, :cond_38

    .line 57
    new-instance v1, Lcom/bytedance/librarian/elf/Elf32Header;

    invoke-direct {v1, v0, p0}, Lcom/bytedance/librarian/elf/Elf32Header;-><init>(ZLcom/bytedance/librarian/elf/ElfParser;)V

    return-object v1

    :cond_38
    if-ne v1, v3, :cond_40

    .line 59
    new-instance v1, Lcom/bytedance/librarian/elf/Elf64Header;

    invoke-direct {v1, v0, p0}, Lcom/bytedance/librarian/elf/Elf64Header;-><init>(ZLcom/bytedance/librarian/elf/ElfParser;)V

    return-object v1

    .line 62
    :cond_40
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid class type!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 51
    :cond_48
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid ELF Magic!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public parseNeededDependencies()Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 66
    iget-object v1, v0, Lcom/bytedance/librarian/elf/ElfParser;->channel:Ljava/nio/channels/FileChannel;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 67
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-virtual {v0}, Lcom/bytedance/librarian/elf/ElfParser;->parseHeader()Lcom/bytedance/librarian/elf/Elf$Header;

    move-result-object v1

    const/16 v4, 0x8

    .line 69
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 70
    iget-boolean v4, v1, Lcom/bytedance/librarian/elf/Elf$Header;->bigEndian:Z

    if-eqz v4, :cond_1f

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_21

    :cond_1f
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_21
    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 72
    iget v4, v1, Lcom/bytedance/librarian/elf/Elf$Header;->phnum:I

    int-to-long v4, v4

    const-wide/32 v8, 0xffff

    cmp-long v8, v4, v8

    const/4 v9, 0x0

    if-nez v8, :cond_35

    .line 83
    invoke-virtual {v1, v9}, Lcom/bytedance/librarian/elf/Elf$Header;->getSectionHeader(I)Lcom/bytedance/librarian/elf/Elf$SectionHeader;

    move-result-object v4

    .line 84
    iget-wide v4, v4, Lcom/bytedance/librarian/elf/Elf$SectionHeader;->info:J

    :cond_35
    move-wide v10, v2

    :goto_36
    cmp-long v8, v10, v4

    const-wide/16 v12, 0x1

    if-gez v8, :cond_4d

    .line 89
    invoke-virtual {v1, v10, v11}, Lcom/bytedance/librarian/elf/Elf$Header;->getProgramHeader(J)Lcom/bytedance/librarian/elf/Elf$ProgramHeader;

    move-result-object v8

    .line 90
    iget-wide v14, v8, Lcom/bytedance/librarian/elf/Elf$ProgramHeader;->type:J

    const-wide/16 v16, 0x2

    cmp-long v14, v14, v16

    if-nez v14, :cond_4b

    .line 91
    iget-wide v10, v8, Lcom/bytedance/librarian/elf/Elf$ProgramHeader;->offset:J

    goto :goto_4e

    :cond_4b
    add-long/2addr v10, v12

    goto :goto_36

    :cond_4d
    move-wide v10, v2

    :goto_4e
    cmp-long v8, v10, v2

    if-nez v8, :cond_57

    .line 98
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 102
    :cond_57
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-wide v15, v2

    move-wide/from16 v17, v15

    move v14, v9

    .line 106
    :goto_60
    invoke-virtual {v1, v10, v11, v14}, Lcom/bytedance/librarian/elf/Elf$Header;->getDynamicStructure(JI)Lcom/bytedance/librarian/elf/Elf$DynamicStructure;

    move-result-object v2

    move-wide/from16 v19, v10

    .line 107
    iget-wide v9, v2, Lcom/bytedance/librarian/elf/Elf$DynamicStructure;->tag:J

    cmp-long v3, v9, v12

    if-nez v3, :cond_76

    .line 108
    iget-wide v9, v2, Lcom/bytedance/librarian/elf/Elf$DynamicStructure;->val:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7f

    :cond_76
    const-wide/16 v21, 0x5

    cmp-long v3, v9, v21

    if-nez v3, :cond_7f

    .line 110
    iget-wide v9, v2, Lcom/bytedance/librarian/elf/Elf$DynamicStructure;->val:J

    move-wide v15, v9

    :cond_7f
    :goto_7f
    add-int/lit8 v14, v14, 0x1

    .line 113
    iget-wide v2, v2, Lcom/bytedance/librarian/elf/Elf$DynamicStructure;->tag:J

    cmp-long v2, v2, v17

    if-nez v2, :cond_b6

    cmp-long v2, v15, v17

    if-eqz v2, :cond_ae

    move-wide v2, v4

    move-wide v4, v15

    .line 120
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/librarian/elf/ElfParser;->offsetFromVma(Lcom/bytedance/librarian/elf/Elf$Header;JJ)J

    move-result-wide v1

    .line 121
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v9, 0x0

    :goto_96
    if-ge v9, v3, :cond_ad

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v9, v9, 0x1

    check-cast v4, Ljava/lang/Long;

    .line 122
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, v1

    invoke-virtual {v0, v7, v4, v5}, Lcom/bytedance/librarian/elf/ElfParser;->readString(Ljava/nio/ByteBuffer;J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_96

    :cond_ad
    return-object v6

    .line 116
    :cond_ae
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "String table offset not found!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b6
    move-wide v2, v4

    move-wide v4, v15

    move-wide/from16 v10, v19

    const/4 v9, 0x0

    move-wide v4, v2

    goto :goto_60
.end method

.method protected read(Ljava/nio/ByteBuffer;JI)V
    .registers 11

    const/4 v0, 0x0

    .line 180
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 181
    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const-wide/16 v1, 0x0

    :goto_9
    int-to-long v3, p4

    cmp-long v3, v1, v3

    if-gez v3, :cond_22

    .line 184
    iget-object v3, p0, Lcom/bytedance/librarian/elf/ElfParser;->channel:Ljava/nio/channels/FileChannel;

    add-long v4, p2, v1

    invoke-virtual {v3, p1, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1c

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_9

    .line 186
    :cond_1c
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 191
    :cond_22
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method protected readByte(Ljava/nio/ByteBuffer;J)S
    .registers 5

    const/4 v0, 0x1

    .line 175
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/bytedance/librarian/elf/ElfParser;->read(Ljava/nio/ByteBuffer;JI)V

    .line 176
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method protected readHalf(Ljava/nio/ByteBuffer;J)I
    .registers 5

    const/4 v0, 0x2

    .line 170
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/bytedance/librarian/elf/ElfParser;->read(Ljava/nio/ByteBuffer;JI)V

    .line 171
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    const p1, 0xffff

    and-int/2addr p0, p1

    return p0
.end method

.method protected readLong(Ljava/nio/ByteBuffer;J)J
    .registers 5

    const/16 v0, 0x8

    .line 160
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/bytedance/librarian/elf/ElfParser;->read(Ljava/nio/ByteBuffer;JI)V

    .line 161
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p0

    return-wide p0
.end method

.method protected readString(Ljava/nio/ByteBuffer;J)Ljava/lang/String;
    .registers 7

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    const-wide/16 v1, 0x1

    add-long/2addr v1, p2

    .line 152
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/librarian/elf/ElfParser;->readByte(Ljava/nio/ByteBuffer;J)S

    move-result p2

    if-eqz p2, :cond_14

    int-to-char p2, p2

    .line 153
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-wide p2, v1

    goto :goto_5

    .line 156
    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected readWord(Ljava/nio/ByteBuffer;J)J
    .registers 5

    const/4 v0, 0x4

    .line 165
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/bytedance/librarian/elf/ElfParser;->read(Ljava/nio/ByteBuffer;JI)V

    .line 166
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    int-to-long p0, p0

    const-wide p2, 0xffffffffL

    and-long/2addr p0, p2

    return-wide p0
.end method
