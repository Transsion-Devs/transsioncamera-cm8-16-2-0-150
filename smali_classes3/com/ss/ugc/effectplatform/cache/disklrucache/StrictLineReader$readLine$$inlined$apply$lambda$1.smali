.class public final Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader$readLine$$inlined$apply$lambda$1;
.super Lbytekn/foundation/io/file/ByteArrayOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;


# direct methods
.method constructor <init>(ILcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;)V
    .registers 3

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader$readLine$$inlined$apply$lambda$1;->this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;

    .line 65
    invoke-direct {p0, p1}, Lbytekn/foundation/io/file/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 67
    invoke-virtual {p0}, Lbytekn/foundation/io/file/ByteArrayOutputStream;->getCount()I

    move-result v0

    if-lez v0, :cond_1f

    invoke-virtual {p0}, Lbytekn/foundation/io/file/ByteArrayOutputStream;->getBuf()[B

    move-result-object v0

    invoke-virtual {p0}, Lbytekn/foundation/io/file/ByteArrayOutputStream;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    # getter for: Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->CR:B
    invoke-static {}, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->access$getCR$cp()B

    move-result v1

    if-ne v0, v1, :cond_1f

    invoke-virtual {p0}, Lbytekn/foundation/io/file/ByteArrayOutputStream;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    :cond_1f
    invoke-virtual {p0}, Lbytekn/foundation/io/file/ByteArrayOutputStream;->getCount()I

    move-result v0

    .line 69
    :goto_23
    :try_start_23
    invoke-virtual {p0}, Lbytekn/foundation/io/file/ByteArrayOutputStream;->getBuf()[B

    move-result-object v1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader$readLine$$inlined$apply$lambda$1;->this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;

    # getter for: Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->contentEncoding:Lbytekn/foundation/io/file/ContentEncoding;
    invoke-static {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->access$getContentEncoding$p(Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;)Lbytekn/foundation/io/file/ContentEncoding;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, p0}, Lcom/ss/ugc/effectplatform/extension/ByteArrayExKt;->toString([BIILbytekn/foundation/io/file/ContentEncoding;)Ljava/lang/String;

    move-result-object p0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_32} :catch_33

    return-object p0

    :catch_33
    move-exception p0

    .line 71
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
