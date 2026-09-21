.class public final Lcom/volcengine/ck/highlight/data/ImageInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bytes:[B

.field private final height:I

.field private final id:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II[B)V
    .registers 7

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/volcengine/ck/highlight/data/ImageInfo;->id:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/volcengine/ck/highlight/data/ImageInfo;->path:Ljava/lang/String;

    .line 11
    iput p3, p0, Lcom/volcengine/ck/highlight/data/ImageInfo;->width:I

    .line 12
    iput p4, p0, Lcom/volcengine/ck/highlight/data/ImageInfo;->height:I

    .line 13
    iput-object p5, p0, Lcom/volcengine/ck/highlight/data/ImageInfo;->bytes:[B

    return-void
.end method


# virtual methods
.method public final getBytes()[B
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/ImageInfo;->bytes:[B

    return-object p0
.end method

.method public final getHeight()I
    .registers 1

    .line 12
    iget p0, p0, Lcom/volcengine/ck/highlight/data/ImageInfo;->height:I

    return p0
.end method

.method public final getId()Ljava/lang/String;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/ImageInfo;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getPath()Ljava/lang/String;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/ImageInfo;->path:Ljava/lang/String;

    return-object p0
.end method

.method public final getWidth()I
    .registers 1

    .line 11
    iget p0, p0, Lcom/volcengine/ck/highlight/data/ImageInfo;->width:I

    return p0
.end method
