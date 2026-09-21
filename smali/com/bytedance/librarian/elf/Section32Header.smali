.class public Lcom/bytedance/librarian/elf/Section32Header;
.super Lcom/bytedance/librarian/elf/Elf$SectionHeader;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/bytedance/librarian/elf/ElfParser;Lcom/bytedance/librarian/elf/Elf$Header;I)V
    .registers 7

    .line 24
    invoke-direct {p0}, Lcom/bytedance/librarian/elf/Elf$SectionHeader;-><init>()V

    const/4 v0, 0x4

    .line 25
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 26
    iget-boolean v1, p2, Lcom/bytedance/librarian/elf/Elf$Header;->bigEndian:Z

    if-eqz v1, :cond_f

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_11

    :cond_f
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_11
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 28
    iget-wide v1, p2, Lcom/bytedance/librarian/elf/Elf$Header;->shoff:J

    iget p2, p2, Lcom/bytedance/librarian/elf/Elf$Header;->shentsize:I

    mul-int/2addr p3, p2

    int-to-long p2, p3

    add-long/2addr v1, p2

    const-wide/16 p2, 0x1c

    add-long/2addr v1, p2

    invoke-virtual {p1, v0, v1, v2}, Lcom/bytedance/librarian/elf/ElfParser;->readWord(Ljava/nio/ByteBuffer;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/librarian/elf/Elf$SectionHeader;->info:J

    return-void
.end method
