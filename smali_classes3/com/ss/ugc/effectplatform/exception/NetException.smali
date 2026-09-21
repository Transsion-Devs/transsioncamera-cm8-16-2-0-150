.class public Lcom/ss/ugc/effectplatform/exception/NetException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private status_code:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 4
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/ss/ugc/effectplatform/exception/NetException;->status_code:I

    return-void
.end method


# virtual methods
.method public final getStatus_code()I
    .registers 1

    .line 3
    iget p0, p0, Lcom/ss/ugc/effectplatform/exception/NetException;->status_code:I

    return p0
.end method
