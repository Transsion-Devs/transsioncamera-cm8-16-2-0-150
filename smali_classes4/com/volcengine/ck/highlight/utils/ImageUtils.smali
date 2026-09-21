.class public final Lcom/volcengine/ck/highlight/utils/ImageUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/volcengine/ck/highlight/utils/ImageUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/volcengine/ck/highlight/utils/ImageUtils;

    invoke-direct {v0}, Lcom/volcengine/ck/highlight/utils/ImageUtils;-><init>()V

    sput-object v0, Lcom/volcengine/ck/highlight/utils/ImageUtils;->INSTANCE:Lcom/volcengine/ck/highlight/utils/ImageUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final calculateScaleSize(III)Lkotlin/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-le p2, p1, :cond_26

    if-le p2, p3, :cond_18

    int-to-float p0, p3

    int-to-float p2, p2

    div-float/2addr p0, p2

    int-to-float p1, p1

    mul-float/2addr p0, p1

    .line 29
    new-instance p1, Lkotlin/Pair;

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 31
    :cond_18
    new-instance p0, Lkotlin/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_26
    if-le p1, p3, :cond_3c

    int-to-float p0, p3

    int-to-float p1, p1

    div-float/2addr p0, p1

    int-to-float p1, p2

    mul-float/2addr p0, p1

    .line 36
    new-instance p1, Lkotlin/Pair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 38
    :cond_3c
    new-instance p0, Lkotlin/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final createImageInfoByPath$ck_highlight_release(Ljava/lang/String;Ljava/lang/String;II)Lcom/volcengine/ck/highlight/data/ImageInfo;
    .registers 11

    const-string p0, "id"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "path"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object p0, Lcn/everphoto/sdk/extension/BitmapProcessor;->INSTANCE:Lcn/everphoto/sdk/extension/BitmapProcessor;

    const/16 v0, 0x2d0

    invoke-virtual {p0, p2, p3, p4, v0}, Lcn/everphoto/sdk/extension/BitmapProcessor;->getBitmapInfo(Ljava/lang/String;III)Lcn/everphoto/sdk/extension/BitmapInfo;

    move-result-object p0

    .line 16
    new-instance v0, Lcom/volcengine/ck/highlight/data/ImageInfo;

    .line 19
    invoke-virtual {p0}, Lcn/everphoto/sdk/extension/BitmapInfo;->getWidth()I

    move-result v3

    .line 20
    invoke-virtual {p0}, Lcn/everphoto/sdk/extension/BitmapInfo;->getHeight()I

    move-result v4

    .line 21
    invoke-virtual {p0}, Lcn/everphoto/sdk/extension/BitmapInfo;->getBuffer()[B

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/volcengine/ck/highlight/data/ImageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[B)V

    return-object v0
.end method
