.class public final Lcom/ss/ugc/effectplatform/exception/StatusCodeException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private statusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 7
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/ss/ugc/effectplatform/exception/StatusCodeException;->statusCode:I

    return-void
.end method


# virtual methods
.method public final getStatusCode()I
    .registers 1

    .line 7
    iget p0, p0, Lcom/ss/ugc/effectplatform/exception/StatusCodeException;->statusCode:I

    return p0
.end method
