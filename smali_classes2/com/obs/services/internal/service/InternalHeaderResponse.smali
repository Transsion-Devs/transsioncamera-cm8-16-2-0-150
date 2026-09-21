.class public Lcom/obs/services/internal/service/InternalHeaderResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected originalHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected statusCode:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setOriginalHeaders(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/obs/services/internal/service/InternalHeaderResponse;->originalHeaders:Ljava/util/Map;

    return-void
.end method

.method public setResponseHeaders(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/obs/services/internal/service/InternalHeaderResponse;->responseHeaders:Ljava/util/Map;

    return-void
.end method

.method protected setStatusCode(I)V
    .registers 2

    .line 36
    iput p1, p0, Lcom/obs/services/internal/service/InternalHeaderResponse;->statusCode:I

    return-void
.end method
